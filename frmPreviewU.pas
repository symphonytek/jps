unit frmPreviewU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPreview = class(TForm)
    btnPrint: TBitBtn;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreview: TfrmPreview;

implementation

uses genperfU;

{$R *.dfm}

procedure TfrmPreview.btnPrintClick(Sender: TObject);
var lncnt1,lncnt2,i:integer;
begin
try
lncnt2:=0;
genperf.Memo3.Width:=memo1.Width;
memo2.Width:=memo1.Width;
memo2.Lines.Clear;
for lncnt1:=0 to memo1.Lines.Count-1 do
begin
 memo2.Lines.Add(memo1.Lines[lncnt1]);
{ inc(lncnt2);if pos(chr(18),memo2.Lines[0])>0 then inc(lncnt2);
 if lncnt2=(strtoint(genperf.Edit3.Text)-
                      (strtoint(genperf.edit4.Text)*2)) then
 begin //  showmessage(inttostr(lncnt2));
 lncnt2:=0;
 for i:=0 to genperf.Memo3.Lines.Count-1 do
 begin
 inc(lncnt2);if pos(chr(18),memo2.Lines[0])>0 then inc(lncnt2);
  memo2.Lines.Add((genperf.Memo3.Lines[i]));
 end;
 end;}
end;
  if Memo1.GetTextLen>1 then
  begin
//  memo2.Visible:=true;
  memo2.Lines.SaveToFile('PRN');
  end
  else
  showmessage('Nothing to print');
except
  ShowMessage('Printer not responding');
end;
//  memo2.Visible:=False
end;

end.
