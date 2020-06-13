unit frmFeeCollU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Grids, DBGrids, ExtCtrls, DBActns, ActnList,
  Menus, Buttons;

type
  TfrmFeeColl = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBGrid1: TDBGrid;
    DBText2: TDBText;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBNavigator1: TDBNavigator;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetFirst1: TDataSetFirst;
    DataSetInsert1: TDataSetInsert;
    DataSetLast1: TDataSetLast;
    DataSetNext1: TDataSetNext;
    DataSetPost1: TDataSetPost;
    DataSetPrior1: TDataSetPrior;
    DataSetRefresh1: TDataSetRefresh;
    Insert1: TMenuItem;
    Delete1: TMenuItem;
    Post1: TMenuItem;
    Refresh1: TMenuItem;
    btnSave: TBitBtn;
    btnNew: TBitBtn;
    btnPreview: TBitBtn;
    btnPrint: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFeeColl: TfrmFeeColl;

implementation

uses MyDataU,DB;

{$R *.DFM}

procedure TfrmFeeColl.FormActivate(Sender: TObject);
begin
//mydata.TRMast.open;
//mydata.trdet.Open;
mydata.StudMast.open;
end;

procedure TfrmFeeColl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//mydata.TRMast.close;
//mydata.trdet.close;
mydata.StudMast.close;
end;

procedure TfrmFeeColl.btnNewClick(Sender: TObject);
begin
//if not (myData.trmast.state in [dsInsert]) then
//myData.trmast.insert else showmessage('Save the Record first');;
end;

procedure TfrmFeeColl.btnSaveClick(Sender: TObject);
begin
//myData.trmast.edit;
//myData.trmast.Post;
end;

end.
