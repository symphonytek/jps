unit dlgStudMarkU;
interface
uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, DBCtrls;
type
  TDlgStudMark = class(TForm)
    Bevel1: TBevel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgStudMark: TDlgStudMark;
implementation
uses MyDataU, QrpStudMarkU;

{$R *.DFM}

procedure TDlgStudMark.FormActivate(Sender: TObject);
begin
Mydata.StudMast.open;
Mydata.qrterm.Open ;
Mydata.QrTerm.First ;
Combobox1.items.clear;
while not Mydata.qrterm.eof do
begin
combobox1.Items.Add(Mydata.Qrtermterm.asstring);
Mydata.Qrterm.Next;
end;
end;

procedure TDlgStudMark.BitBtn1Click(Sender: TObject);
begin
Mydata.QrStudMk.close ;
Mydata.QrStudMk.params[0].Value :=dblookupcombobox1.text;
Mydata.QrStudMk.params[1].Value :=dblookupcombobox3.text;
Mydata.QrStudMk.params[2].Value :=combobox1.text;
Mydata.QrStudMk.Open;
qrpStudMark.preview;
end;
end.

