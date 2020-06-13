unit frmSearchU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Menus;

type
  TfrmSearch = class(TForm)
    Label5: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox2: TComboBox;
    PopupMenu1: TPopupMenu;
    Sort1: TMenuItem;
    Exit1: TMenuItem;
    Label4: TLabel;
    Label6: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Sort1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearch: TfrmSearch;
  orgsql,msql,osql:string;

implementation

uses exmdataU;

{$R *.DFM}

procedure TfrmSearch.BitBtn2Click(Sender: TObject);
var t:string;
begin //showmessage(exmdata.qrySrch.Sql.text);
exmdata.qrySrch.close;
msql:=orgsql;
if not (combobox1.text='') then
if combobox2.text='Like' then
t:=' Where UPPER(CAST('+combobox1.text+' AS CHAR(30))) LIKE ''%'+
     UpperCase(edit1.text)+'%'''
else
t:=' Where '+combobox1.text+' '+combobox2.text+' '+''''+edit1.text+''''
else
t:='';
t:=orgsql+t;
exmdata.qrySrch.Sql.text:=t;  //showmessage(exmdata.qrySrch.Sql.text);
try
exmdata.qrySrch.Open;        //dbgrid1.Columns[5].Visible:=False;
label6.Caption:=inttostr(exmdata.qrySrch.RecordCount);
msql:=t;
except                      //raise exception.create('Invalid expression');
on E: Exception do showmessage(E.Message+#13#10+'Invalid Expression');
end;
end;

procedure TfrmSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
exmdata.qrySrch.Sql.text:=orgsql;
exmdata.qrySrch.close;
end;

procedure TfrmSearch.FormCreate(Sender: TObject);
begin
exmdata.qrySrch.GetFieldNames(combobox1.Items);
orgsql:=exmdata.qrySrch.SQL.text;
end;

procedure TfrmSearch.Sort1Click(Sender: TObject);
begin
osql:=' Order BY '+dbgrid1.selectedfield.FieldName;
exmdata.qrySrch.close;
exmdata.qrySrch.Sql.text:=msql+osql;
exmdata.qrySrch.open;
end;

procedure TfrmSearch.DBGrid1DblClick(Sender: TObject);
begin
 exmdata.sheet.Locate('sheetId',dbgrid1.Fields[0].Value,[]); close;
end;

end.
