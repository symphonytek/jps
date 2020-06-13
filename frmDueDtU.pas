unit frmDueDtU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmDueDt = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDueDt: TfrmDueDt;

implementation

{$R *.dfm}

uses MyDataU;

procedure TfrmDueDt.FormActivate(Sender: TObject);
begin
mydata.fees_duedt.Open;
end;

procedure TfrmDueDt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.fees_duedt.close;
end;

end.
