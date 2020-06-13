unit frmDsgMastU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TfrmDsgMast = class(TForm)
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
  frmDsgMast: TfrmDsgMast;

implementation

uses MyDataU;

{$R *.DFM}

procedure TfrmDsgMast.btnNewClick(Sender: TObject);
begin
Mydata.DsgMast.insert;
end;

procedure TfrmDsgMast.btnSaveClick(Sender: TObject);
begin
Mydata.DsgMast.Post;
end;

procedure TfrmDsgMast.FormActivate(Sender: TObject);
begin
MyData.DsgMast.open;
end;

procedure TfrmDsgMast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MyData.DsgMast.close;
end;

end.
