unit frmSheetU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ExtCtrls, DB;

type
  TfrmSheet = class(TForm)
    btnSave: TBitBtn;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    Label15: TLabel;
    btnPub: TSpeedButton;
    dbText3: TDBText;
    edtSheet: TEdit;
    edtPassword: TEdit;
    Label2: TLabel;
    btnGo: TBitBtn;
    dbtSheetid: TDBText;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    btnEntermarks: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnPubClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnGoClick(Sender: TObject);
    procedure btnEntermarksClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSheet: TfrmSheet;

implementation

uses exmdataU, frmRptCrdU, frmXmSlctU, frmSearchU;

{$R *.dfm}

procedure TfrmSheet.FormActivate(Sender: TObject);
begin
exmdata.sheetdet.IndexFieldNames:='SheetId;RlNo';
exmdata.exmmast.open;
exmdata.excldet.open;
//exmdata.excldet1.open;

exmdata.sheet.open;
exmdata.CLMast.open;
exmdata.exsubmast.open;
exmdata.exsubmast1.open;
exmdata.sheetdet.open;
exmdata.CLMast.Locate('clcode',exmdata.sheetClcode.value,[]);
end;

procedure TfrmSheet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
exmdata.sheet.close;
exmdata.sheetdet.close;
exmdata.CLMast.close;
exmdata.exsubmast.close;
exmdata.exsubmast1.close;
exmdata.exmMast.close;
exmdata.excldet.close;
exmdata.sheetdet.IndexFieldNames:='SheetId;StudId';
end;

procedure TfrmSheet.DBLookupComboBox2Click(Sender: TObject);
begin
exmdata.CLMast.Locate('clcode',exmdata.sheetClcode.value,[]);
end;

procedure TfrmSheet.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
//exmdata.exmmast.Locate('exmid',exmdata.sheetExmid.Value,[]);
exmdata.CLMast.Locate('clcode',exmdata.sheetClcode.value,[]);
//DBlookupComboBox4.text:='';
//exmdata.exsubmast.Locate('subjid',exmdata.sheetSubid.Value,[]);
//exmdata.excldet.Locate('exid',exmdata.sheetExmid.Value,[]);
end;

procedure TfrmSheet.DBGrid1DblClick(Sender: TObject);
begin
frmRptCrd.sntBy:='frmSht';frmRptCrd.clCdStr:=exmdata.sheetClCode.AsString;
frmRptCrd.studIdStr:=exmdata.sheetdetStudId.AsString;
frmRptCrd.kpTbOpn:=True; frmXmSlct.ShowModal; frmRptCrd.kpTbOpn:=False;
end;

procedure TfrmSheet.btnPubClick(Sender: TObject);
begin
 frmSearch.ShowModal;
end;

procedure TfrmSheet.btnNewClick(Sender: TObject);
Begin

//exmdata.sheet.Insert;
end;

procedure TfrmSheet.btnSaveClick(Sender: TObject);
begin
//exmdata.sheet.Post;
end;

procedure TfrmSheet.btnGoClick(Sender: TObject);
begin
dbgrid1.ReadOnly:=true;
edtPassword.Text:='';
if exmdata.sheet.Locate('sheetid',strtoint(edtSheet.Text),[]) then
  edtPassword.Enabled:=true
else
  begin
  showmessage('Invalid sheet id');
  edtPassword.Enabled:=false;
  end;
end;

procedure TfrmSheet.btnEntermarksClick(Sender: TObject);
begin
if (exmdata.sheetlocked.Value=0) then
  begin
  if edtPassword.Text=exmdata.sheetpasswd.Value then
    begin
    DBGrid1.ReadOnly:=false;
    DBEdit1.ReadOnly:=false;
    end
  else
    begin
    Showmessage('Incorrect passowrd for marks entry');
    DBGrid1.ReadOnly:=true;
    DBEdit1.ReadOnly:=true;
    end;
end
else showmessage('This sheet locked by administrator');
end;

end.
