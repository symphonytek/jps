unit frmSubjU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, Mask;

type
  TfrmSubj = class(TForm)
    Label15: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    btnSave: TBitBtn;
    btnNew: TBitBtn;
    procedure btnSaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubj: TfrmSubj;

implementation

uses MyDataU;

{$R *.dfm}

procedure TfrmSubj.btnSaveClick(Sender: TObject);
begin
mydata.tbSubMast.post;
end;

procedure TfrmSubj.FormActivate(Sender: TObject);
begin
mydata.tbSubMast.Filter:='SID<>0';
mydata.tbSubMast.Filtered:=True;
mydata.tbSubMast.Open;
end;

procedure TfrmSubj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.tbSubMast.close;
mydata.tbSubMast.Filtered:=False;
end;

procedure TfrmSubj.btnNewClick(Sender: TObject);
begin
mydata.tbSubMast.insert;
end;

end.
