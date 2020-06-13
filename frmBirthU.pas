unit frmBirthU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls;

type
  TfrmBirth = class(TForm)
    Label15: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    btnPreview: TBitBtn;
    btnPrint: TBitBtn;
    RadioGroup1: TRadioGroup;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    procedure btnPreviewClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBirth: TfrmBirth;
  repname: string;

implementation

uses MyDataU, qrpBirthU,db, myfuncU;

{$R *.dfm}

procedure TfrmBirth.btnPreviewClick(Sender: TObject);
var bmark:Tbookmark;
begin
mydata.Birth.DisableControls;
bmark:=mydata.Birth.GetBookmark;
mydata.birth.Filter:='Slno='+dbedit1.text;
mydata.birth.Filtered:=true;
//qrpBirth.preview;
mydata.birth.Filtered:=false;
mydata.birth.GotoBookmark(bmark);
mydata.birth.EnableControls;
   mydata.frxmyrepo.LoadFromFile(repname, true);
   mydata.frxmyrepo.ShowReport();

end;

procedure TfrmBirth.FormActivate(Sender: TObject);
begin
mydata.birth.open;
repname:='frxbirth.fr3';
end;

procedure TfrmBirth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.birth.close;
end;

procedure TfrmBirth.RadioGroup1Click(Sender: TObject);
const month:array[1..12] of string=('January','February','March',
                                    'April','May','June',
                                    'July','August','Septemeber',
                                    'October','November','December');

var y,m,d:word;

begin
     case RadioGroup1.ItemIndex of
     0: begin
     repname:='frxbirth.fr3';
     end;
     1: begin
     repname:='frxcharc.fr3';
     end;
     end;


//mydata.StudMast.Locate('studid',mydata.birthAdmNo.Value,[]);
//qrpBirth.qrDate.Caption:='Date: '+mydata.birthIssueDte.AsString;
  {case radiogroup1.ItemIndex of
  0:begin
    qrpBirth.qrCertName.Caption:='Date of Birth Certificate';
    qrpBirth.qrLine1.Caption:='This is to Certify that the date of birth of';
    qrpBirth.qrLine2.Caption:='who is/ who was a bonafide student of this school is '
    +mydata.birthsDOB.asstring;
    decodedate(mydata.birthsDOB.Value,y,m,d);
    qrpBirth.qrlLine3.Caption:=' '+month[m]+' '+
    numtoword(y div 100,false)+numtoword(y mod 100,false)+')';
    qrpBirth.qrLine4.Caption:='as entered in the records of this school';

    end;
  2:begin
    qrpBirth.qrCertName.Caption:='Domicile Certificate';
    qrpBirth.qrLine1.Caption:='This is to certify that';
    qrpBirth.qrLine2.Caption:='daughter of '+mydata.birthsfName.value;
    qrpBirth.qrlLine3.Caption:='has been a bonafide student of this school, situated in';
    qrpBirth.qrLine4.Caption:='East Singhbhum District, Jharkhand State, from '+
    mydata.birthsDOA.AsString+' to '+mydata.birthIssuedte.AsString+'.';
    end;
  1:begin
    qrpBirth.qrCertName.Caption:='Character Certificate';
    qrpBirth.qrLine1.Caption:='This is to certify that';
    qrpBirth.qrLine2.Caption:='was a student of this school';
    qrpBirth.qrlLine3.Caption:='from '+mydata.birthSDOA.AsString+' to '+
    mydata.birthLastDte.AsString;
    qrpBirth.qrLine4.Caption:='and that she showed herself as a girl of good character.';
    end;
  end;   }

end;

end.
