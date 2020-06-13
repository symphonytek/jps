unit usermgrfrmU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,  Mask, Buttons, DBActns,
  ActnList, DBCtrls;

type
  Tusermgrfrm = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    ActionList1: TActionList;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    BitBtn1: TBitBtn;
    btnPassReset: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    edtPass: TEdit;
    edtConfPass: TEdit;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPassResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  usermgrfrm: Tusermgrfrm;

implementation

uses MyDataU,myfuncu;

{$R *.DFM}

procedure Tusermgrfrm.FormActivate(Sender: TObject);
begin
mydata.tbRoles.Open;
mydata.usertb1.open;
end;

procedure Tusermgrfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.usertb1.Close;
mydata.tbRoles.close;
end;

procedure Tusermgrfrm.btnPassResetClick(Sender: TObject);
begin
if (trim(edtPass.Text)='') or (edtPass.Text<>edtConfPass.Text) then
Showmessage('Password invalid/mismatch')
else
if  messagedlg('Want to change the password ?', mtconfirmation, [mbOK,mbcancel], 0)= mrok then
  begin
  mydata.qryCustom.close;
  mydata.qryCustom.SQL.Text:='update usertb set passwd=md5('''+
  edtPass.Text+''') where uid='''+dbedit1.Text+'''';
  mydata.qryCustom.Execute;
  if (mydata.qryCustom.RowsAffected>0) then
    showmessage('Password changed for '+dbedit1.Text);
  end;
end;

end.