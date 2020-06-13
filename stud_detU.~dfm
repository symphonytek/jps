object Stud_Det: TStud_Det
  Left = 276
  Top = 192
  BorderStyle = bsDialog
  Caption = 'Class Upgradation Form'
  ClientHeight = 467
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 137
    Top = 8
    Width = 185
    Height = 29
    Caption = ' Class Upgradation '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 96
    Width = 120
    Height = 16
    Caption = 'Students Detained:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 1
    Top = 352
    Width = 457
    Height = 17
  end
  object Label2: TLabel
    Left = 4
    Top = 353
    Width = 86
    Height = 13
    Caption = 'Class Upgradation'
  end
  object Label3: TLabel
    Left = 71
    Top = 58
    Width = 44
    Height = 13
    Caption = 'Classes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 239
    Top = 58
    Width = 63
    Height = 13
    Caption = 'Through to'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DbGrid1: TDBGrid
    Left = 33
    Top = 120
    Width = 393
    Height = 169
    DataSource = MyData.DsStud_Det
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ADMNO'
        Title.Alignment = taCenter
        Title.Caption = 'Adm. No.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLDESC'
        Title.Alignment = taCenter
        Title.Caption = 'Class'
        Width = 64
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 236
    Top = 376
    Width = 145
    Height = 33
    Caption = '&Upgrade to next Class'
    TabOrder = 1
    Visible = False
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 316
    Top = 304
    Width = 75
    Height = 33
    TabOrder = 2
    Kind = bkClose
  end
  object BitBtn3: TBitBtn
    Left = 228
    Top = 304
    Width = 75
    Height = 33
    Caption = '&Clear'
    TabOrder = 3
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 125
    Top = 56
    Width = 70
    Height = 21
    KeyField = 'ClCode'
    ListField = 'Clcaption'
    ListSource = MyData.ClMastS
    TabOrder = 4
    OnClick = DBLookupComboBox1Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 317
    Top = 56
    Width = 70
    Height = 21
    KeyField = 'ClCode'
    ListField = 'Clcaption'
    ListSource = MyData.ClMastS
    TabOrder = 5
    OnClick = DBLookupComboBox2Click
  end
  object btnClose: TBitBtn
    Left = 48
    Top = 304
    Width = 161
    Height = 33
    Caption = '&Upgrade to nextClass'
    TabOrder = 6
    OnClick = btnCloseClick
  end
  object Memo1: TMemo
    Left = 472
    Top = 8
    Width = 225
    Height = 361
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 7
  end
end
