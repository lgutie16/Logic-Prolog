browse(File) :- 
        seeing(Old),      /* save for later */ 
        see(user), 
        see(File),       
	    repeat,
	    read(Term),
	    ( Term == end_of_file -> true ; 
	      Term =..X,
	      functor(Term,X,L),	      
	      arg(1, Term, N),	  
	      arg(2, Term, N2),
	      write(N), nl, fail,
	      write(N2), nl, fail,
	      write(Term), nl, fail
	    ),
	    seen,
	    see(Old). 

my_save :-      
       telling(Old),      /* current write output */
       write('Enter name of file to browse: '), read(File), 
       tell(File),      /* open this file */ 
       repeat,
	   read(Term),
	   ( Term == stop -> true ; 
	     write(Term), nl, fail	
	   ),
       told,              /* close ToFile */ 
       tell(Old),       /* resume this output */
       browse(File).