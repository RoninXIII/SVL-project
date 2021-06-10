#define MAX 3

//Producers
mtype = {A,B,Msg,Ack};

// The ids to be received from the producers
byte idToReceiveA; 
byte idToReceiveB;
byte i = 2; // store the previous message received

/*Channels - They will contain messages or acknowledgement,the producer and the id */

chan pq = [0] of {mtype,mtype,byte}; //Synchronous
chan pa = [3] of {mtype,mtype,byte}; //Asynchronous
chan pb = [3] of {mtype,mtype,byte}; //Asynchronous
chan ca = [3] of {mtype,mtype,byte}; //Asynchronous
chan cb = [3] of {mtype,mtype,byte}; //Asynchronous


// Producer A - ca as ingoing channel, pa as outgoing channel

active proctype ProducerA(){
	
	
	byte received = 0; // Number of acks received
	byte idToSend; // The id of the message to sent (can be 0,1,2)
    byte idSent; // Number of messages sent from the producer
	
	startProd:
	do 	
		// Receive the message (if any) 
		:: atomic{ca?Ack(A,idToReceiveA) -> received++};
											ackReceived:
												
												 if
												// If the producer has received 3 acks then it can start again the producing cycle otherwise simply go to start
												:: (received == MAX) -> d_step{idToSend = 0; idSent = 0;received = 0; i = idToReceiveA}; goto prodAndSend
												:: else i = idToReceiveA; goto startProd
												 fi
				 

		// Check it a producing round is terminated or one has to be start
		// IdSent value is resetted only if the producer has received 3 acks
		:: (idSent < MAX) ->
							prodAndSend:
						 		atomic{pa!Msg(A,idToSend) ; d_step{idToSend++;idSent++}}


	od
}


// Producer B - cb as ingoing channel, pb as outgoing channel

active proctype ProducerB(){
	
	
	byte received = 0; // Number of acks received
	byte idToSend; // The id of the message to sent (can be 0,1,2)
    byte idSent; // Number of messages sent from the producer
	
	startProd:
	do 	
		// Receive the message (if any) 		
		:: atomic{cb?Ack(B,idToReceiveB) -> received++}; 
										ackReceived:
												 if
										// If the producer has received 3 acks then it can start again the producing cycle otherwise simply go to start
												:: (received == MAX) -> d_step{idToSend = 0; idSent = 0;received = 0}; goto prodAndSend
												:: else goto startProd

												 fi
				 

		// Check if the round is begun or has to continue until it reaches the maximum messages to send
		:: (idSent < MAX) ->
							prodAndSend:
						 		atomic{pb!Msg(B,idToSend) ; d_step{idToSend++;idSent++}}


		
	od
}

active proctype PriorityQueue(){

// Id that will be received from one of the two channels
byte id;


do 
		// Check if there are any messages in pa channel, if so these messages will have
		// precedence on the ones in pb channel
			
			::(nempty(pa)) ->
								sendMessageFromA:
									atomic{pa?Msg(A,id); pq!Msg(A,id)} //Faithful transmission
			::(empty(pa) && nempty(pb)) -> 
											sendMessageFromB:
												atomic{pb?Msg(B,id); pq!Msg(B,id)}  //Faithful transmission
	 

od


}


active proctype Consumer(){
byte id;
mtype prod;
do 
	
	::pq?Msg(prod,id) ->
						consumeMsg:
						 if
							// Check the which producer send the ack
							:: (prod == A) -> 
												sendToA:
													ca!Ack(A,id)
							:: else ->
										sendToB:
											 cb!Ack(B,id)
						 fi

od

}

/* Whenever Producer A (resp. B) received an acknowledgment for a message with id
i and a subsequent acknowledgment for a message with id j it holds that
j = (i + 1) mod 3 */

ltl p1 {[](ProducerA@ackReceived -> (idToReceiveA == (i+1)%3)) }

// Producer A never stops
ltl p2 {[](<> (ProducerA@startProd))}


/* Whenever a message from B is delivered to the Consumer by the Priority Queue there are
currently no messages from Producer A that wait for being delivered */
ltl p3 {[](PriorityQueue@sendMessageFromB -> !PriorityQueue@sendMessageFromA)}

/* The Consumer will never wait for sending messages on channels ca or cb, that is to
say, there is always at least one free place in the buffer of the channel ca or cb when
the Consumer wants to send a message through it*/
ltl p4 {[]((Consumer@sendToA -> len(ca) < 3) && (Consumer@sendToB -> len(cb) < 3))}

/* Whenever a message is produced, from Producer A or Producer B, a message will
be consumed */
ltl p5 {[]( (ProducerA@prodAndSend -> <>(Consumer@consumeMsg)) && (ProducerB@prodAndSend -> <>(Consumer@consumeMsg) ))}
