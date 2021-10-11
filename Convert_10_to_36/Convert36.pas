unit Convert36;
{
Пример преобразования 10-тичных чисел в 36-тиричных и обратно
(используется в кодировании названия файлов)
                           tolyyy45@list.ru
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, FileCtrl, jpeg, TypInfo;

type
  TForm1 = class(TForm)
    ExitPro: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Convert1: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Return: TButton;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ExitProClick(Sender: TObject);
    procedure Convert1Click(Sender: TObject);
    procedure ReturnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Conv(ir:integer):string;
    function ConvR(s36:string):integer;
    function Compress3(n10:integer):string;
    function Compress2(n10:integer):string;
    function Compress1(n10:integer):string;
    function Ret3(s36:string):integer;
    function Ret2(s36:string):integer;
    function Ret1(s36:string):integer;
  end;

type Ts36= (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sA,sB,sC,sD,sE,sF,sG,sH,
                      sI,sJ,sK,sL,sM,sN,sO,sP,sQ,sR,sS,sT,sU,sV,sW,sX,sY,sZ);
var
  Form1: TForm1;
  MyDir:string;
  NewFileName: string;
  buffer:string;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);

begin
GetDir(0,MyDir);
end;

procedure TForm1.ExitProClick(Sender: TObject);
begin
Close;
end;

procedure TForm1.Convert1Click(Sender: TObject);
begin
Edit3.Text:=Compress3(StrToInt(Edit1.Text));
Edit5.Text:=Compress2(StrToInt(Edit2.Text));
Edit6.Text:=Compress1(StrToInt(Edit4.Text));
end;

procedure TForm1.ReturnClick(Sender: TObject);
begin
Edit1.Text:=IntToStr(Ret3(Edit3.Text));
Edit2.Text:=IntToStr(Ret2(Edit5.Text));
Edit4.Text:=IntToStr(Ret1(Edit6.Text));
end;

function TForm1.Conv(ir:integer): string;
var
   iD:integer;
   sD:string;
begin
iD:=ir;
case iD of
  0: sD:='0'; 1: sD:='1'; 2: sD:='2'; 3: sD:='3'; 4: sD:='4'; 5: sD:='5';
  6: sD:='6'; 7: sD:='7'; 8: sD:='8'; 9: sD:='9'; 10: sD:='A'; 11: sD:='B';
  12: sD:='C'; 13: sD:='D'; 14: sD:='E'; 15: sD:='F'; 16: sD:='G'; 17: sD:='H';
  18: sD:='I'; 19: sD:='J'; 20: sD:='K'; 21: sD:='L'; 22: sD:='M'; 23: sD:='N';
  24: sD:='O'; 25: sD:='P'; 26: sD:='Q'; 27: sD:='R'; 28: sD:='S'; 29: sD:='T';
  30: sD:='U'; 31: sD:='V'; 32: sD:='W'; 33: sD:='X'; 34: sD:='Y'; 35: sD:='Z';
  end;
Conv:=sD;
end;

function TForm1.ConvR(s36: string): integer;
var
  S:string;
  i:integer;
begin
S:=s36;
case Ts36(GetEnumValue(TypeInfo(Ts36),'s'+S)) of
 s0: i:=0;  s1: i:=1;  s2: i:=2;  s3: i:=3;  s4: i:=4;  s5: i:=5;  s6: i:=6;
 s7: i:=7;  s8: i:=8;  s9: i:=9;  sA: i:=10; sB: i:=11; sC: i:=12; sD: i:=13;
 sE: i:=14; sF: i:=15; sG: i:=16; sH: i:=17; sI: i:=18; sJ: i:=19; sK: i:=20;
 sL: i:=21; sM: i:=22; sN: i:=23; sO: i:=24; sP: i:=25; sQ: i:=26; sR: i:=27;
 sS: i:=28; sT: i:=29; sU: i:=30; sV: i:=31; sW: i:=32; sX: i:=33; sY: i:=34;
 sZ: i:=35;
   end;
Result:=i;
end;

function TForm1.Compress3(n10:integer): string;
var
   r2,r1,r0,r3:integer;
   sr2,sr1,sr0:string;
begin
//Проверить допустимость
if n10 > 46656 then Exit;
//Второй разряд
r2:=n10 div 1296;
if (r2>=1) or (r2=0) then sr2:=Conv(r2);
r3:=n10-r2*1296;
//Первый разряд
r1:=r3 div 36;
if (r1>=1) or (r1=0) then sr1:=Conv(r1);
r0:=r3-r1*36;
//Нулевой разряд
sr0:= Conv(r0);
Result:=sr2+sr1+sr0;
end;

function TForm1.Compress2(n10: integer): string;
var
   r1,r0:integer;
   sr1,sr0:string;
begin
//Проверить допустимость
if n10 > 1296 then Exit;
//Первый разряд
r1:=n10 div 36;
if (r1>=1) or (r1=0) then sr1:=Conv(r1);
r0:=n10-r1*36;
//Нулевой разряд
sr0:= Conv(r0);
Result:=sr1+sr0;
end;

function TForm1.Compress1(n10: integer): string;
var
   sr0:string;
begin
//Проверить допустимость
if n10 > 36 then Exit;
//Нулевой разряд
sr0:= Conv(n10);
Result:=sr0;
end;

function TForm1.Ret1(s36: string): integer;
begin
Result:=ConvR(s36);
end;

function TForm1.Ret2(s36: string): integer;
begin
Result:=36*ConvR(Copy(s36,1,1))+ConvR(Copy(s36,2,1));
end;

function TForm1.Ret3(s36: string): integer;
begin
Result:=1296*ConvR(Copy(s36,1,1))+36*ConvR(Copy(s36,2,1))+ConvR(Copy(s36,3,1));
end;

end.
