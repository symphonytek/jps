unit qrpmarkentrysheetU;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TQrpMarkEntrySheet = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr2: TQRExpr;
    QRBand1: TQRBand;
    QRDBText6: TQRDBText;
  private

  public

  end;

var
  QrpMarkEntrySheet: TQrpMarkEntrySheet;

implementation

uses MyDataU, frmmarkdetU, MainFrmU, AboutU;

{$R *.DFM}

end.
