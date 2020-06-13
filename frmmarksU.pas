unit frmmarksU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, Buttons;

type
  Tfrmmarksobtained = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmarksobtained: Tfrmmarksobtained;

implementation

uses MyDataU, MainFrmU, qrpmarkentrysheetU;

{$R *.dfm}

procedure Tfrmmarksobtained.FormActivate(Sender: TObject);
begin
mydata.CLMast.Open;
mydata.tbclsubdet.Open;
end;

procedure Tfrmmarksobtained.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
mydata.CLMast.Close;
mydata.tbclsubdet.Close;
end;

end.
