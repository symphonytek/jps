unit frmStfApplnU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ComCtrls, ExtCtrls, Grids, DBGrids,
  Buttons;

type
  TfrmStfAppln = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    DBImage1: TDBImage;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label16: TLabel;
    DBMemo3: TDBMemo;
    Label17: TLabel;
    DBMemo4: TDBMemo;
    Label18: TLabel;
    Label19: TLabel;
    TabSheet4: TTabSheet;
    Label20: TLabel;
    DBMemo5: TDBMemo;
    TabSheet5: TTabSheet;
    Label49: TLabel;
    DBGrid8: TDBGrid;
    Label51: TLabel;
    Label52: TLabel;
    Label50: TLabel;
    DBEdit26: TDBEdit;
    btnSave: TBitBtn;
    btnNew: TBitBtn;
    Bevel4: TBevel;
    Label22: TLabel;
    DBEdit7: TDBEdit;
    Label23: TLabel;
    DBEdit8: TDBEdit;
    Label24: TLabel;
    DBEdit13: TDBEdit;
    Label25: TLabel;
    DBEdit14: TDBEdit;
    Label27: TLabel;
    DBMemo6: TDBMemo;
    Label28: TLabel;
    DBEdit16: TDBEdit;
    DBEdit23: TDBEdit;
    Label35: TLabel;
    DBEdit21: TDBEdit;
    Label33: TLabel;
    DBEdit19: TDBEdit;
    Label30: TLabel;
    DBEdit17: TDBEdit;
    Label29: TLabel;
    Label37: TLabel;
    Label34: TLabel;
    DBEdit22: TDBEdit;
    Label36: TLabel;
    DBEdit24: TDBEdit;
    DBMemo7: TDBMemo;
    Label32: TLabel;
    DBComboBox3: TDBComboBox;
    Label31: TLabel;
    Label26: TLabel;
    DBEdit15: TDBEdit;
    DBGrid4: TDBGrid;
    Label53: TLabel;
    Label21: TLabel;
    Bevel5: TBevel;
    Label38: TLabel;
    DBGrid5: TDBGrid;
    Label39: TLabel;
    DBGrid6: TDBGrid;
    Label46: TLabel;
    DBGrid7: TDBGrid;
    DBMemo10: TDBMemo;
    Label44: TLabel;
    DBMemo9: TDBMemo;
    Label43: TLabel;
    DBComboBox5: TDBComboBox;
    Label42: TLabel;
    DBMemo8: TDBMemo;
    Label41: TLabel;
    DBComboBox4: TDBComboBox;
    Label40: TLabel;
    Label45: TLabel;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBMemo2: TDBMemo;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBText1: TDBText;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit18: TDBEdit;
    btnPrevCont: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure btnPrevContClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStfAppln: TfrmStfAppln;

implementation

uses MyDataU, db, frmXeroxU;

{$R *.dfm}

procedure TfrmStfAppln.FormActivate(Sender: TObject);
begin
 MyData.actlstds:=MyData.StfApplnT;
 MyData.StfApplnT.Open;
 MyData.AcdT.Open;
 MyData.ProT.Open;
 MyData.Lang1T.Open;
 MyData.Lang2T.Open;
 MyData.WorkExT.Open;
 MyData.RefsT.Open;
 MyData.BooksT.Open;
 MyData.SemCorT.Open;
 pagecontrol1.ActivePage:=tabsheet1;
 dbedit1.SetFocus;
end;

procedure TfrmStfAppln.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 MyData.StfApplnT.Close;
 MyData.AcdT.Close;
 MyData.ProT.Close;
 MyData.Lang1T.Close;
 MyData.Lang2T.Close;
 MyData.WorkExT.Close;
 MyData.RefsT.Close;
 MyData.BooksT.Close;
 MyData.SemCorT.Close;
 MyData.actlstds:=MyData.dummyT;
end;

procedure TfrmStfAppln.PageControl1Change(Sender: TObject);
begin
{with pagecontrol1 do
begin
if ActivePage=tabsheet1 then
begin
dbedit1.SetFocus;
dbnavigator1.DataSource:=MyData.dsStfAppln;
end
else if ActivePage=tabsheet2 then
begin
dbgrid1.SetFocus;
dbnavigator1.DataSource:=dbgrid1.DataSource;
end
else if ActivePage=tabsheet3 then
begin
dbgrid3.SetFocus;
dbnavigator1.DataSource:=dbgrid3.DataSource;
end
else if ActivePage=tabsheet4 then
begin
dbgrid4.SetFocus;
dbnavigator1.DataSource:=dbgrid4.DataSource;
end
else if ActivePage=tabsheet5 then
begin
dbgrid5.SetFocus;
dbnavigator1.DataSource:=dbgrid5.DataSource;
end;
end;}
end;

procedure TfrmStfAppln.btnPrevContClick(Sender: TObject);
begin
if DBEdit18.Text<>'' then
begin
 frmXerox.Image1.Picture.LoadFromFile(DBEdit18.Text);
 frmXerox.ShowModal;
end
else
 showmessage('Invalid file name');
end;

end.
