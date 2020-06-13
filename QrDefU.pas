unit QrDefU;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TQrDefNotice = class(TQuickRep)
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
  private

  public

  end;

var
  QrDefNotice: TQrDefNotice;

implementation

uses MyDataU;

{$R *.DFM}

end.
