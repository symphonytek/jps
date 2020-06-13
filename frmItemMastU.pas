unit frmItemMastU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, Mask;

type
  TfrmItemMast = class(TForm)
    Label15: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItemMast: TfrmItemMast;

implementation

uses MyDataU;

{$R *.DFM}

procedure TfrmItemMast.FormActivate(Sender: TObject);
begin
mydata.tbAcMaster.open;
end;

procedure TfrmItemMast.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
mydata.tbAcMaster.close;
end;

end.
