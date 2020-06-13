unit qrpRep1U;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TqrpRep1 = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRExpr1: TQRExpr;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
  private

  public

  end;

var
  qrpRep1: TqrpRep1;

implementation

uses MyDataU;

{$R *.DFM}

end.
