mergeList([],[],[]).
mergeList([X],[],[X]).
mergeList([],[Y],[Y]).
mergeList([X|List1],[Y|List2],[X,Y|List]) :- mergeList(List1,List2,List).


herbrand(File) :-
      seeing(Old),      /* save for later */
      see(user),
      tell('herbrand.txt'),
      write('['),
      see(File),
      repeat,
      read(Term),
        ( Term == end_of_file -> true ;
          Term =..Lista,
          mergeList(Lista, Lista, L),
          write(L)
      ),
      seen,
      write(']'),nl,
      told,
      see(Old).



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
          Term =..E,
          write(Term),
          write('],'),
          tell('herbran.txt'),
          write(E), fail
        )

      ),
      seen,
      told ,
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
