unit QrpHouseu;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TQrpHouse = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRGroup1: TQRGroup;
    DetailBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRExpr2: TQRExpr;
  private

  public

  end;

var
  QrpHouse: TQrpHouse;

implementation

uses MyDataU;

{$R *.DFM}

end.
