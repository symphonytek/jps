unit QrpStudMark;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQuickReport1 = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRGroup1: TQRGroup;
  private

  public

  end;

var
  QuickReport1: TQuickReport1;

implementation

{$R *.DFM}

end.
