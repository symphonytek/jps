unit frmAdmLocU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TfrmAdmLoc = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label15: TLabel;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdmLoc: TfrmAdmLoc;

implementation

uses
  MyDataU;

{$R *.dfm}

procedure TfrmAdmLoc.FormActivate(Sender: TObject);
begin
mydata.tbLoc.open;
end;

procedure TfrmAdmLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
mydata.tbLoc.close;
end;

end.
