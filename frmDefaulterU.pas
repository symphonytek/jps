unit frmDefaulterU;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, dialogs;

type
  TfrmDefaulter = class(TForm)
    OKBtn: TButton;
    Bevel1: TBevel;
    Memo1: TMemo;
    Label15: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDefaulter: TfrmDefaulter;

implementation

uses mydataU, myfuncU, genperfU;

{$R *.DFM}

procedure TfrmDefaulter.SpeedButton1Click(Sender: TObject);
var
tot_term,count:integer;
year,month,Day: Word;
begin
DecodeDate(Date, Year, Month, Day);
tot_term := month div strtoint(genperf.edit2.text);
memo1.clear;
memo1.Lines.add('                    '+genperf.edit1.text);
memo1.Lines.add('                    Student Defaulter List');
memo1.Lines.add('                       as on '+datetostr(date));
memo1.lines.add('');
memo1.Lines.add(' '+padl('SlNo',5)+padl('Stud Id',7)+padl('Name',23)+padl('Class',6)+padl('Sec',4)+padl('No of Terms Paid',-17)+padl('No of Terms Due',-16));
memo1.lines.add(' '+repchar('-',78));
memo1.lines.add('');
mydata.StudMast.open;
count:=0;
while not mydata.StudMast.eof do
begin
  inc(count);
  if mydata.studmastnoterms.Value < tot_term then
    memo1.Lines.add(' '+padl(inttostr(count),-4)+' '+padl(mydata.StudMaststudid.AsString,7)+padl(copy(mydata.StudMastname.Value,1,22),25)+padl(mydata.StudMaststcldesc.asstring,6)+padl(mydata.StudMastsection.Value,4)+padl(mydata.StudMastnoterms.AsString,-17)+padl(inttostr(tot_term - mydata.StudMastnoterms.asinteger),-16));
  mydata.StudMast.Next;
end;
end;

procedure TfrmDefaulter.SpeedButton2Click(Sender: TObject);
begin
try
  memo1.Lines.SaveToFile('PRN');
except
   raise exception.Create('Printer not responding...Try again');
end;
end;

end.
