unit dlgMarkU;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, DBCtrls, Mask,Dialogs;

type
  TdlgMark = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgMark: TdlgMark;
  Digit:array[1..10] of PChar = ('First','Second','Third','Fourth','Fifth','Sixth','Seventh','Eighth','Ninth','Tenth');
implementation

uses MyDataU, QrpMarkEntryU;

{$R *.DFM}

procedure TdlgMark.FormActivate(Sender: TObject);
begin
Mydata.StudMast.Open ;
Mydata.Tbmarkdet.Open ;
Mydata.qrterm.Open ;
Mydata.QrTerm.First ;
Mydata.TbRank.Open ;
Combobox1.items.clear;
while not Mydata.qrterm.eof do
begin
combobox1.Items.Add(Mydata.Qrtermterm.asstring);
Mydata.Qrterm.Next;
end;
end;

procedure TdlgMark.BitBtn1Click(Sender: TObject);
begin
Mydata.QrMark.close ;
Mydata.Qrmark.params[0].Value :=dblookupcombobox1.text;
Mydata.Qrmark.params[1].Value :=combobox1.text;
Mydata.QrMark.Open ;
qrpmarkdet.preview;
end;

procedure TdlgMark.SpeedButton1Click(Sender: TObject);
var
i,j:integer;
begin
Mydata.QrMark.close ;
Mydata.Qrmark.params[0].Value :=dblookupcombobox1.text;
Mydata.Qrmark.params[1].Value :=combobox1.text;
Mydata.QrMark.Open ;
Mydata.QrMark.First ;
i:=1;
while not mydata.tbRank.EOf do mydata.tbRank.delete;
j:=strtoint(inputbox('Rank Level','enter the max level of the Rank',''));
while not Mydata.QrMark.eof do
begin
Mydata.tbRank.insert;
Mydata.tbRankStudId.Value :=Mydata.QrMarkStudId.value;
Mydata.tbRankstudname.value:=Mydata.QrMarkname.value;
Mydata.TbRankClass.value:=Mydata.QrMarkClCode.Value ;
Mydata.TbRankTotmark.Value :=Mydata.QrMarkTotmark.Value ;
if i<=j then
begin
Mydata.tbRankrank.value:=i;
Mydata.TbRankRankstr.Value :=digit[i];
end;
i:=i+1;
Mydata.TbRank.Post ;
Mydata.Qrmark.next;
end;
end;
end.
