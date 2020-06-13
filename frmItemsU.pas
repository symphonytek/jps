unit frmItemsU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DB;

type
  TfrmItems = class(TForm)
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
    procedure btnNewClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItems: TfrmItems;

implementation

uses MyDataU;

{$R *.DFM}

procedure TfrmItems.btnNewClick(Sender: TObject);
begin
mydata.tbItems.insert;
end;

procedure TfrmItems.btnSaveClick(Sender: TObject);
begin
mydata.tbItems.post;
end;

procedure TfrmItems.FormActivate(Sender: TObject);
begin
MyData.tbItems.open;
end;

procedure TfrmItems.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MyData.tbItems.close;
end;

end.
