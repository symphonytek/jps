unit frmBankMastU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TfrmBankMast = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label15: TLabel;
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBankMast: TfrmBankMast;

implementation

uses MyDataU;

{$R *.DFM}

procedure TfrmBankMast.DBGrid1Enter(Sender: TObject);
begin
dbnavigator1.DataSource:=dbgrid1.DataSource;
end;

procedure TfrmBankMast.DBGrid2Enter(Sender: TObject);
begin
dbnavigator1.DataSource:=dbgrid2.DataSource;
end;

procedure TfrmBankMast.FormActivate(Sender: TObject);
begin
mydata.tbBMast.Open;
mydata.tbBrMast.open;
end;

procedure TfrmBankMast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.tbBMast.close;
mydata.tbBrMast.close;
end;

end.
