unit frmRep1Dlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Db, Grids, DBGrids, ComCtrls;

type
  TfrmRep1 = class(TForm)
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    btnPreview: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRep1: TfrmRep1;

implementation

uses MyDataU, qrpRep1U;

{$R *.DFM}

procedure TfrmRep1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.qryTRMAST.close;
end;

procedure TfrmRep1.BitBtn1Click(Sender: TObject);
begin
mydata.qryTRMast.filtered:=False;
if not (combobox1.text='') then
begin
mydata.qryTRMast.filter:='DESC='+#39+combobox1.text+#39;
mydata.qryTRMast.filtered:=true;
end;
mydata.qryTRMAST.Active:=false;
mydata.qryTRMAST.Params[0].Value:=DTP1.date;
mydata.qryTRMAST.Params[1].Value:=DTP2.date;
mydata.qryTRMAST.active:=true;
end;

procedure TfrmRep1.btnPreviewClick(Sender: TObject);
begin
//qrpReport.DataSet:=regdata.qryReport;
//qrpReport.QRExpr1.Expression:='sum(qryReport.sm)';
mydata.qryTRMAST.Params[0].Value:=DTP1.Date;
mydata.qryTRMAST.Params[1].Value:=DTP2.Date;
mydata.qryTRMAST.active:=True;
qrpRep1.QRLabel12.caption:=qrpRep1.QRLabel12.caption+' ('+datetostr(dtp1.date);
if dtp2.date<>dtp1.date then
qrpRep1.QRLabel12.caption:=qrpRep1.QRLabel12.caption+' to '+datetostr(dtp2.date);
qrpRep1.QRLabel12.caption:=qrpRep1.QRLabel12.caption+')';
{qrpReport.qrlabel3.caption:='Transaction Wise Report ';
qrpReport.qrlabel4.caption:=datetostr(dtp1.date)+'  TO   '+datetostr(dtp2.date);
qrpReport.qrLabel2.caption:='Transaction Type'+repchar(' ',50)+'Total';
qrpReport.QRDBText1.DataSet:=regdata.qryReport;
qrpReport.QRDBText1.DataField:=regdata.qryReport.FieldDefs[0].Name;
qrpReport.QRDBText2.DataSet:=regdata.qryReport;
qrpReport.QRDBText2.DataField:=regdata.qryReport.FieldDefs[1].Name;}
qrpRep1.preview;
mydata.qryTRMAST.active:=False;
end;

end.
