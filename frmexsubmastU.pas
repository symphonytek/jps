unit frmexsubmastU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ExtCtrls;

type
  TfrmExsubmast = class(TForm)
    Label15: TLabel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExsubmast: TfrmExsubmast;

implementation

uses exmdataU;

{$R *.dfm}

procedure TfrmExsubmast.FormActivate(Sender: TObject);
begin
exmdata.CLMast.open;
exmdata.exsubgroup.Open;
exmdata.exsubmast.Open;
//dbgrid1.Columns[1].PickList.LoadFromFile('.\subgroup.txt');
end;

procedure TfrmExsubmast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
exmdata.CLMast.close;
exmdata.exsubgroup.close;
exmdata.exsubmast.close;
end;

end.
