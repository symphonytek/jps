unit frmCompanyU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCompany = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label15: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompany: TfrmCompany;

implementation

{$R *.dfm}

uses MyDataU;

procedure TfrmCompany.FormActivate(Sender: TObject);
begin
mydata.tbComp.Open;
end;

procedure TfrmCompany.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.tbComp.close;
end;

end.
