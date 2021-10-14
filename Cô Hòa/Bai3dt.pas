const
	fi='bai3dt.inp';
	fo='bai3dt.out';
var d,m,y,n:longint;
	f,g:text;

procedure nhap;
begin
	assign(f,fi);reset(f);
	assign(g,fo);rewrite(g);
	readln(f,d,m,y);
	readln(n);
end;

function sn(m.y:longint):longint