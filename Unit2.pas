unit Unit2;

interface
 type
  matr=array of array of integer;
  function PoiskT(const n,m:Byte;out ti,tj:Byte;var a:matr;const t:integer):boolean;
  function PoiskD(const n,m:Byte;out ti,tj:Byte;var a:matr;const d:integer):boolean;
  function PoiskPol(const n,m:Byte;out ti,tj:Byte;var a:matr;const d:integer):boolean;
  function PoiskOtr(const n,m,ti,tj:Byte; out iotr,jotr:Byte; var a:matr):Boolean;
procedure PoiskMax(var a:matr;const n,m,iotr,jotr:byte;out amax:integer;out maxi,maxj:byte);


implementation

function PoiskPol;
 var i,j:Byte;
 flag,flag2:Boolean;
 begin
 flag2:=false;
   i
    flag:=False;
    for i:=0 to n-1 do
     for j:=0 to m-1 do
      if a[i,j] = d then
      begin
      ti:=i;
      tj:=j;
      flag:=True;
      end;
 PoiskT:=flag;
 end;

function PoiskD;
 var i,j:Byte;
 flag:Boolean;
 begin
    flag:=False;
    for i:=0 to n-1 do
     for j:=0 to m-1 do
      if a[i,j] = d then
      begin
      ti:=i;
      tj:=j;
      flag:=True;
      end;
 PoiskT:=flag;
 end;


 function PoiskT;
 var i,j:Byte;
 flag:Boolean;
 begin
    flag:=False;
    for i:=0 to n-1 do
     for j:=0 to m-1 do
      if a[i,j] = t then
      begin
      ti:=i;
      tj:=j;
      flag:=True;
      end;
 PoiskT:=flag;
 end;

function PoiskOtr; //���� ���� �� ���� �� ���� ������������� ������� ����� ���������� �
var
  flag:Boolean;
  j,i:Byte;
begin
  flag:=False;
  i:=ti;
   while(not flag) and (i<=n-1) do
    begin
      if (i=ti) then
      begin
      j:=tj+1 ;
       while(not flag) and (j<=m-1) do
         begin
        if a[i,j]<0 then
           begin
         flag:=True;
         iotr:=i;
         jotr:=j;
          end;
         j:=j+1
         end ;
       end
      else
      j:=0;
     while(not flag) and (j<=m-1) do
        begin
        if a[i,j]<0 then
          begin
          flag:=True;
          iotr:=i;
          jotr:=j;
          end;
         j:=j+1
       end;
      i:=i+1;
    end;
  PoiskOtr:=flag;
end;


procedure PoiskMax; //���� ������������ ��������� ������������� �������=)
 var i,j:byte;
 flag:boolean;
begin
  amax:=a[iotr,jotr];
  maxi:=iotr;
  maxj:=jotr;
  flag:=false;
  for i:=iotr to n-1 do
   begin
           if not flag then begin

           for j:=jotr to m-1 do
           begin
           if (a[i,j]>=amax) and(a[i,j]<0) then
           begin
           amax:=a[i,j];
           maxi:=i ;
           maxj:=j;
           end;
           end;
           flag:=true;
           end
           else begin
          for j:=0 to m-1 do
           begin
           if (a[i,j]>=amax) and(a[i,j]<0) then
           begin
           amax:=a[i,j];
           maxi:=i ;
           maxj:=j;
           end;
           end;
           end;



   end;
end;
end.



