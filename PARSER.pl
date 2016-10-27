browse(File) :-
		write('Enter name of file to save list'), read(List),  
        
        seeing(Old),      /* save for later */ 
        see(user),
        
        tell(List), 
        write('['),
        see(File), 	        
	    repeat,
	    read(Term),
		    ( Term == end_of_file -> true ;	
		      Term =..Lista,
		      arg(1, Lista, S),    
		      (S == ':-' -> 
		      arg(1, Term, M),	
		      arg(2, Term, N),
		      write('['),
		      write('['),      	 
		      write(M),
		      write(']'),
		      write(', ['),
		      write(N),
		      write('] ],'), nl, fail;
		      write('['), 
		      write(Term),
		      write('],'), fail
		    )   
	    ),
	    seen,
	    write('[]'), nl,
	    write(']'),
	    told, 	    
	    see(Old). 

make_file :-  
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

