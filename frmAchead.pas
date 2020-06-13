unit frmAchead;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, ComCtrls;

type
  Tfrm_achead = class(TForm)
    OKBtn: TButton;
    Bevel1: TBevel;
    Memo1: TMemo;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_achead: Tfrm_achead;

implementation
uses myfuncU, MyDataU;
{$R *.DFM}

procedure Tfrm_achead.SpeedButton1Click(Sender: TObject);
var
sum:real;
begin
memo1.Clear;
memo1.Lines.Add('    Account Head Wise Collection Report');
memo1.lines.add('        Between '+datetostr(datetimepicker1.Date)+' and '+datetostr(datetimepicker2.Date));
mydata.qryachead.close;
mydata.qryachead.Params[0].Value:=datetimepicker1.Date;
mydata.qryachead.Params[1].Value:=datetimepicker2.Date;
mydata.qryachead.open;
memo1.Lines.add('');
memo1.Lines.Add(' '+padl('Account Name',25)+padl('Total Amount',-20));
sum:=0;
while not mydata.qryachead.eof do
begin
  memo1.Lines.add(' '+padl(mydata.qryacheadac_name.value,25)+padl(mydata.qryacheadsum_amt.AsString,-20));
  sum:=sum+mydata.qryacheadsum_amt.Value ;
  mydata.qryachead.Next;
end;
memo1.lines.add('');
memo1.Lines.add(' '+padl('Total Collection',25)+padl(floattostr(sum),-20));
end;

procedure Tfrm_achead.SpeedButton2Click(Sender: TObject);
begin
try
  memo1.Lines.SaveToFile('PRN');
except
  raise exception.Create('Printer not ready...Try again');
end;
end;
end.
