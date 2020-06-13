unit genperfU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons ,inifiles, Vcl.ComCtrls;

type
  Tgenperf = class(TForm)
    Label5: TLabel;
    Label1: TLabel;
    edtOrgnm: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnOk: TBitBtn;
    mmPageHeader: TMemo;
    mmPageFooter: TMemo;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    edtMnthTerm: TEdit;
    Label8: TLabel;
    edtsession: TEdit;
    Label9: TLabel;
    edtLinesPage: TEdit;
    Memo3: TMemo;
    Label10: TLabel;
    edtLineSkip: TEdit;
    Label6: TLabel;
    updFeeLastdt: TUpDown;
    edtFeeLastDt: TEdit;
    dtpAgeCutOff: TDateTimePicker;
    Label7: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  genperf: Tgenperf;
  mfile:Tinifile;

implementation
uses myfuncu;
{$R *.DFM}

procedure Tgenperf.btnOkClick(Sender: TObject);
begin
iniwrite('.\smsapp.ini','General','orgnm',edtOrgNm.text);
mmPageHeader.Lines.SaveToFile('.\smsHeader.txt');
mmPageFooter.Lines.SaveToFile('.\smsFooter.txt');
iniwrite('.\smsapp.ini','General','terms',edtMnthTerm.text);
iniwrite('.\smsapp.ini','PgSetUp','lines',edtLinesPage.text);
iniwrite('.\smsapp.ini','PgSetUp','skip',edtLineSkip.text);
iniwrite('.\smsapp.ini','Session','session',edtsession.text);
iniwrite('.\smsapp.ini','General','FeeLastDt',inttostr(updFeeLastdt.Position));
mfile.writeDate('General','cutoffdate',dtpAgeCutOff.Date);
end;

procedure Tgenperf.FormActivate(Sender: TObject);
begin
edtOrgNm.Text:=mfile.ReadString('General','orgnm','');
mmPageHeader.Lines.LoadFromFile('.\smsHeader.txt');
mmPageFooter.Lines.LoadFromFile('.\smsFooter.txt');
edtMnthTerm.text:=mfile.ReadString('General','terms','');
edtLinesPage.Text:=mfile.ReadString('PgSetUp','lines','70');
edtLineSkip.Text:=mfile.ReadString('PgSetUp','skip','3');
edtsession.Text:=mfile.ReadString('Session','session','');
updFeeLastdt.Position:=mfile.ReadInteger('General','FeeLastDt',25);
dtpAgeCutOff.Date:=mfile.ReadDate('General','cutoffdate',encodedate(2015,04,30));
//edtFeeLastDt.Text:=mfile.ReadString('General','FeeLastDt','25');
end;

procedure Tgenperf.FormCreate(Sender: TObject);
begin
mfile:=Tinifile.create('.\smsapp.ini');
FormActivate(self);
end;

procedure Tgenperf.FormDestroy(Sender: TObject);
begin
mfile.Free;
end;
end.
