mrg([], [], []).
mrg([H], [], [H]).
mrg([], [H], [H]).
mrg([H|T], [Hs|Ts], R) :-
	H < Hs ->  R = [H|R1], mrg(T, [Hs|Ts], R1);   
	H > Hs ->  R = [Hs|R1], mrg([H|T], Ts, R1);
	R = [H,Hs|R1], mrg(T,Ts,R1).