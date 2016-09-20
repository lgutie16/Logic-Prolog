browse(File) :- 
        seeing(Old),      /* save for later */ 
        see(user), 
        see(File),       
	    repeat,
	    read(Term),
	    ( Term == end_of_file -> true ; 
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
          