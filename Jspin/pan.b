	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p5 */
;
		;
		;
		;
		
	case 5: /* STATE 11 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p4 */
;
		;
		
	case 7: /* STATE 8 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p3 */
;
		;
		
	case 9: /* STATE 8 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p2 */
;
		;
		;
		;
		
	case 12: /* STATE 11 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p1 */
;
		;
		
	case 14: /* STATE 8 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Consumer */

	case 15: /* STATE 1 */
		;
		XX = 1;
		unrecv(now.pq, XX-1, 0, 2, 1);
		unrecv(now.pq, XX-1, 1, ((P3 *)this)->_10_prod, 0);
		unrecv(now.pq, XX-1, 2, ((int)((P3 *)this)->_10_id), 0);
		((P3 *)this)->_10_prod = trpt->bup.ovals[0];
		((P3 *)this)->_10_id = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: /* STATE 2 */
		;
	/* 0 */	((P3 *)this)->_10_prod = trpt->bup.oval;
		;
		;
		goto R999;

	case 17: /* STATE 3 */
		;
		_m = unsend(now.ca);
		;
		goto R999;

	case 18: /* STATE 5 */
		;
		_m = unsend(now.cb);
		;
		goto R999;

	case 19: /* STATE 11 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC PriorityQueue */
;
		;
		
	case 21: /* STATE 2 */
		;
		XX = 1;
		unrecv(now.pa, XX-1, 0, 2, 1);
		unrecv(now.pa, XX-1, 1, 4, 0);
		unrecv(now.pa, XX-1, 2, ((int)((P2 *)this)->_9_id), 0);
		((P2 *)this)->_9_id = trpt->bup.oval;
		;
		;
		goto R999;

	case 22: /* STATE 3 */
		;
		_m = unsend(now.pq);
		;
		goto R999;
;
		;
		
	case 24: /* STATE 6 */
		;
		XX = 1;
		unrecv(now.pb, XX-1, 0, 2, 1);
		unrecv(now.pb, XX-1, 1, 3, 0);
		unrecv(now.pb, XX-1, 2, ((int)((P2 *)this)->_9_id), 0);
		((P2 *)this)->_9_id = trpt->bup.oval;
		;
		;
		goto R999;

	case 25: /* STATE 7 */
		;
		_m = unsend(now.pq);
		;
		goto R999;

	case 26: /* STATE 12 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ProducerB */

	case 27: /* STATE 2 */
		;
		((P1 *)this)->_8_received = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.cb, XX-1, 0, 1, 1);
		unrecv(now.cb, XX-1, 1, 3, 0);
		unrecv(now.cb, XX-1, 2, ((int)now.idToReceiveB), 0);
		now.idToReceiveB = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 28: /* STATE 4 */
		;
	/* 0 */	((P1 *)this)->_8_received = trpt->bup.oval;
		;
		;
		goto R999;
	case 29: /* STATE 8 */
		sv_restor();
		goto R999;
;
		;
		
	case 31: /* STATE 15 */
		;
		_m = unsend(now.pb);
		;
		goto R999;
	case 32: /* STATE 18 */
		sv_restor();
		goto R999;

	case 33: /* STATE 23 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ProducerA */

	case 34: /* STATE 2 */
		;
		((P0 *)this)->_7_received = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.ca, XX-1, 0, 1, 1);
		unrecv(now.ca, XX-1, 1, 4, 0);
		unrecv(now.ca, XX-1, 2, ((int)now.idToReceiveA), 0);
		now.idToReceiveA = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 35: /* STATE 4 */
		;
	/* 0 */	((P0 *)this)->_7_received = trpt->bup.oval;
		;
		;
		goto R999;
	case 36: /* STATE 9 */
		sv_restor();
		goto R999;

	case 37: /* STATE 12 */
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: /* STATE 17 */
		;
		_m = unsend(now.pa);
		;
		goto R999;
	case 40: /* STATE 20 */
		sv_restor();
		goto R999;

	case 41: /* STATE 25 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

