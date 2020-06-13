unit StudAttendU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls;

type
  TStudAttend = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StudAttend: TStudAttend;

implementation

uses MyDataU;

{$R *.DFM}

procedure TStudAttend.FormActivate(Sender: TObject);
begin
Mydata.TbStudAttend.Open ;
Mydata.TbStudAttenDet.Open ;
end;

end.
