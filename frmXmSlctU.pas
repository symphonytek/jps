unit frmXmSlctU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, dbcgrids, ExtCtrls;

type
  TfrmXmSlct = class(TForm)
    Bevel1: TBevel;
    Label4: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBCheckBox1: TDBCheckBox;
    Label2: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure DBCtrlGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmXmSlct: TfrmXmSlct;

implementation

uses exmdataU, frmRptCrdU, Db;

{$R *.dfm}

procedure TfrmXmSlct.DBCtrlGrid1DblClick(Sender: TObject);
var
  bMk1: TBookMark;
begin
 bMk1:=exmdata.exmMast.GetBookmark;
 exmdata.exmmast.Filtered:=not exmdata.exmmast.Filtered;
 exmdata.exmMast.GotoBookmark(bMk1);
end;

procedure TfrmXmSlct.BitBtn1Click(Sender: TObject);
begin
frmRptCrd.RdGp2.ItemIndex:=0; frmRptCrd.RdGp2.Value:='12';// close;
frmRptCrd.btnListClick(self); frmRptCrd.ShowModal;
end;

procedure TfrmXmSlct.FormActivate(Sender: TObject);
begin
exmdata.exmmast.Open;
end;

end.
