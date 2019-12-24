% Определить предикат qsort(L, K) который для заданного списка целых чисел возвращает отсортированный

pivot(_, [], [], []).

pivot(Pivot, [H|T], [H|LTE], GT) :-
	Pivot >= H,
	pivot(Pivot, T, LTE, GT).

pivot(Pivot, [H|T], LTE, [H|GT]) :-
	pivot(Pivot, T, LTE, GT).

qsort([], []).

qsort([H|T], R) :-
	pivot(H, T, L1, L2),
	qsort(L1, SL1),
	qsort(L2, SL2),
	append(SL1, [H|SL2], R).

?- qsort([2, 3, 9, 6, 1, 8, 5, 4, 7, 10], X), writeln(X).
% [1,2,3,4,5,6,7,8,9,10]