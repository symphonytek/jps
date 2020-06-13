unit frmAdHocU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid;

type
  TfrmAdHoc = class(TForm)
    CRDBGrid1: TCRDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdHoc: TfrmAdHoc;

implementation

{$R *.dfm}

uses MyDataU;

procedure TfrmAdHoc.FormActivate(Sender: TObject);
begin
mydata.studmast.Open;
mydata.tbAcMaster.Open;
mydata.adhocfee.Open;
end;

procedure TfrmAdHoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.studmast.close;
mydata.tbAcMaster.close;
mydata.adhocfee.close;
end;

end.
