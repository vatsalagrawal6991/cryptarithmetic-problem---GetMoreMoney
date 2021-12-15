/* it is modified version of problem like send more money
we just have to query like
main(N).
to get all possible solution.
here N is variable .
Or we can use query like
main2([A,B,C,D,E,F,G,H,I]).
here A,B,C..... can be variable or any fixed number.
I have used optimization and reorder the subgoals to make it faster 
also as in operator is not working in gprolog so I have used between operator.
Note do not use main2(X).
as it will not give mapping and will give list only.
I have used R1<16 as max sum cannot increase 16 to further speed up the process
*/

cp([('A'=A,'B'=B,'C'=C),('D'=D,'E'=E,'F'=F),('G'=G,'H'=H,'I'=I)]) :- 
    between(0,9,B),between(1,9,A),B=\=A,
    between(0,9,C),B=\=C, C=\=A, 
    R1 is A+B+C, R1<16,
    between(0,9,E),E=\=B, A=\=E, C=\=E, 
    between(1,9,D),B=\=D, D=\=A, C=\=D, E=\=D,
    between(0,9,F),B=\=F, A=\=F, C=\=F, F=\=D, F=\=E, 
    R2 is D+E+F, R1=:=R2,
    between(1,9,G),G=\=B, A=\=G, G=\=C, D=\=G, E=\=G, G=\=F, 
    C1 is A+D+G,C1=:=R2, D2 is C+E+G, D2=:=C1,
    between(0,9,H),B=\=H, A=\=H, C=\=H, H=\=D, H=\=E, F=\=H, H=\=G,
    C2 is B+E+H, C1=:=C2,
    between(0,9,I),I=\=B, A=\=I, C=\=I, D=\=I, I=\=E, I=\=F, G=\=I, H=\=I, 
    R3 is G+H+I, R2=:=R3, C3 is C+F+I, C3=:=C2, D1 is A+E+I, C3=:=D1. 

main(X) :- cp(X).
main2([A,B,C,D,E,F,G,H,I]) :- cp([('A'=A,'B'=B,'C'=C),('D'=D,'E'=E,'F'=F),('G'=G,'H'=H,'I'=I)]).
