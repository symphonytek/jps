unit QrpAbsentees;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQuickReport1 = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
  private

  public

  end;

var
  QuickReport1: TQuickReport1;

implementation

uses MyDataU;

{$R *.DFM}

end.
