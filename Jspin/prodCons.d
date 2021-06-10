proctype ProducerA
	state  22 -(tr  34)-> state  14  [id   0 tp 506] [A---G] prodCons.pml:32 => ca?Ack,A,idToReceiveA
	state  22 -(tr  38)-> state  21  [id  15 tp   2] [----G] prodCons.pml:32 => ((idSent<3))
	state  14 -(tr  35)-> state   9  [id   3 tp   2] [----L] prodCons.pml:37 => ((received==3))
	state  14 -(tr   2)-> state  12  [id  10 tp   2] [----L] prodCons.pml:37 => else
	state   9 -(tr  36)-> state  21  [id   8 tp   2] [D---G] prodCons.pml:37 => D_STEP
	state  21 -(tr  39)-> state  20  [id  16 tp   4] [A---G] prodCons.pml:46 => pa!Msg,A,idToSend
	state  20 -(tr  40)-> state  22  [id  19 tp   2] [A---G] prodCons.pml:46 => D_STEP
	state  12 -(tr  37)-> state  22  [id  11 tp   2] [----G] prodCons.pml:38 => i = idToReceiveA
proctype ProducerB
	state  20 -(tr  27)-> state  12  [id  25 tp 507] [A---G] prodCons.pml:65 => cb?Ack,B,idToReceiveB
	state  20 -(tr  30)-> state  19  [id  38 tp   2] [----G] prodCons.pml:65 => ((idSent<3))
	state  12 -(tr  28)-> state   8  [id  28 tp   2] [----L] prodCons.pml:69 => ((received==3))
	state  12 -(tr   2)-> state  20  [id  34 tp   2] [----L] prodCons.pml:69 => else
	state   8 -(tr  29)-> state  19  [id  32 tp   2] [D---L] prodCons.pml:69 => D_STEP
	state  19 -(tr  31)-> state  18  [id  39 tp   5] [A---G] prodCons.pml:78 => pb!Msg,B,idToSend
	state  18 -(tr  32)-> state  20  [id  42 tp   2] [A---G] prodCons.pml:78 => D_STEP
proctype PriorityQueue
	state   9 -(tr  20)-> state   4  [id  48 tp 504] [----G] prodCons.pml:95 => (nempty(pa))
	state   9 -(tr  23)-> state   8  [id  52 tp 1004,505] [----G] prodCons.pml:95 => ((empty(pa)&&nempty(pb)))
	state   4 -(tr  21)-> state   3  [id  49 tp 504,3] [A---G] prodCons.pml:97 => pa?Msg,A,id
	state   3 -(tr  22)-> state   9  [id  50 tp 504,3] [----G] prodCons.pml:97 => pq!Msg,A,id
	state   8 -(tr  24)-> state   7  [id  53 tp 505,3] [A---G] prodCons.pml:100 => pb?Msg,B,id
	state   7 -(tr  25)-> state   9  [id  54 tp 505,3] [----G] prodCons.pml:100 => pq!Msg,B,id
proctype Consumer
	state   8 -(tr  15)-> state   6  [id  60 tp 503] [----G] prodCons.pml:114 => pq?Msg,prod,id
	state   6 -(tr  16)-> state   3  [id  61 tp   2] [----G] prodCons.pml:118 => ((prod==A))
	state   6 -(tr   2)-> state   5  [id  63 tp   2] [----G] prodCons.pml:118 => else
	state   3 -(tr  17)-> state   8  [id  62 tp   6] [----G] prodCons.pml:120 => ca!Ack,A,id
	state   5 -(tr  18)-> state   8  [id  64 tp   7] [----G] prodCons.pml:123 => cb!Ack,B,id
claim p1
	state   5 -(tr  13)-> state   7  [id  71 tp   2] [----G] prodCons.pml:3 => (!((!((ProducerA._p==ackReceived))||(idToReceiveA==((i+1)%3)))))
	state   5 -(tr   1)-> state   5  [id  73 tp   2] [----L] prodCons.pml:3 => (1)
	state   7 -(tr   1)-> state   8  [id  77 tp   2] [-a--L] prodCons.pml:7 => (1)
	state   8 -(tr  14)-> state   0  [id  78 tp 3500] [--e-L] prodCons.pml:8 => -end-
claim p2
	state   5 -(tr  10)-> state   9  [id  79 tp   2] [----G] prodCons.pml:12 => (!((ProducerA._p==startProd)))
	state   5 -(tr   1)-> state   5  [id  81 tp   2] [----L] prodCons.pml:12 => (1)
	state   9 -(tr  11)-> state   9  [id  85 tp   2] [-a--G] prodCons.pml:17 => (!((ProducerA._p==startProd)))
claim p3
	state   5 -(tr   8)-> state   7  [id  90 tp   2] [----G] prodCons.pml:23 => (!((!((PriorityQueue._p==sendMessageFromB))||!((PriorityQueue._p==sendMessageFromA)))))
	state   5 -(tr   1)-> state   5  [id  92 tp   2] [----L] prodCons.pml:23 => (1)
	state   7 -(tr   1)-> state   8  [id  96 tp   2] [-a--L] prodCons.pml:27 => (1)
	state   8 -(tr   9)-> state   0  [id  97 tp 3500] [--e-L] prodCons.pml:28 => -end-
claim p4
	state   5 -(tr   6)-> state   7  [id  98 tp   2] [----G] prodCons.pml:32 => (!(((!((Consumer._p==sendToA))||(len(ca)<3))&&(!((Consumer._p==sendToB))||(len(cb)<3)))))
	state   5 -(tr   1)-> state   5  [id 100 tp   2] [----L] prodCons.pml:32 => (1)
	state   7 -(tr   1)-> state   8  [id 104 tp   2] [-a--L] prodCons.pml:36 => (1)
	state   8 -(tr   7)-> state   0  [id 105 tp 3500] [--e-L] prodCons.pml:37 => -end-
claim p5
	state   5 -(tr   3)-> state   9  [id 106 tp   2] [----G] prodCons.pml:41 => (((!(!((ProducerA._p==prodAndSend)))&&!((Consumer._p==consumeMsg)))||(!(!((ProducerB._p==prodAndSend)))&&!((Consumer._p==consumeMsg)))))
	state   5 -(tr   1)-> state   5  [id 108 tp   2] [----L] prodCons.pml:41 => (1)
	state   9 -(tr   4)-> state   9  [id 112 tp   2] [-a--G] prodCons.pml:46 => (!((Consumer._p==consumeMsg)))

Transition Type: A=atomic; D=d_step; L=local; G=global
Source-State Labels: p=progress; e=end; a=accept;
Note: statement merging was used. Only the first
      stmnt executed in each merge sequence is shown
      (use spin -a -o3 to disable statement merging)

pan: elapsed time 0 seconds
