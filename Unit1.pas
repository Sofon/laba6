unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, ComCtrls,unit2;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    ud1: TUpDown;
    ud2: TUpDown;
    StringGrid1: TStringGrid;
    rg1: TRadioGroup;
    dlgOpen1: TOpenDialog;
    btn1: TButton;
    btn2: TButton;
    Label3: TLabel;
    edt3: TEdit;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure edt3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
 var i:Byte;
begin
StringGrid1.Cells[0,0]:='A';
 for i:=1 to 4 do
 begin
   StringGrid1.Cells[0,i]:=IntToStr(i);
   StringGrid1.Cells[i,0]:=IntToStr(i);
 end;
end;



procedure TForm1.btn1Click(Sender: TObject);
var a:matr;
  n,m,i,j,ti,tj,maxi,maxj,iotr,jotr:Byte;
  t,d,amax:integer;
  flag,flag1,flag2,flag3,flag4:Boolean;
  f:Textfile;
begin
   flag:=True;
    if rg1.ItemIndex=0 then  //���� �� �����
      begin
        if dlgOpen1.Execute then
         begin
           AssignFile(f, dlgOpen1.FileName);
           try
            Reset(f);
              try
                try
                Readln(f,n,m);
                if not ((n>0) and (n<=20)and(m>0)and(m<=20)) then
                  begin
                   flag:=False;
                   ShowMessage('����������� ������ �������');
                  end
                else
                 begin
                   SetLength(a,n,m);
                   for i:=0 to n-1 do
                     begin
                       for j:=0 to m-1 do
                        read(f,a[i,j]);
                        Readln(f);
                      end;
                                        //����� ������� � �������
                   ud1.Position:=n;
                   ud2.Position:=m;
                   for j:=1 to m do
                    StringGrid1.Cells[j,0]:=IntToStr(j);
                   for i:=1 to n do
                    StringGrid1.Cells[0,i]:=IntToStr(i);
                   for i:=1 to n do
                     for j:=1 to m do
                    StringGrid1.Cells[j,i]:=IntToStr(a[i-1,j-1]);
                 end;
              except
               flag:=False;
               ShowMessage('������ ��� �����/������ �������� ������');
              end;
            finally
             CloseFile(f);
             end;
          except
           flag:=False;
           ShowMessage('������ ��� �������� �����');
          end;
       end
    else
        flag:=False;
  end
 else //���� �� ����� �����
  begin
  n:=ud1.Position;
  m:=ud2.Position;
  SetLength(a,n,m);
  try
    for i:=0 to n-1 do
      for j:=0 to m-1 do
       a[i,j]:=StrToInt(StringGrid1.Cells[j+1,i+1]);
      except
   flag:=False;
   ShowMessage('������ ��� ����� �� ����� ����� �������� A['+ IntToStr(i+1)+','+IntToStr(j+1)+']');
   end;
 end;

   //�������
    if flag then
    begin
      t:=StrToInt(edt3.Text);
      d:=StrToInt(edit1.Text);
      n:=ud1.Position;
      m:=ud2.Position;
      SetLength(a,n,m);
      flag1:=PoiskT(n,m,ti,tj,a,t);
      flag3:=PoiskD(n,m,ti,tj,a,d);
      flag4:=PoiskPol(n,m,ti,tj,a,d);
      if flag1 = True and flag3 then
        begin
        flag2:=PoiskOtr(n,m,ti,tj,iotr,jotr,a);
           if flag2 then
             begin
              PoiskMax(a,n,m,iotr,jotr,amax,maxi,maxj);
              Label3.Caption:=('����� �������� ����� ['+IntToStr(maxi+1)+','+IntToStr(maxj+1)+']');
             end
           else
           begin
           ShowMessage('������������� ����');
           Label3.Caption:=('������ ��� �� ��������');
          end;
        end
      else
      begin
      ShowMessage('��� �');
      Label3.Caption:=('������ ��� �� ��������');
      end
    end
    else Label3.Caption:=('������ ��� ��������');
end;
procedure TForm1.edt1Change(Sender: TObject);
 begin
  StringGrid1.RowCount := ud1.Position+1;// + ���� ������������� �������
  StringGrid1.Cells[0,ud1.Position]:=IntToStr(ud1.Position);
 end;

procedure TForm1.btn2Click(Sender: TObject);
 begin
  Close;
 end;

procedure TForm1.edt2Change(Sender: TObject);
 begin
  StringGrid1.ColCount:= ud2.Position+1; //   + ���� ������������� �������
  StringGrid1.Cells[ud2.Position,0]:=IntToStr(ud2.Position);
 end;

procedure TForm1.edt3Exit(Sender: TObject);
var
prov:Integer;
begin
try
  prov:=StrToInt(edt3.Text);
  except
   ShowMessage('T ������ �� ���������');
   edt3.Text:='5';
end;
end;

end.
