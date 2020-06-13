unit frmAdmitCardOthU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,frxCross, frxClass, frxDBSet,
  Vcl.DBCtrls;

type
  TfrmAdmitCardOth = class(TForm)
    dtpExdate: TDateTimePicker;
    Label1: TLabel;
    dtpExTime: TDateTimePicker;
    dtpReptime: TDateTimePicker;
    Label2: TLabel;
    Label6: TLabel;
    edtVenue: TEdit;
    Label3: TLabel;
    btnAdmitCard: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAdmitCardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdmitCardOth: TfrmAdmitCardOth;

implementation

{$R *.dfm}

uses MyDataU;

procedure TfrmAdmitCardOth.btnAdmitCardClick(Sender: TObject);
begin
mydata.frxReport1.LoadFromFile('frxAdmitCardOth.fr3',true);
(mydata.frxReport1.findobject('mmVenue') as TfrxMemoview).Text:='Venue :'+edtVenue.text;
(mydata.frxReport1.findobject('mmExdt') as TfrxMemoview).Text:=
'Examination Date : '+FormatDateTime('dd/mmm/yyyy',dtpExdate.Date)+'  Time :'+
 timetostr(dtpExTime.Time)+'            Reporting time :'+timetostr(dtpReptime.Time);

//if repnme='./feeheadstud.fr3' then
//     'Fee Heads For Groups';
mydata.adm_studmast.Filter:='clcode='+inttostr(DBLookupComboBox1.KeyValue);
mydata.adm_studmast.Filtered:=true;
mydata.frxreport1.ShowReport();
end;

procedure TfrmAdmitCardOth.FormActivate(Sender: TObject);
begin
dtpExdate.Date:=mydata.mfile.ReadDate('AdmitCard','ExamDate',date());
dtpExTime.Time:=mydata.mfile.ReadTime('AdmitCard','ExamTime',time());
dtpReptime.Time:=mydata.mfile.ReadTime('AdmitCard','RepTime',time());
mydata.ClMast.open;
mydata.adm_studmast.Open;
end;

procedure TfrmAdmitCardOth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.ClMast.close;
mydata.adm_studmast.Close;
mydata.mfile.WriteDate('AdmitCard','ExamDate',dtpExdate.Date);
mydata.mfile.WriteTime('AdmitCard','ExamTime',dtpExTime.Time);
mydata.mfile.WriteTime('AdmitCard','RepTime',dtpReptime.Time);
end;

end.
