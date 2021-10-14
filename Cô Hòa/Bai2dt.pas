const
	fi='bai2dt.inp';
	fo='bai2dt.out';
var f,g:text;
	h1,p1,h2,p2:longint;
procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,h1,p1);
	read(f,h2,p2);
end;

procedure tinh_tien;
var p,i,t:longint;
begin
	t:=0;
	p:=(h2*60+p2)-(h1*60+p1);
	for i:=1 to p do 
	if (i>=1) and (i<=60) then t:=t+80 else
	if (i>=61) and (i<=120) then t:=t+50 else t:=t+30;
	writeln(g,t);
end;
begin
	nhap;
	tinh_tien;
	close(f);
	close(g);
end.