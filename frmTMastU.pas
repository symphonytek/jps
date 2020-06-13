unit frmTMastU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, Mask;

type
  TfrmTMast = class(TForm)
    Label15: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    btnSave: TBitBtn;
    btnNew: TBitBtn;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    chkTchnme: TCheckBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure chkTchnmeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTMast: TfrmTMast;

implementation

uses MyDataU;

{$R *.dfm}

procedure TfrmTMast.FormActivate(Sender: TObject);
begin
with mydata do
begin
tbTeacher.Open;
tbSubDet.Open;
tbClassDet.Open;
end;

end;

procedure TfrmTMast.FormCreate(Sender: TObject);
begin
with mydata do
begin
tbTeacher.close;
tbSubDet.close;
tbClassDet.close;
end;
end;

procedure TfrmTMast.btnNewClick(Sender: TObject);
begin
mydata.tbTeacher.Insert;
end;

procedure TfrmTMast.btnSaveClick(Sender: TObject);
begin
mydata.tbTeacher.Post;
end;

procedure TfrmTMast.chkTchnmeClick(Sender: TObject);
begin
{if chktchnme.Checked then
mydata.tbTeacher.IndexName:='tchind'
else
mydata.tbTeacher.IndexName:='';}
end;

end.
