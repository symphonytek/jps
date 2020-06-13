unit frmDefu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Buttons, ExtCtrls;

type
  TfrmDefnotice = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    memo1: TDBMemo;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDefnotice: TfrmDefnotice;

implementation

uses MyDataU;

{$R *.dfm}

procedure TfrmDefnotice.FormActivate(Sender: TObject);
begin
Mydata.tbstud_def.Open;
Mydata.StudMast.Open;
end;

procedure TfrmDefnotice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Mydata.tbstud_def.close;
Mydata.StudMast.close;
end;
end.
