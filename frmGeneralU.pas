unit frmGeneralU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TfrmGeneral = class(TForm)
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
  frmGeneral: TfrmGeneral;

implementation

uses MyDataU;

{$R *.DFM}

procedure TfrmGeneral.DBGrid1Enter(Sender: TObject);
begin
//dbnavigator1.DataSource:=dbgrid1.DataSource;
end;

procedure TfrmGeneral.DBGrid2Enter(Sender: TObject);
begin
dbnavigator1.DataSource:=dbgrid2.DataSource;
end;

procedure TfrmGeneral.FormActivate(Sender: TObject);
begin
mydata.tbClMast.Filter:='ClCode<>0';
mydata.tbClMast.Filtered:=True;
mydata.tbClMast.Open;
mydata.tbTeacher.open;
end;

procedure TfrmGeneral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.tbClMast.close;mydata.tbClMast.Filtered:=False;
mydata.tbTeacher.close;
end;

end.
