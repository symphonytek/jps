unit qrpCllistU;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, QRExport, QRPDFFilt;

type
  TqrpCLlist = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel7: TQRLabel;
    TitleBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel8: TQRLabel;
    QRCldesc: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRCSVFilter1: TQRCSVFilter;
  private

  public

  end;

var
  qrpCLlist: TqrpCLlist;

implementation

uses MyDataU;

{$R *.DFM}

end.
