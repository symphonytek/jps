object qrpCLlist1: TqrpCLlist1
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  DataSet = MyData.qryCllist
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE')
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = Letter
  Page.Continuous = False
  Page.Values = (
    127.000000000000000000
    2794.000000000000000000
    127.000000000000000000
    2159.000000000000000000
    127.000000000000000000
    127.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.OutputBin = Auto
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.UseStandardprinter = False
  PrinterSettings.UseCustomBinCode = False
  PrinterSettings.CustomBinCode = 0
  PrinterSettings.ExtendedDuplex = 0
  PrinterSettings.UseCustomPaperCode = False
  PrinterSettings.CustomPaperCode = 0
  PrinterSettings.PrintMetaFile = False
  PrinterSettings.PrintQuality = 0
  PrinterSettings.Collate = 0
  PrinterSettings.ColorOption = 0
  PrintIfEmpty = True
  SnapToGrid = True
  Units = Inches
  Zoom = 100
  PrevFormStyle = fsNormal
  PreviewInitialState = wsMaximized
  PrevInitialZoom = qrZoomToWidth
  PreviewDefaultSaveType = stQRP
  PreviewLeft = 0
  PreviewTop = 0
  object ColumnHeaderBand1: TQRBand
    Left = 48
    Top = 153
    Width = 720
    Height = 24
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      63.500000000000000000
      1905.000000000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbColumnHeader
    object QRLabel1: TQRLabel
      Left = 309
      Top = 0
      Width = 63
      Height = 17
      Size.Values = (
        44.979166666666670000
        817.562500000000000000
        0.000000000000000000
        166.687500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Admn No.'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 1
      Top = 0
      Width = 51
      Height = 17
      Size.Values = (
        44.979166666666670000
        2.645833333333333000
        0.000000000000000000
        134.937500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Roll No.'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 73
      Top = 0
      Width = 38
      Height = 17
      Size.Values = (
        44.979166666666670000
        193.145833333333300000
        0.000000000000000000
        100.541666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Name'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 384
      Top = 0
      Width = 48
      Height = 17
      Size.Values = (
        44.979166666666670000
        1016.000000000000000000
        0.000000000000000000
        127.000000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Gender'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object DetailBand1: TQRBand
    Left = 48
    Top = 177
    Width = 720
    Height = 24
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      1905.000000000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 313
      Top = 3
      Width = 44
      Height = 17
      Size.Values = (
        44.979166666666670000
        828.145833333333300000
        7.937500000000000000
        116.416666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = MyData.qryCllist
      DataField = 'AdmNo'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 1
      Top = 1
      Width = 39
      Height = 17
      Size.Values = (
        44.979166666666670000
        2.645833333333333000
        2.645833333333333000
        103.187500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = MyData.qryCllist
      DataField = 'RollNo'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 71
      Top = 1
      Width = 35
      Height = 17
      Size.Values = (
        44.979166666666670000
        187.854166666666700000
        2.645833333333333000
        92.604166666666670000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = MyData.qryCllist
      DataField = 'Name'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 387
      Top = 1
      Width = 26
      Height = 17
      Size.Values = (
        44.979166666666670000
        1023.937500000000000000
        2.645833333333333000
        68.791666666666670000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = MyData.qryCllist
      DataField = 'SEX'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRShape1: TQRShape
      Left = 366
      Top = 0
      Width = 14
      Height = 21
      Size.Values = (
        55.562500000000000000
        968.375000000000000000
        0.000000000000000000
        37.041666666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape2: TQRShape
      Left = 293
      Top = 0
      Width = 14
      Height = 21
      Size.Values = (
        55.562500000000000000
        775.229166666666700000
        0.000000000000000000
        37.041666666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape3: TQRShape
      Left = 53
      Top = 0
      Width = 14
      Height = 21
      Size.Values = (
        55.562500000000000000
        140.229166666666700000
        0.000000000000000000
        37.041666666666670000)
      XLColumn = 0
      Shape = qrsVertLine
      VertAdjust = 0
    end
  end
  object PageFooterBand1: TQRBand
    Left = 48
    Top = 217
    Width = 720
    Height = 24
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      1905.000000000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageFooter
    object QRSysData2: TQRSysData
      Left = 664
      Top = 0
      Width = 46
      Height = 17
      Size.Values = (
        44.979166666666670000
        1756.833333333333000000
        0.000000000000000000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      Data = qrsPageNumber
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 624
      Top = 0
      Width = 31
      Height = 17
      Size.Values = (
        44.979166666666670000
        1651.000000000000000000
        0.000000000000000000
        82.020833333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Page'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object SummaryBand1: TQRBand
    Left = 48
    Top = 201
    Width = 720
    Height = 16
    Frame.DrawTop = True
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      42.333333333333330000
      1905.000000000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbSummary
    object QRLabel6: TQRLabel
      Left = 0
      Top = 0
      Width = 237
      Height = 17
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        0.000000000000000000
        627.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Total Number of students in this class is'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRSysData1: TQRSysData
      Left = 256
      Top = 0
      Width = 78
      Height = 17
      Size.Values = (
        44.979166666666670000
        677.333333333333300000
        0.000000000000000000
        206.375000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      Data = qrsDetailCount
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
  end
  object TitleBand1: TQRBand
    Left = 48
    Top = 88
    Width = 720
    Height = 65
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      171.979166666666700000
      1905.000000000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
    object QRSysData3: TQRSysData
      Left = 40
      Top = 40
      Width = 36
      Height = 17
      Size.Values = (
        44.979166666666670000
        105.833333333333300000
        105.833333333333300000
        95.250000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      Data = qrsDate
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 0
      Top = 40
      Width = 28
      Height = 17
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        105.833333333333300000
        74.083333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Date'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRCldesc: TQRLabel
      Left = 288
      Top = 40
      Width = 77
      Height = 17
      Size.Values = (
        44.979166666666670000
        762.000000000000000000
        105.833333333333300000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Class List of '
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 527
      Top = 41
      Width = 52
      Height = 17
      Size.Values = (
        44.979166666666670000
        1394.354166666667000000
        108.479166666666700000
        137.583333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Session '
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 583
      Top = 43
      Width = 117
      Height = 17
      Size.Values = (
        44.979166666666670000
        1542.520833333333000000
        113.770833333333300000
        309.562500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = '-----------------------------'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object PageHeaderBand1: TQRBand
    Left = 48
    Top = 48
    Width = 720
    Height = 40
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      105.833333333333300000
      1905.000000000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageHeader
    object QRMBLabel1: TQRLabel
      Left = 207
      Top = 3
      Width = 269
      Height = 20
      Size.Values = (
        52.916666666666670000
        547.687500000000000000
        7.937500000000000000
        711.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Narbheram Hansraj English School'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
    object QRMBLabel2: TQRLabel
      Left = 255
      Top = 19
      Width = 177
      Height = 20
      Size.Values = (
        52.916666666666670000
        674.687500000000000000
        50.270833333333330000
        468.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Bistupur, Jamshedpur- 831001'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    Left = 80
    Top = 32
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = DefaultEncoding
    Left = 112
    Top = 32
  end
end
