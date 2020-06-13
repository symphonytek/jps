object frmmarksheetprocess: Tfrmmarksheetprocess
  Left = 208
  Top = 144
  BorderStyle = bsDialog
  Caption = 'Pre-Report Card Processing'
  ClientHeight = 175
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 16
    Width = 289
    Height = 29
    Caption = ' Mark Entry  Sheet Processing '
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 60
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 204
    Top = 100
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 231
    Top = 101
    Width = 8
    Height = 13
    Caption = '%'
  end
  object Label5: TLabel
    Left = 5
    Top = 76
    Width = 55
    Height = 13
    Caption = 'Mark Sheet'
  end
  object ProgressBar1: TProgressBar
    Left = 68
    Top = 76
    Width = 329
    Height = 16
    Enabled = False
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 314
    Top = 118
    Width = 80
    Height = 41
    TabOrder = 1
    Kind = bkClose
  end
  object Memo1: TMemo
    Left = 336
    Top = 96
    Width = 33
    Height = 16
    TabOrder = 2
    Visible = False
  end
  object btnlist: TBitBtn
    Left = 80
    Top = 118
    Width = 105
    Height = 41
    Caption = '&Start Processing'
    TabOrder = 3
    OnClick = btnlistClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333000003333333333F777773FF333333008877700
      33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
      703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
      77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
      07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
      780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
      8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
      3333333773FFFF77333333333000003333333333377777333333}
    NumGlyphs = 2
  end
end
