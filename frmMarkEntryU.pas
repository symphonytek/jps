unit frmMarkEntryU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, Db;

type
  TfrmMarkEntry = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarkEntry: TfrmMarkEntry;

implementation

uses MyDataU, frmSubjMastU;

{$R *.dfm}

procedure TfrmMarkEntry.DBGrid1EditButtonClick(Sender: TObject);
begin
if frmsubjmast.showmodal=mrok then
begin
Mydata.tbmarkdet.edit;
//Mydata.tbmarkdetsubjcd.value:=Mydata.tbsubjMastsubjcode.value ;
Mydata.Tbmarkdet.Post ;
end;
end;

procedure TfrmMarkEntry.FormActivate(Sender: TObject);
begin
Mydata.tbmarkmast.Open ;
Mydata.Tbmarkdet.open;
Mydata.tbMarksubdet.Open;
Mydata.TbSubjMast.Open;
end;

procedure TfrmMarkEntry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Mydata.tbmarkmast.close;
Mydata.Tbmarkdet.close;
Mydata.TbSubjMast.close;

end;

procedure TfrmMarkEntry.BitBtn2Click(Sender: TObject);
var i,j,mk:integer;
begin
i:=1;
j:=strtoint(inputbox('Max subj','enter the num of subj',''));
Mydata.TbSubjMast.First;
while i<=j do
begin
Mydata.Tbmarksubdet.insert;
Mydata.tbMarksubdetterm.value:=Mydata.tbmarkdetterm.value;
Mydata.TbmarksubdetSubjcd.Value :=Mydata.TbSubjMastSubjcode.Value ;
mk:=strtoint(inputbox('Mark Entry','Pls enter the mark obtained in '+Mydata.TbMarksubdetSubjname.Value,''));
Mydata.tbMarksubdetMarkobt.Value :=mk;
Mydata.Tbmarkdet.Next ;
Mydata.TbSubjMast.Next;
i:=i+1;
end;
end;
procedure TfrmMarkEntry.DBLookupComboBox1Click(Sender: TObject);
begin
//Mydata.tbmarkmast.Edit;
//Mydata.tbmarkmastCl.Value :=Mydata.tbmarkmastClass.Value;
//Mydata.tbmarkmast.post;
end;

end.
