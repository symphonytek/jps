unit frmClTableU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls;

type
  TfrmClTable = class(TForm)
    Label15: TLabel;
    Label1: TLabel;
    btnGenerate: TBitBtn;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    btnPrint: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
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
  frmClTable: TfrmClTable;

implementation

uses MyDataU, myfuncU,DB;

{$R *.dfm}

procedure TfrmClTable.FormActivate(Sender: TObject);
begin
mydata.tbttable.open;
end;

procedure TfrmClTable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
mydata.tbttable.close;
end;

procedure TfrmClTable.btnGenerateClick(Sender: TObject);
const noch=15;
var i,j,nod,nop,clcd:integer;
cstr,sstr,cldesc,subj:string;
begin
clcd:=mydata.tbttableCCode.Value;cldesc:=mydata.tbttableCldesc.Value;
mydata.tbttable.Cancel;
nod:=mydata.mfile.ReadInteger('General','No of days',6);
nop:=mydata.mfile.ReadInteger('General','No of Periods',6);
mydata.tbttable.Filter:='CCode='+inttostr(clcd);
mydata.tbttable.Filtered:=true;               //Label1.Caption:=mydata.tbttableCldesc.Value;
Memo1.Lines.clear;
Memo1.Lines.add('');
Memo1.Lines.add('Time Table for '+cldesc);
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
                if tbttable.Locate('Day;Period',vararrayof([i,j]),[loPartialKey])
                then
                        begin
                        cldesc:=padl(tbttabletchAbname.Value,noch);
                        //subj:=padl(tbttableSubject.Value,noch);
                        subj:=padl(tbttableSubDesc.value,noch);
                        end;
                cstr:=cstr+cldesc;sstr:=sstr+subj;
                end;
        Memo1.Lines.Add(cstr);
        Memo1.Lines.add(padl(dnm[i],noch)+repchar('.',noch*nop));
        Memo1.Lines.add(sstr);
        Memo1.Lines.add(repchar('-',noch*(nop+1)));
        end;                                               

end;

procedure TfrmClTable.btnPrintClick(Sender: TObject);
begin
try
Memo1.Lines.SaveToFile('PRN');
except
ShowMessage('Printer not Responding');
end;
end;

end.
