const fi='fibona.inp';
      fo='fibona.out';
max=1000000000;
var f1,g:text; n,k:longint;
procedure tim;
var f2,s,te:longint;
i: integer;
begin
      assign(f1,fi);reset(f1);
      assign(g,fo);rewrite(g);
      readln(f1,n,k);

       f2 := 0;
       s := 1;
       for i := n to k do
       begin
          te := f2 + s;
          f2 := s;
          s := te;
          write(g,f2:10);
          write(g,s:10);
          write(g,te:10);
       end;

end;
begin
tim;
close(f1);
close(g);
end.