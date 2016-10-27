eval(A+B,CV):-eval(A,AV),eval(B,BV),CV is AV+BV.
eval(A-B,CV):-eval(A,AV),eval(B,BV),CV is AV-BV.
<<<<<<< HEAD
eval(A*B,CV):-eval(A,AV),eval(B,BV),CV is AV*BV.
eval(Num,Num):-number(Num).
eval(Letter,Letter) :- string(Letter).
eval(Num,Letter):-number(Letter).
=======
eval(Num,Num):-number(Num).
eval(Letter,Letter) :- string(Letter).
>>>>>>> 08afc6d5305078212ec95a1280c695fde5f49a99
