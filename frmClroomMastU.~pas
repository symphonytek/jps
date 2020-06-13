unit frmClroomMastU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TfrmClroomMast = class(TForm)
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label15: TLabel;
    chkclnme: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkclnmeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClroomMast: TfrmClroomMast;

implementation

uses MyDataU;

{$R *.DFM}

procedure TfrmClroomMast.FormActivate(Sender: TObject);
begin
mydata.tbClMast.Open;
//mydata.tbTeacher.open;
end;

procedure TfrmClroomMast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.tbClMast.close;
//mydata.tbTeacher.close;
end;

procedure TfrmClroomMast.chkclnmeClick(Sender: TObject);
begin
{if chkclnme.Checked then
mydata.tbClMast.IndexName:='clnmind'
else
mydata.tbClMast.IndexName:='';
}
end;

end.
