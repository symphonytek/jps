unit userU;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Db, DBTables, ExtCtrls;
type
  Tuserfrm = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    btnLogin: TBitBtn;
    btnChangePass: TBitBtn;
    edtLogin: TEdit;
    edtPass: TEdit;
    edtPassConf: TEdit;
    btnApplyPass: TButton;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnCancel: TBitBtn;
    edtPassword: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnChangePassClick(Sender: TObject);
    procedure btnApplyPassClick(Sender: TObject);
    procedure edtPasswordEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  userfrm: Tuserfrm;
implementation
uses mainfrmu,myfuncu, MyDataU;
{$R *.DFM}

procedure Tuserfrm.Edit1Change(Sender: TObject);
begin
mydata.usertb1.locate('uid',edtLogin.text,[]);
edtLogin.text:=mydata.usertb1uname.Value;
end;

procedure Tuserfrm.btnLoginClick(Sender: TObject);
begin
//showmessage(encryptpass(usertbpasswd.value));
mydata.qryCustom.close;
mydata.qryCustom.SQL.Text:='select * from usertb where uid='''+edtLogin.Text+
''' and passwd=md5('''+edtPassword.Text+''')';
//if (mydata.Query1) then
mydata.qryCustom.Open;
if (mydata.qryCustom.RecordCount>0) then
begin
   if mydata.qryCustom.FieldValues['stat'] = 1 then
     begin
     mainfrm.administrativetools1.Enabled:=true;
     mainfrm.Transaction1.Enabled:=true;
     mainfrm.Sheetpreperation1.Enabled:=true;
     end
   else
     begin
     mainfrm.Sheetpreperation1.Enabled:=false;
     mainfrm.administrativetools1.Enabled:=false;
     mainfrm.Transaction1.Enabled:=false;
     end;
   mainfrm.tag:=mydata.qryCustom.FieldValues['uno'];
   mainfrm.Statusbar1.panels[1].Text:=mydata.qryCustom.FieldValues['uid'];
   hide;
   mainfrm.show;
end
else
  raise exception.create('Invalid User...Try again');
end;

procedure Tuserfrm.FormActivate(Sender: TObject);
begin
mydata.usertb1.open;
clientheight:=138; btnChangePass.hint:='Change Password';
end;

procedure Tuserfrm.btnCancelClick(Sender: TObject);
begin
close;
end;

procedure Tuserfrm.btnChangePassClick(Sender: TObject);
begin
//showmessage(encryptpass(usertbpasswd.value));
mydata.qryCustom.close;
mydata.qryCustom.SQL.Text:='select * from usertb where uid='''+edtLogin.Text+
''' and passwd=md5('''+edtPassword.Text+''')';
//if (mydata.Query1) then
mydata.qryCustom.Open;
if (mydata.qryCustom.RecordCount>0) then
begin
  if clientheight=138
  then
        begin
        clientHeight:=271;btnChangePass.hint:='Login Form';end
  else
        begin
        clientheight:=138; btnChangePass.hint:='Change Password';
  end;
end
else
   raise exception.create('Invalid current password...Can''t change it.');
end;

procedure Tuserfrm.btnApplyPassClick(Sender: TObject);
begin
if edtPass.text = edtPassConf.text then
begin
mydata.qryCustom.close;
mydata.qryCustom.SQL.Text:='update usertb set passwd=md5('''+
edtPass.Text+''') where uid='''+edtLogin.Text+'''';
mydata.qryCustom.Execute;
if (mydata.qryCustom.RowsAffected>0) then
begin
{  mydata.usertb1.Edit;
  //showmessage(encryptpass(edit5.text));
  mydata.usertb1passwd.Value := encryptpass(edtPass.text);
  mydata.usertb1.post;}
  edtPassword.text:=edtPass.text;
  showmessage('Password successfully changed.');
  {label4.Visible :=false;
  label5.visible:=false;
  edit4.visible:=false;
  edit5.visible:=false;
  bevel1.Visible:=false;
  button1.Visible :=false;}
  clientheight:=138; btnChangePass.hint:='Change Password';
  end
  end
else
begin
   edtPass.text:='';
   edtPassConf.text:='';
   raise exception.create('Passwords are not matching...Type again.');
end;
end;
procedure Tuserfrm.edtPasswordEnter(Sender: TObject);
begin
edtLogin.selectall;
end;
end.
