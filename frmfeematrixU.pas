unit frmfeematrixU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids,
  Mask;

type
  Tfrmfeematrix = class(TForm)
    Label5: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    DBGrid2: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfeematrix: Tfrmfeematrix;

implementation

uses MyDataU;

{$R *.DFM}

procedure Tfrmfeematrix.FormActivate(Sender: TObject);
begin
//mydata.clmast1.open;
mydata.tbFeeProf.Open;
mydata.fee_prof_det.open;
mydata.tbfeematrix1.open;
end;

procedure Tfrmfeematrix.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//mydata.clmast1.close;
mydata.tbfeematrix1.close;
mydata.fee_prof_det.close;
mydata.tbFeeProf.close;
end;

end.
