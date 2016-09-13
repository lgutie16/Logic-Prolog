eval(A+B,CV):-eval(A,AV),eval(B,BV),CV is AV+BV.
eval(A-B,CV):-eval(A,AV),eval(B,BV),CV is AV-BV.
eval(Num,Num):-number(Num).
eval(Letter,Letter) :- string(Letter).