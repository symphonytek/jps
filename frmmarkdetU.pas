unit frmmarkdetU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,DB;

type
  Tfrmmarkdet = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    cbxsubject: TComboBox;
    cbxclass: TComboBox;
    btngetlist: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    Label4: TLabel;
    Label6: TLabel;
    cbxexam: TComboBox;
    btnpreview: TBitBtn;
    Label7: TLabel;
    Edit1: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btngetlistClick(Sender: TObject);
    procedure cbxclassChange(Sender: TObject);
    procedure cbxsubjectChange(Sender: TObject);
    procedure btnpreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmarkdet: Tfrmmarkdet;

implementation

uses MainFrmU, MyDataU, QrpMarkEntryU, qrpmarkentrysheetU,
  frmtabulationsheetU;

{$R *.dfm}
//--------------------------------------------------------------------------------------
procedure Tfrmmarkdet.FormActivate(Sender: TObject);
begin
mydata.tbstudmarkdet.Open;
mydata.tbclsubdet.Open;
mydata.CLMast.Open;
mydata.StudMast.Open;
mydata.tbexammast.Open;
frmmarkdet.cbxclass.Items.Clear;
frmmarkdet.cbxclass.Text:='I';
while not mydata.CLMast.Eof do
  begin
  frmmarkdet.cbxclass.Items.Add(mydata.CLMastClcaption.AsString);
  mydata.CLMast.Next;
  end;
  cbxclassChange(self);
end;
//-------------------------------------------------------------------------------
procedure Tfrmmarkdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.tbstudmarkdet.Close;
mydata.tbclsubdet.Close;
mydata.CLMast.Close;
mydata.StudMast.Close;
mydata.tbexammast.Close;

end;
//--------------------------------------------------------------------------------------------------
procedure Tfrmmarkdet.btngetlistClick(Sender: TObject);
begin
mydata.tbstudmarkdet.Filtered:=false;
if mydata.CLMast.Locate('clcaption',cbxclass.Text,[]) then
  begin
  if mydata.tbclsubdet.Locate('subdesc',cbxsubject.Text,[])then
    begin
    mydata.tbstudmarkdet.Filtered:=false;
    mydata.tbstudmarkdet.Filter:='srlno='+''''+mydata.tbclsubdetSlno.AsString+'''';
    mydata.tbstudmarkdet.Filter:='cl='+''''+cbxclass.Text +'''';
    mydata.tbstudmarkdet.Filtered:=true;
    end;
  end;
end;
//--------------------------------------------------------------------------------------
procedure Tfrmmarkdet.cbxclassChange(Sender: TObject);
begin
frmmarkdet.cbxsubject.Items.Clear;
frmmarkdet.cbxexam.Items.Clear;
if mydata.CLMast.Locate('clcaption',cbxclass.Text,[]) then
  begin
  frmmarkdet.cbxsubject.Text:=mydata.tbclsubdetSubdesc.Value;
  frmmarkdet.cbxexam.Text:=mydata.tbexammastEname.Value;
  while not mydata.tbclsubdet.Eof do
    begin
    frmmarkdet.cbxsubject.Items.Add(mydata.tbclsubdetSubdesc.Value);
    mydata.tbclsubdet.Next;
    end;
  while not mydata.tbexammast.Eof do
    begin
    frmmarkdet.cbxexam.Items.Add(mydata.tbexammastEname.Value);
    mydata.tbexammast.Next;
    end;
  end;
end;

//------------------------------------------------------------------------------------
procedure Tfrmmarkdet.cbxsubjectChange(Sender: TObject);
begin
if mydata.CLMast.Locate('clcaption',cbxclass.Text,[]) then
  begin
  if mydata.tbclsubdet.Locate('subdesc',cbxsubject.Text,[])then
  DBText1.Caption:= mydata.tbclsubdetTotalmarks.AsString;
  end;
end;
//------------------------------------------------------------------
procedure Tfrmmarkdet.btnpreviewClick(Sender: TObject);
begin
QrpMarkEntrySheet.QRLabel1.Caption:='Mark Entry List of Class : '+frmmarkdet.cbxclass.Text;
QrpMarkEntrySheet.QRLabel9.Caption:=frmmarkdet.cbxsubject.Text;
QrpMarkEntrySheet.Preview;
end;

end.



