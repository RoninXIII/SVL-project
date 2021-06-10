//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*

*/
A<> forall(x:int[0,NIds-1])  Queue.list[N] == x // Determine whether or not in every run sooner or later the Queue will become full

/*

*/
Producer.StartProd --> Producer.ContProd //  whenever it produces a message it will eventually produce another message

/*

*/
E<>  Queue.list[N] == 1// Determine whether or not it is possible that the Queue becomes full.

/*

*/
A[] not deadlock
