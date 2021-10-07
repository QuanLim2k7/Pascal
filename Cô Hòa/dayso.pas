const
	fi='days.inp';
	fo='days.out';
var f,g:text;
	a,s:array[1..100] of longint;
	n:longint;
procedure nhap;
var i:longint;
begin
 	assign(f,fi);reset(f);
 	assign(g,fo);rewrite(g);
 	readln(f,n);
 	for i:=1 to n do 
 	read(f,a[i]);
end;
procedure tim;
var i,v,max:longint;
begin
	s[1]:=a[1]+a[2];
	for i:=2 to n-1 do 
	s[i]:=a[i-1]+a[i]+a[i+1];
	s[n]:=a[n-1]+a[n];

	max:=-maxlongint;
	for i:=1 to n do 
	if s[i]>max then 
	begin
		max:=s[i];
		v:=i;
	end;
write(g,max);
writeln(g);
if v=1 then write(g,a[1],' ',a[2]) else
if v=n then write(g,a[v-1],' ',a[v])
	else write(g,a[v-1],' ',a[v],' ',a[v+1]);
end;
begin
	nhap;
	tim;
	close(f);
	close(g);
end.