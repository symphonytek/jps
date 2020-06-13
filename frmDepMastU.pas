unit frmDepMastU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TfrmDepMast = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    btnSave: TBitBtn;
    btnNew: TBitBtn;
    Label15: TLabel;
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
  frmDepMast: TfrmDepMast;

implementation

uses MyDataU;

{$R *.DFM}

procedure TfrmDepMast.btnNewClick(Sender: TObject);
begin
Mydata.DepMast.insert;
end;

procedure TfrmDepMast.btnSaveClick(Sender: TObject);
begin
Mydata.DepMast.Post;
end;

procedure TfrmDepMast.FormActivate(Sender: TObject);
begin
MyData.DepMast.open;
end;

procedure TfrmDepMast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MyData.DepMast.close;
end;

end.
