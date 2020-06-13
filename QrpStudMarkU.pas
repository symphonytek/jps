unit QrpStudMarkU;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQrpStudMark = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    PageFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr2: TQRExpr;
  private

  public

  end;

var
  QrpStudMark: TQrpStudMark;

implementation

uses MyDataU;

{$R *.DFM}

end.
