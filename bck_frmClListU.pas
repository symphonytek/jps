unit frmClListU;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, DBCtrls;

type
  TfrmClList = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    ChBx: TCheckBox;
    RdGp: TRadioGroup;
    RdGp1: TRadioGroup;
    RdGp2: TRadioGroup;
    btnXlcllist: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKBtnClick(Sender: TObject);
    procedure RdGp2Click(Sender: TObject);
    procedure btnXlcllistClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClList: TfrmClList;

implementation

uses MyDataU, qrpCllistU, qrpCllist1U, frmPreviewU, genperfU, myfuncU,
  frmXlclasslistU;

{$R *.dfm}

procedure TfrmClList.btnXlcllistClick(Sender: TObject);
begin
mydata.sp_cllist.Params[0].Value:=DBLookupComboBox1.KeyValue;
mydata.sp_cllist.Params[1].Value:=ComboBox1.Text;
mydata.sp_cllist.Open;
frmXlclasslist.showmodal;
mydata.sp_cllist.close;
end;

procedure TfrmClList.FormActivate(Sender: TObject);
begin
mydata.StudMast.Open;
mydata.CLMast.Open;
ChBx.Checked:=False;
RdGp.ItemIndex:=0;
end;

procedure TfrmClList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.CLMast.close;
mydata.StudMast.close;
end;

procedure TfrmClList.OKBtnClick(Sender: TObject);
var rlno:real;
sl,lnspc,i:integer;
begin
sl:=0;
if rdgp1.ItemIndex=0 then
begin
 qrpCLlist.DetailBand1.Height:=16;
 qrpCLlist1.DetailBand1.Height:=16;
 lnspc:=12
end
else
begin
 qrpCLlist.DetailBand1.Height:=24;
 qrpCLlist1.DetailBand1.Height:=24;
 lnspc:=24;
end;                          {if DBlookupCombobox1.Text<>'' thenbeginmydata.qryCllist.Params[0].value:=mydata.ClMastClcode.value;mydata.qryCllist.Open;qrpCllist.preview;mydata.qryCllist.Close;end;}//showmessage(inttostr(mydata.CLMastClCode.Value));
if(combobox1.Text='')or(DBlookupCombobox1.Text='')then
begin
 if ChBx.Checked then
  raise Exception.Create('Can not Allocate Roll Nos. while'+#13+
                         ' Class or Section not specified.');
 if(combobox1.Text='')and(DBlookupCombobox1.Text='')then
  mydata.qryCllist.SQL[2]:='where Clcode>0 and Catcode<>0'
 else if(DBlookupCombobox1.Text='')then
 begin
  mydata.qryCllist.SQL[2]:='where Section=:sec and Clcode>0 and Catcode<>0';
  mydata.qryCllist.Params[0].Value :=combobox1.Text;
 end
 else if(combobox1.Text='')then
 begin
  mydata.qryCllist.SQL[2]:='where ClCode=:ccode and Catcode<>0';
  mydata.qryCllist.Params[0].Value :=mydata.ClMastClcode.value;
 end;
end
else
begin
mydata.qryCllist.SQL[2]:='where ClCode=:ccode and Section=:sec and Catcode<>0';
mydata.qryCllist.Params[0].Value :=mydata.ClMastClcode.value;
mydata.qryCllist.Params[1].Value :=combobox1.Text;
end;
mydata.qryCllist.SQL[3]:='ORDER BY Name';
mydata.qryCllist.Open;
if  ChBx.Checked then
begin
rlno:=1;
mydata.qryCllist.First;
while not mydata.qryCllist.Eof do
begin
if mydata.StudMast.Locate('AdmNo',mydata.qryCllistAdmNo.Value,[]) then
begin
mydata.StudMast.Edit;
mydata.StudMastRollNo.Value:=rlno;
mydata.StudMast.Post;
rlno:=rlno+1
end;// if locate
mydata.qryCllist.Next
end;// while
end;// end if  ChBx.Checked then
mydata.qryCllist.Close;
mydata.qryCllist.SQL[3]:='ORDER BY RollNo';
mydata.qryCllist.Open;
if RdGp2.ItemIndex=0 then
begin
if RdGp.ItemIndex=0 then
begin
frmPreview.Width:=704;
frmPreview.Memo1.Width:=680;
frmPreview.BitBtn1.Left:=588;
end
else
begin
frmPreview.Width:=500;
frmPreview.Memo1.Width:=476;
end;
frmPreview.Position:=poDesktopCenter;
with frmPreview.Memo1 do
        begin
        Clear;
        Lines.Add(#27#67+chr(strtoint(genperf.edit3.Text))+#27#78+
                  chr(strtoint(genperf.edit4.Text)*2)+chr(14)+
                  padc(genperf.edtOrgnm.text,32)+ #27#65+chr(lnspc));                             //        Lines.Add(#27#78#10);
//        Lines.Add(chr(14)+padc(genperf.edit1.text,32));    //        Lines.Add(#27#65+chr(lnspc)+#27#50);
        Lines.Add(chr(14)+padc(genperf.Memo1.text,32));    //        Lines.Add(#27#65+chr(lnspc)+#27#50);
        Lines.Add('Date :'+DateTOStr(date));               //        Lines.Add(#27#65+chr(lnspc)+#27#50);
        Lines.Add(padc('Class list for '+dblookupcombobox1.Text+' '+
                   combobox1.Text,32));                    //        Lines.Add(#27#65+chr(lnspc)+#27#50);
       if RdGp.ItemIndex=0 then
        begin
        Lines.Add('Adm   Roll     Student''s                         '+
                  'Father''s                Date of');
        Lines.Add('No     No        Name                              Name'+
                  '                   Birth');             //        Lines.Add(#27#65+chr(lnspc)+#27#50);
        Lines.Add(repchar('=',82));
        genperf.Memo3.ReadOnly:=False;
        genperf.Memo3.Clear;
        for i:=0 to Lines.Count-1 do
         genperf.Memo3.Lines.Add(Lines[i]);
        genperf.Memo3.ReadOnly:=true;
        mydata.qryCllist.First;
        while not mydata.qryCllist.Eof do
        begin
        inc(sl);
        Lines.Add(format('%6s %4d %-30s %-30s %-10s',
                        [mydata.qryCllistAdmNo.Value,
                         mydata.qryCllistRollNo.AsInteger,
                         mydata.qryCllistName.Value,
                         mydata.qryCllistFName.Value,
                         mydata.qryCllistDoB.AsString]));   //        Lines.Add(#27#65+chr(lnspc)+#27#50);
        mydata.qryCllist.Next;
        end;                                                        {mydata.qryCllist.Open;        mydata.qryCllist.Open;        mydata.qryCllist.Open;        mydata.qryCllist.Open;}
        Lines.Add(repchar('-',82));
        end
        else
        begin
        Lines.Add('Adm   Roll     Student''s                  Date of');
        Lines.Add('No     No        Name                      Birth');             //        Lines.Add(#27#65+chr(lnspc)+#27#50);
        Lines.Add(repchar('=',52));
        genperf.Memo3.ReadOnly:=False;
        genperf.Memo3.Clear;
        for i:=0 to Lines.Count-1 do
         genperf.Memo3.Lines.Add(Lines[i]);
        genperf.Memo3.ReadOnly:=true;
        mydata.qryCllist.First;
        while not mydata.qryCllist.Eof do
        begin
        inc(sl);
        Lines.Add(format('%6s %4d %-30s %-10s',
                        [mydata.qryCllistAdmNo.Value,
                         mydata.qryCllistRollNo.AsInteger,
                         mydata.qryCllistName.Value,
                         mydata.qryCllistDoB.AsString]));   //        Lines.Add(#27#65+chr(lnspc)+#27#50);
        mydata.qryCllist.Next;
        end;                                                        {mydata.qryCllist.Open;        mydata.qryCllist.Open;        mydata.qryCllist.Open;        mydata.qryCllist.Open;}
        Lines.Add(repchar('-',52));
        end;
        Lines.Add('Total number of students : '+inttostr(sl));
        end;
frmPreview.showmodal;
frmPreview.Memo1.Width:=476;
frmPreview.Width:=500;
frmPreview.BitBtn1.Left:=384;
frmPreview.Position:=poDesktopCenter;
end         //if RdGp2.ItemIndex=0 then
else
begin
if RdGp.ItemIndex=0 then
begin
qrpcllist.QRCldesc.Caption:='Class List of '+DBLookupComboBox1.Text+''+
                             ComboBox1.Text;
qrpcllist.Preview;
end
else
begin
qrpcllist1.QRCldesc.Caption:='Class List of '+DBLookupComboBox1.Text+''+
                             ComboBox1.Text;
qrpcllist1.Preview;
end;
end;         //else RdGp2.ItemIndex=0 then
mydata.qryCllist.Close;
end;

procedure TfrmClList.RdGp2Click(Sender: TObject);
begin
Rdgp1.Visible:=rdgp2.ItemIndex=0;
end;

end.
