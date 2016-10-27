readFileSee(InputFile) :- seeing(OldStream),
                          see(InputFile),
                          repeat,
                          read(Term),
                          ( Term == end_of_file -> true ; 
                            write(Term), fail
                          ),
                          seen,
                          see(OldStream).