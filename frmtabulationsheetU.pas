unit frmtabulationsheetU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons;

type
  Tfrmtabulation = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    btnmarksheet: TBitBtn;
    btnpreview: TBitBtn;
    Bevel1: TBevel;
    cbxclass: TComboBox;
    cbxstudid: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    Memo1: TMemo;
    DBText2: TDBText;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnmarksheetClick(Sender: TObject);
    procedure btnpreviewClick(Sender: TObject);
    procedure cbxclassChange(Sender: TObject);
    procedure cbxstudidChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtabulation: Tfrmtabulation;

implementation

uses MyDataU, MainFrmU, frmexamU, frmmarkdetU, frmpremarkprocessU, AboutU;

{$R *.dfm}

procedure Tfrmtabulation.FormActivate(Sender: TObject);
begin
mydata.tbstudmarkdet.Open;
mydata.tbclsubdet.Open;
mydata.CLMast.Open;
mydata.StudMast.Open;
mydata.tbexammast.Open;
frmtabulation.DBText1.Caption:='';
frmtabulation.DBText2.Caption:='';
frmtabulation.cbxclass.Items.Clear;
frmtabulation.cbxclass.Text:='I';
while not mydata.ClMast.Eof do
    begin
    frmtabulation.cbxclass.Items.Add(mydata.ClMastClCaption.AsString);
    mydata.ClMast.Next;
    end;
    cbxclassChange(Self);
end;

procedure Tfrmtabulation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
mydata.tbstudmarkdet.Close;
mydata.tbclsubdet.Close;
mydata.CLMast.Close;
mydata.StudMast.Close;
mydata.tbexammast.Close;
mydata.qtab.Filtered:=false;
end;

procedure Tfrmtabulation.btnmarksheetClick(Sender: TObject);
begin
mydata.qtab.Close;
mydata.qtab.Open;
end;

procedure Tfrmtabulation.btnpreviewClick(Sender: TObject);
begin
mydata.qtab.Filtered:=false;
Memo1.Lines.Add('filtering');
mydata.qtab.Filter:='clCaption='+''''+frmtabulation.cbxclass.Text+'''';
mydata.qtab.Filter:='StudID='+''''+frmtabulation.cbxstudid.Text+'''';
mydata.qtab.Filtered:=true;
Memo1.Lines.Add('filtered');
end;

procedure Tfrmtabulation.cbxclassChange(Sender: TObject);
begin
Memo1.Lines.Add('before locate');
frmtabulation.cbxstudid.Items.Clear;
if mydata.CLMast.Locate('clcaption',cbxclass.Text,[]) then
  begin
  if mydata.tbstudmarkdet.Locate('cl',cbxclass.Text,[])then
    begin
    Memo1.Lines.Add('located');
    while not mydata.tbstudmarkdet.Eof do
      begin
      Memo1.Lines.Add('inside while');
      frmtabulation.cbxstudid.Items.Add(mydata.tbstudmarkdetStudid.AsString);
      mydata.tbstudmarkdet.Next;
      end;
    end;
  end;
end;
procedure Tfrmtabulation.cbxstudidChange(Sender: TObject);
begin
if mydata.CLMast.Locate('ClCaption',cbxclass.Text,[]) then
  begin
  if mydata.tbstudmarkdet.Locate('studid',cbxstudid.Text,[])then
  frmtabulation.DBText1.Caption:=mydata.tbstudmarkdetName.Value;
  end;
end;

end.
