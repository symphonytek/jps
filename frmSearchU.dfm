object frmSearch: TfrmSearch
  Left = 157
  Top = 134
  BorderStyle = bsDialog
  Caption = 'Search Form'
  ClientHeight = 337
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    536
    337)
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 202
    Top = 8
    Width = 132
    Height = 29
    Alignment = taCenter
    Anchors = [akLeft, akRight]
    Caption = ' Search Form '
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
    Left = 16
    Top = 60
    Width = 49
    Height = 13
    Caption = 'Search By'
  end
  object Label2: TLabel
    Left = 235
    Top = 60
    Width = 64
    Height = 13
    Caption = 'Search String'
  end
  object Label3: TLabel
    Left = 147
    Top = 60
    Width = 32
    Height = 13
    Caption = 'Criteria'
  end
  object Label4: TLabel
    Left = 16
    Top = 296
    Width = 196
    Height = 16
    Caption = 'Total No. of items displayed'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 224
    Top = 296
    Width = 9
    Height = 16
    Caption = '0'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 96
    Width = 497
    Height = 185
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = exmdata.qrySrchS
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object BitBtn1: TBitBtn
    Left = 440
    Top = 296
    Width = 75
    Height = 33
    Anchors = [akRight, akBottom]
    TabOrder = 1
    Kind = bkClose
  end
  object ComboBox1: TComboBox
    Left = 69
    Top = 56
    Width = 68
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 440
    Top = 56
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Search'
    Default = True
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
  end
  object Edit1: TEdit
    Left = 304
    Top = 56
    Width = 129
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clInfoBk
    TabOrder = 4
  end
  object ComboBox2: TComboBox
    Left = 184
    Top = 56
    Width = 42
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = '='
    Items.Strings = (
      '='
      '<>'
      '<'
      '>'
      'Like')
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 184
    object Sort1: TMenuItem
      Caption = '&Sort'
      OnClick = Sort1Click
    end
    object Exit1: TMenuItem
      Caption = '&Exit'
    end
  end
end
