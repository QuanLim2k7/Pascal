const fi='robot.inp';
      fo='robot.out';
var f,g:text;
    a:array[1..100] of longint;
    n:longint;
procedure tim;
var i,t:longint;
begin
t:=0;
for i:=1 to n do
if a[i]=1 then t:=t+1 else t:=t-1;
writeln(g,t);
end;
procedure nhap;
var i:longint;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,n);
for i:=1 to n do
read(f,a[i]);
end;
begin
nhap;
tim;
close(f);
close(g);
end.