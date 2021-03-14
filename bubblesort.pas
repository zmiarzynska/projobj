    PROGRAM bubblesort;
   type 
     list = array[1..100] of Integer;
     var
     random_list : list;
     i,j,n : Integer;
     temp : Integer;

   PROCEDURE generate(var param_list: list);
   BEGIN
     Randomize;
     For i:=1 To n Do
     Begin
     param_list[i] := Random(n)+1;
     End;

   END;	 

    PROCEDURE sort_me(var param_list : list);
    BEGIN
      For i:=1 To n Do
      Begin
        For j:=1 To n-1 Do
        Begin
             IF (param_list[j]> param_list[j+1]) THEN
             BEGIN
                  temp := param_list[j+1];
                  param_list[j+1] := param_list[j];
                  param_list[j] := temp;
             END;
        End;

      End;

    END;


 BEGIN
       n := 100;
       generate(random_list);

       For i:=1 To n Do
       Begin
            writeln('NIEsortowana[', i, '] = ', random_list[i] );
       End;

       sort_me(random_list);

       For i:=1 To n Do
       Begin
          writeln('Posortowana[', i, '] = ', random_list[i] );
       End;
	
 END.
