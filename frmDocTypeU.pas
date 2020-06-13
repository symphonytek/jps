unit frmDocTypeU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmDocType = class(TForm)
    DBGrid1: TDBGrid;
    Label6: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocType: TfrmDocType;

implementation

{$R *.dfm}

uses MyDataU;

procedure TfrmDocType.FormActivate(Sender: TObject);
begin
mydata.tbDoc_type.open;
end;

procedure TfrmDocType.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.tbDoc_type.close;
end;

end.
