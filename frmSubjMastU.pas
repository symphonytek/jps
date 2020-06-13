unit frmSubjMastU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmSubjMast = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubjMast: TfrmSubjMast;

implementation

uses MyDataU;

{$R *.dfm}

procedure TfrmSubjMast.FormActivate(Sender: TObject);
begin
Mydata.TbSubjMast.Open ;
end;

procedure TfrmSubjMast.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//Mydata.TbSubjMast.close;
end;

end.
