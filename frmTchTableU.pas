unit frmTchTableU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfrmTchTable = class(TForm)
    edtTeacher: TLabeledEdit;
    Label15: TLabel;
    Label1: TLabel;
    btnGenerate: TBitBtn;
    Memo1: TMemo;
    btnPrint: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGenerateClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const dnm:array[1..7] of string=('Monday','Tuesday','Wednesday','Thrusday','Friday','Saturday','Sunday');

var
  frmTchTable: TfrmTchTable;

implementation

uses MyDataU, myfuncU,DB;

{$R *.dfm}

procedure TfrmTchTable.FormActivate(Sender: TObject);
begin
mydata.tbttable2.open;
end;

procedure TfrmTchTable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
mydata.tbttable2.close;
end;

procedure TfrmTchTable.btnGenerateClick(Sender: TObject);
const noch=15;
var i,j,nod,nop:integer;
cstr,sstr,cldesc,subj:string;
begin
nod:=mydata.mfile.ReadInteger('General','No of days',6);
nop:=mydata.mfile.ReadInteger('General','No of Periods',6);
mydata.tbttable2.Filter:='Teacher='+edtTeacher.Text;
mydata.tbttable2.Filtered:=true;
Label1.Caption:=mydata.tbttable2tchName.Value;
Memo1.Lines.clear;
Memo1.Lines.add('');
Memo1.Lines.add('Time Table for '+Label1.Caption);
Memo1.Lines.add('');
Memo1.Lines.add('');
Memo1.Lines.Add(repchar('-',noch*(nop+1)));
cstr:=repchar(' ',noch);
for i:=1 to nop do
cstr:=cstr+padl('Period '+inttostr(i),noch);
memo1.Lines.add(cstr);
Memo1.Lines.Add(repchar('-',noch*(nop+1)));
for i:=1 to nod do
        begin
        cstr:=repchar(' ',noch);sstr:=repchar(' ',noch);
        for j:=1 to nop do
                with mydata do begin
                cldesc:=repchar(' ',noch);subj:=repchar(' ',noch);
                if tbttable2.Locate('Day;Period',vararrayof([i,j]),[loPartialKey])
                then
                        begin
                        cldesc:=padl(tbttable2cldesc.Value,noch);
                        //subj:=padl(tbttable2Subject.Value,noch);
                         subj:=padl(tbttable2SubDesc.value,noch);
                        end;
                cstr:=cstr+cldesc;sstr:=sstr+subj;
                end;
        Memo1.Lines.Add(cstr);
        Memo1.Lines.add(padl(dnm[i],noch)+repchar('.',noch*nop));
        Memo1.Lines.add(sstr);
        Memo1.Lines.add(repchar('-',noch*(nop+1)));
        end;

end;

procedure TfrmTchTable.btnPrintClick(Sender: TObject);
begin
try
Memo1.Lines.SaveToFile('PRN');
except
ShowMessage('Printer not Responding');
end;
end;

end.
