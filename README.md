# Made By Vatsal Agrawal
# cryptarithmetic-problem---SendMoreMoney
cryptarithmetic puzzle in which sum of rows columns and diagonals are equal in prolog

**************************HOW TO MAKE EXECUTABLE AND RUN PROGRAMME******************************
1)  we just have to query like
main(N).
to get all possible solution.
here N is variable .
Or we can use query like
main2([A,B,C,D,E,F,G,H,I]).
here A,B,C..... can be variable or any fixed number.

Note 

 it is modified version of problem like send more money
 I have used optimization and reorder the subgoals to make it faster 
also as in operator is not working in gprolog so I have used between operator.
Note do not use main2(X).
as it will not give mapping and will give list only.
I have used R1<16 as max sum cannot increase 16 to further speed up the process

Problem Statment

 The cryptarithmetic problem is characterized by a
finite set of letters and a finite set of numbers and an arithmetic constraint written in terms
of the letters. Consider a square of order 3 – (A,B,C), (D, E, F), (G,H,I); here each row of
the square is shown as a tuple enclosed in parenthesis. Write a Prolog program that maps
the digits to a non-zero number in the set {0, . . . , 9} s.t. the each row, columm and diagonals
add up to the same number. The output of the program should list the mapping of digits to
numbers.
