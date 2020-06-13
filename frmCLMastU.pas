unit frmCLMastU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TfrmCLMast = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dbedt2: TDBEdit;
    DBGrid1: TDBGrid;
    Label15: TLabel;
    DBNavigator1: TDBNavigator;
    btnSave: TBitBtn;
    btnNew: TBitBtn;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    btnCal: TBitBtn;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCLMast: TfrmCLMast;

implementation

uses MyDataU, exmdataU;

{$R *.DFM}

procedure TfrmCLMast.btnNewClick(Sender: TObject);
begin
MyData.CLMast1.insert;
end;

procedure TfrmCLMast.btnSaveClick(Sender: TObject);
begin
MyData.CLMast1.Post;
end;

procedure TfrmCLMast.FormActivate(Sender: TObject);
begin
MyData.CLMast1.open;
mydata.tbfeematrix1.open;
mydata.tbAcMaster.open;
end;

procedure TfrmCLMast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MyData.CLMast1.close;
mydata.tbfeematrix1.close;
mydata.tbAcMaster.close;
end;

procedure TfrmCLMast.btnCalClick(Sender: TObject);
var TMP:REAL;
begin
mydata.CLMast1.First;
with mydata do
  while not clmast1.Eof do
  begin
  tbfeematrix1.First;
    while not tbfeematrix1.Eof do
    begin
    tbAcMaster.First;
    if tbAcMaster.Locate('AC_NO',tbfeematrix1AC_NO.Value,[]) then
      begin
      if (tbAcMasterAC_MODE.Value ='T') and (tbAcMasterAC_Mandatory.Value =true) then tmp:=tmp+tbfeematrix1FEE.Value;
      end;
    tbfeematrix1.Next;
    end;
  clmast1.Edit;CLMast1Mfee.Value:=tmp;clmast1.Post;
  tmp:=0;
  clmast1.Next; 
  end;
end;
end.
