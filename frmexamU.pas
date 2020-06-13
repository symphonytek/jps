unit frmexamU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, Mask;

type
  Tfrmexam = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmexam: Tfrmexam;

implementation

uses MainFrmU, MyDataU;

{$R *.dfm}

procedure Tfrmexam.FormActivate(Sender: TObject);
begin
mydata.CLMast.Open;
mydata.tbexammast.Open;
end;

procedure Tfrmexam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.CLMast.Close;
mydata.tbexammast.Close;
end;

end.
