unit frmSubGrpMastU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TfrmSubGrpMast = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    btnSave: TBitBtn;
    btnNew: TBitBtn;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubGrpMast: TfrmSubGrpMast;

implementation

uses exmDataU;

{$R *.DFM}

procedure TfrmSubGrpMast.btnNewClick(Sender: TObject);
begin
exmdata.exsubgroup.insert;
end;

procedure TfrmSubGrpMast.btnSaveClick(Sender: TObject);
begin
exmdata.exsubgroup.Post;
end;

procedure TfrmSubGrpMast.FormActivate(Sender: TObject);
begin
exmdata.exsubgroup.open;
end;

procedure TfrmSubGrpMast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
exmdata.exsubgroup.close;
end;

end.
