unit frmexmmastU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ExtCtrls;

type
  TfrmExmmast = class(TForm)
    Label15: TLabel;
    DBNavigator1: TDBNavigator;
    btnSave: TBitBtn;
    btnNew: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExmmast: TfrmExmmast;

implementation

uses exmdataU;

{$R *.dfm}

procedure TfrmExmmast.FormActivate(Sender: TObject);
begin
exmdata.exmmast.open;
exmdata.excldet.open;
end;

procedure TfrmExmmast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
exmdata.exmMast.close;
exmdata.excldet.close;
end;

end.
