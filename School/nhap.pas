PROGRAM Fibonacci;
Uses CRT;
VAR
   First, Second, Temp : Longint;
   ix,n,k : integer;
BEGIN
   Clrscr;
   Write('Nhap n = ');   Readln(n);
   write('Nhap k = ');   readln(k);


   Writeln('Day so Fibonacci:');
   First := 0;
   Second := 1;
   write(First:10);
   write(Second:10);
   for ix := 0 to k do
   begin
      Temp := FIrst + Second;
      First := Second;
      Second := Temp;
      write(Temp:10);
   end;
   Readln;
END.