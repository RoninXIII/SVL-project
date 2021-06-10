#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM p5 */
	case 3: /* STATE 1 - _spin_nvr.tmp:41 - [(((!(!((ProducerA._p==prodAndSend)))&&!((Consumer._p==consumeMsg)))||(!(!((ProducerB._p==prodAndSend)))&&!((Consumer._p==consumeMsg)))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!((( !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==21)))&& !((((int)((P3 *)Pptr(f_pid(3)))->_p)==6)))||( !( !((((int)((P1 *)Pptr(f_pid(1)))->_p)==19)))&& !((((int)((P3 *)Pptr(f_pid(3)))->_p)==6))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 7 - _spin_nvr.tmp:46 - [(!((Consumer._p==consumeMsg)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported7)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][7] = 1;
		if (!( !((((int)((P3 *)Pptr(f_pid(3)))->_p)==6))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 11 - _spin_nvr.tmp:48 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported11)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p4 */
	case 6: /* STATE 1 - _spin_nvr.tmp:32 - [(!(((!((Consumer._p==sendToA))||(len(ca)<3))&&(!((Consumer._p==sendToB))||(len(cb)<3)))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !((( !((((int)((P3 *)Pptr(f_pid(3)))->_p)==3))||(q_len(now.ca)<3))&&( !((((int)((P3 *)Pptr(f_pid(3)))->_p)==5))||(q_len(now.cb)<3))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 8 - _spin_nvr.tmp:37 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported8)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p3 */
	case 8: /* STATE 1 - _spin_nvr.tmp:23 - [(!((!((PriorityQueue._p==sendMessageFromB))||!((PriorityQueue._p==sendMessageFromA)))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !(( !((((int)((P2 *)Pptr(f_pid(2)))->_p)==8))|| !((((int)((P2 *)Pptr(f_pid(2)))->_p)==4))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 8 - _spin_nvr.tmp:28 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported8)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p2 */
	case 10: /* STATE 1 - _spin_nvr.tmp:12 - [(!((ProducerA._p==startProd)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==22))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 7 - _spin_nvr.tmp:17 - [(!((ProducerA._p==startProd)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported7)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][7] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==22))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 11 - _spin_nvr.tmp:19 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported11)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p1 */
	case 13: /* STATE 1 - _spin_nvr.tmp:3 - [(!((!((ProducerA._p==ackReceived))||(idToReceiveA==((i+1)%3)))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==14))||(((int)now.idToReceiveA)==((((int)now.i)+1)%3))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 8 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported8)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Consumer */
	case 15: /* STATE 1 - prodCons.pml:114 - [pq?Msg,prod,id] (0:0:2 - 1) */
		reached[3][1] = 1;
		if (q_zero(now.pq))
		{	if (boq != now.pq) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.pq) == 0) continue;

		XX=1;
		if (2 != qrecv(now.pq, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P3 *)this)->_10_prod;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)this)->_10_id);
		;
		((P3 *)this)->_10_prod = qrecv(now.pq, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Consumer:prod", ((P3 *)this)->_10_prod);
#endif
		;
		((P3 *)this)->_10_id = qrecv(now.pq, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Consumer:id", ((int)((P3 *)this)->_10_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.pq);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P3 *)this)->_10_prod); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->_10_id)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.pq))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 16: /* STATE 2 - prodCons.pml:118 - [((prod==A))] (0:0:1 - 1) */
		IfNotBlocked
		reached[3][2] = 1;
		if (!((((P3 *)this)->_10_prod==4)))
			continue;
		/* dead 1: _10_prod */  (trpt+1)->bup.oval = ((P3 *)this)->_10_prod;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)this)->_10_prod = 0;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 3 - prodCons.pml:120 - [ca!Ack,A,id] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][3] = 1;
		if (q_full(now.ca))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.ca);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->_10_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ca, 0, 1, 4, ((int)((P3 *)this)->_10_id), 3);
		if (q_zero(now.ca)) { boq = now.ca; };
		_m = 2; goto P999; /* 0 */
	case 18: /* STATE 5 - prodCons.pml:123 - [cb!Ack,B,id] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][5] = 1;
		if (q_full(now.cb))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.cb);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)this)->_10_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cb, 0, 1, 3, ((int)((P3 *)this)->_10_id), 3);
		if (q_zero(now.cb)) { boq = now.cb; };
		_m = 2; goto P999; /* 0 */
	case 19: /* STATE 11 - prodCons.pml:128 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[3][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PriorityQueue */
	case 20: /* STATE 1 - prodCons.pml:95 - [(nempty(pa))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][1] = 1;
		if (!((q_len(now.pa)>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 2 - prodCons.pml:97 - [pa?Msg,A,id] (0:0:1 - 1) */
		reached[2][2] = 1;
		if (q_zero(now.pa))
		{	if (boq != now.pa) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.pa) == 0) continue;

		XX=1;
		if (2 != qrecv(now.pa, 0, 0, 0)) continue;
		if (4 != qrecv(now.pa, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->_9_id);
		;
		((P2 *)this)->_9_id = qrecv(now.pa, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("PriorityQueue:id", ((int)((P2 *)this)->_9_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.pa);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->_9_id)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.pa))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 22: /* STATE 3 - prodCons.pml:97 - [pq!Msg,A,id] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][3] = 1;
		if (q_full(now.pq))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.pq);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->_9_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.pq, 0, 2, 4, ((int)((P2 *)this)->_9_id), 3);
		if (q_zero(now.pq)) { boq = now.pq; };
		_m = 2; goto P999; /* 0 */
	case 23: /* STATE 5 - prodCons.pml:98 - [((empty(pa)&&nempty(pb)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][5] = 1;
		if (!(((q_len(now.pa)==0)&&(q_len(now.pb)>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 6 - prodCons.pml:100 - [pb?Msg,B,id] (0:0:1 - 1) */
		reached[2][6] = 1;
		if (q_zero(now.pb))
		{	if (boq != now.pb) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.pb) == 0) continue;

		XX=1;
		if (2 != qrecv(now.pb, 0, 0, 0)) continue;
		if (3 != qrecv(now.pb, 0, 1, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)this)->_9_id);
		;
		((P2 *)this)->_9_id = qrecv(now.pb, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("PriorityQueue:id", ((int)((P2 *)this)->_9_id));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.pb);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->_9_id)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.pb))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 25: /* STATE 7 - prodCons.pml:100 - [pq!Msg,B,id] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][7] = 1;
		if (q_full(now.pq))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.pq);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)this)->_9_id)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.pq, 0, 2, 3, ((int)((P2 *)this)->_9_id), 3);
		if (q_zero(now.pq)) { boq = now.pq; };
		_m = 2; goto P999; /* 0 */
	case 26: /* STATE 12 - prodCons.pml:106 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[2][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ProducerB */
	case 27: /* STATE 1 - prodCons.pml:65 - [cb?Ack,B,idToReceiveB] (12:0:2 - 1) */
		reached[1][1] = 1;
		if (q_zero(now.cb))
		{	if (boq != now.cb) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.cb) == 0) continue;

		XX=1;
		if (1 != qrecv(now.cb, 0, 0, 0)) continue;
		if (3 != qrecv(now.cb, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.idToReceiveB);
		;
		now.idToReceiveB = qrecv(now.cb, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("idToReceiveB", ((int)now.idToReceiveB));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cb);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.idToReceiveB)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.cb))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: received = (received+1)(0, 2, 12) */
		reached[1][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->_8_received);
		((P1 *)this)->_8_received = (((int)((P1 *)this)->_8_received)+1);
#ifdef VAR_RANGES
		logval("ProducerB:received", ((int)((P1 *)this)->_8_received));
#endif
		;
		_m = 4; goto P999; /* 1 */
	case 28: /* STATE 4 - prodCons.pml:69 - [((received==3))] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((int)((P1 *)this)->_8_received)==3)))
			continue;
		/* dead 1: _8_received */  (trpt+1)->bup.oval = ((P1 *)this)->_8_received;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->_8_received = 0;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 8 - prodCons.pml:69 - [D_STEP] */
		IfNotBlocked
		sv_save();
		reached[1][8] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;
S_029_0: /* 2 */
		((P1 *)this)->_8_idToSend = 0;
#ifdef VAR_RANGES
		logval("ProducerB:idToSend", ((int)((P1 *)this)->_8_idToSend));
#endif
		;
S_030_0: /* 2 */
		((P1 *)this)->_8_idSent = 0;
#ifdef VAR_RANGES
		logval("ProducerB:idSent", ((int)((P1 *)this)->_8_idSent));
#endif
		;
S_031_0: /* 2 */
		((P1 *)this)->_8_received = 0;
#ifdef VAR_RANGES
		logval("ProducerB:received", ((int)((P1 *)this)->_8_received));
#endif
		;
		goto S_033_0;
S_033_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 30: /* STATE 14 - prodCons.pml:76 - [((idSent<3))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][14] = 1;
		if (!((((int)((P1 *)this)->_8_idSent)<3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 15 - prodCons.pml:78 - [pb!Msg,B,idToSend] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][15] = 1;
		if (q_full(now.pb))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.pb);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->_8_idToSend)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.pb, 0, 2, 3, ((int)((P1 *)this)->_8_idToSend), 3);
		if (q_zero(now.pb)) { boq = now.pb; };
		_m = 2; goto P999; /* 0 */
	case 32: /* STATE 18 - prodCons.pml:78 - [D_STEP] */
		IfNotBlocked
		sv_save();
		reached[1][18] = 1;
		reached[1][t->st] = 1;
		reached[1][tt] = 1;
S_040_0: /* 2 */
		((P1 *)this)->_8_idToSend = (((int)((P1 *)this)->_8_idToSend)+1);
#ifdef VAR_RANGES
		logval("ProducerB:idToSend", ((int)((P1 *)this)->_8_idToSend));
#endif
		;
S_041_0: /* 2 */
		((P1 *)this)->_8_idSent = (((int)((P1 *)this)->_8_idSent)+1);
#ifdef VAR_RANGES
		logval("ProducerB:idSent", ((int)((P1 *)this)->_8_idSent));
#endif
		;
		goto S_045_0;
S_045_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 33: /* STATE 23 - prodCons.pml:83 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][23] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ProducerA */
	case 34: /* STATE 1 - prodCons.pml:32 - [ca?Ack,A,idToReceiveA] (14:0:2 - 1) */
		reached[0][1] = 1;
		if (q_zero(now.ca))
		{	if (boq != now.ca) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.ca) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ca, 0, 0, 0)) continue;
		if (4 != qrecv(now.ca, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.idToReceiveA);
		;
		now.idToReceiveA = qrecv(now.ca, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("idToReceiveA", ((int)now.idToReceiveA));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ca);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.idToReceiveA)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ca))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3d: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: received = (received+1)(0, 2, 14) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->_7_received);
		((P0 *)this)->_7_received = (((int)((P0 *)this)->_7_received)+1);
#ifdef VAR_RANGES
		logval("ProducerA:received", ((int)((P0 *)this)->_7_received));
#endif
		;
		_m = 4; goto P999; /* 1 */
	case 35: /* STATE 4 - prodCons.pml:37 - [((received==3))] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)((P0 *)this)->_7_received)==3)))
			continue;
		/* dead 1: _7_received */  (trpt+1)->bup.oval = ((P0 *)this)->_7_received;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_7_received = 0;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 9 - prodCons.pml:37 - [D_STEP] */
		IfNotBlocked
		sv_save();
		reached[0][9] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;
S_004_0: /* 2 */
		((P0 *)this)->_7_idToSend = 0;
#ifdef VAR_RANGES
		logval("ProducerA:idToSend", ((int)((P0 *)this)->_7_idToSend));
#endif
		;
S_005_0: /* 2 */
		((P0 *)this)->_7_idSent = 0;
#ifdef VAR_RANGES
		logval("ProducerA:idSent", ((int)((P0 *)this)->_7_idSent));
#endif
		;
S_006_0: /* 2 */
		((P0 *)this)->_7_received = 0;
#ifdef VAR_RANGES
		logval("ProducerA:received", ((int)((P0 *)this)->_7_received));
#endif
		;
S_007_0: /* 2 */
		now.i = ((int)now.idToReceiveA);
#ifdef VAR_RANGES
		logval("i", ((int)now.i));
#endif
		;
		goto S_009_0;
S_009_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 37: /* STATE 12 - prodCons.pml:38 - [i = idToReceiveA] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)now.i);
		now.i = ((int)now.idToReceiveA);
#ifdef VAR_RANGES
		logval("i", ((int)now.i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 16 - prodCons.pml:44 - [((idSent<3))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		if (!((((int)((P0 *)this)->_7_idSent)<3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 17 - prodCons.pml:46 - [pa!Msg,A,idToSend] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][17] = 1;
		if (q_full(now.pa))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d!", now.pa);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->_7_idToSend)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.pa, 0, 2, 4, ((int)((P0 *)this)->_7_idToSend), 3);
		if (q_zero(now.pa)) { boq = now.pa; };
		_m = 2; goto P999; /* 0 */
	case 40: /* STATE 20 - prodCons.pml:46 - [D_STEP] */
		IfNotBlocked
		sv_save();
		reached[0][20] = 1;
		reached[0][t->st] = 1;
		reached[0][tt] = 1;
S_017_0: /* 2 */
		((P0 *)this)->_7_idToSend = (((int)((P0 *)this)->_7_idToSend)+1);
#ifdef VAR_RANGES
		logval("ProducerA:idToSend", ((int)((P0 *)this)->_7_idToSend));
#endif
		;
S_018_0: /* 2 */
		((P0 *)this)->_7_idSent = (((int)((P0 *)this)->_7_idSent)+1);
#ifdef VAR_RANGES
		logval("ProducerA:idSent", ((int)((P0 *)this)->_7_idSent));
#endif
		;
		goto S_022_0;
S_022_0: /* 1 */

#if defined(C_States) && (HAS_TRACK==1)
		c_update((uchar *) &(now.c_state[0]));
#endif
		_m = 3; goto P999;

	case 41: /* STATE 25 - prodCons.pml:50 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

