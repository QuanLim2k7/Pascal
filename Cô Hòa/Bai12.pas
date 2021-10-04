const
	fi = 'input24.inp';
	fo = 'output24.out';
var f,g:text;
	a:longint;
procedure nhap;
var i,j:longint;
begin
assign(f,fi);reset(f);
assign(g,fo);rewrite(g);
readln(f,a);
end;
procedure kt;
begin
case a mod 7 of
0:writeln(g,'tu');
1:writeln(g,'nam');
2:writeln(g,'sau');
3:writeln(g,'bay');
4:writeln(g,'chu nhat');
5:writeln(g,'hai');
6:writeln(g,'ba');
end;
end;
begin
	nhap;
	kt;
	close(f);
	close(g);
end.