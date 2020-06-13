unit frmAbsenteesU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls;

type
  TfrmAbsentees = class(TForm)
    DBGrid1: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    DBNavigator1: TDBNavigator;
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbsentees: TfrmAbsentees;

implementation

uses MyDataU;

{$R *.DFM}

procedure TfrmAbsentees.DBGrid1ColEnter(Sender: TObject);
begin
if dbgrid1.Columns[dbgrid1.SelectedIndex].Field =Mydata.TbAbsenteesAbsent then
dbcheckbox1.Visible :=true
else
dbcheckbox1.Visible :=false;
end;

procedure TfrmAbsentees.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if dbcheckbox1.Visible and (Ord(key)>31) then
begin
key:=#0;
Mydata.TbAbsentees.Edit ;
dbcheckbox1.Checked :=not dbcheckbox1.Checked ;
dbcheckbox1.Field.AsBoolean :=dbcheckbox1.Checked ;
end;
end;
procedure TfrmAbsentees.FormActivate(Sender: TObject);
begin
Mydata.TbAbsentees.open;
end;

procedure TfrmAbsentees.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Mydata.TbAbsentees.Close ;
end;

procedure TfrmAbsentees.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (gdFocused in State) and
    (Column.Field = Mydata.TbAbsenteesabsent) then
begin
DbCheckbox1.SetBounds (Rect.left + DbGrid1.left +1,Rect.Top+Dbgrid1.Top +1,Rect.Right - Rect.Left ,Rect.Bottom - Rect.Top );
end;
end;       
end.
