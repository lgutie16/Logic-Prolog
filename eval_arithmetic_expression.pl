eval_v(A+B,CV,Vars):-eval_v(A,AV,Vars),eval_v(B,BV,Vars),CV is AV+BV.
eval_v(A-B,CV,Vars):-eval_v(A,AV,Vars),eval_v(B,BV,Vars),CV is AV-BV.
eval_v(A*B,CV,Vars):-eval_v(A,AV,Vars),eval_v(B,BV,Vars),CV is AV*BV.
eval_v(Num,Num,Vars):-number(Num).
eval_v(Var,Value,Vars):-atom(Var),member(Var/Value,Vars).
