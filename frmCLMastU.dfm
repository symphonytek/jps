object frmCLMast: TfrmCLMast
  Left = 284
  Top = 196
  BorderStyle = bsDialog
  Caption = 'Class Master'
  ClientHeight = 308
  ClientWidth = 694
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
  object Label1: TLabel
    Left = 8
    Top = 72
    Width = 25
    Height = 13
    Caption = 'Code'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 53
    Height = 13
    Caption = 'Description'
    FocusControl = dbedt2
  end
  object Label15: TLabel
    Left = 255
    Top = 16
    Width = 133
    Height = 29
    Caption = ' Class Master '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label4: TLabel
    Left = 8
    Top = 136
    Width = 25
    Height = 13
    Caption = 'Class'
    FocusControl = DBEdit4
  end
  object Label3: TLabel
    Left = 8
    Top = 200
    Width = 58
    Height = 13
    Caption = 'Monthly Fee'
    FocusControl = DBEdit3
  end
  object Label5: TLabel
    Left = 8
    Top = 232
    Width = 64
    Height = 13
    Caption = 'Additional fee'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 168
    Width = 61
    Height = 13
    Caption = 'Promoted To'
    FocusControl = DBLookupComboBox1
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 72
    Width = 64
    Height = 21
    DataField = 'ClCode'
    DataSource = MyData.CLMast1S
    TabOrder = 0
  end
  object dbedt2: TDBEdit
    Left = 72
    Top = 104
    Width = 153
    Height = 21
    DataField = 'DESCR'
    DataSource = MyData.CLMast1S
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 240
    Top = 64
    Width = 446
    Height = 185
    DataSource = MyData.CLMast1S
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLCODE'
        Title.Alignment = taCenter
        Title.Caption = 'Code'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Title.Alignment = taCenter
        Title.Caption = 'Description'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLCAPTION'
        Title.Alignment = taCenter
        Title.Caption = 'Class'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLDESC'
        Title.Alignment = taCenter
        Title.Caption = 'Promotion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'age'
        Title.Alignment = taCenter
        Title.Caption = 'Max. age'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 259
    Width = 228
    Height = 33
    DataSource = MyData.CLMast1S
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbCancel]
    Kind = dbnHorizontal
    TabOrder = 3
  end
  object btnSave: TBitBtn
    Left = 341
    Top = 260
    Width = 76
    Height = 32
    Hint = 'Post'
    Caption = '&Save'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnSaveClick
  end
  object btnNew: TBitBtn
    Left = 454
    Top = 260
    Width = 73
    Height = 32
    Hint = 'Insert'
    Caption = '&New'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
      333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
      0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
      0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
      33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
      B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
      3BB33773333773333773B333333B3333333B7333333733333337}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnNewClick
  end
  object DBEdit4: TDBEdit
    Left = 72
    Top = 136
    Width = 153
    Height = 21
    DataField = 'Clcaption'
    DataSource = MyData.CLMast1S
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 72
    Top = 200
    Width = 73
    Height = 21
    DataField = 'Mfee'
    DataSource = MyData.CLMast1S
    TabOrder = 7
  end
  object btnCal: TBitBtn
    Left = 152
    Top = 200
    Width = 73
    Height = 24
    Hint = 'Calculate Monthly Fee'
    Caption = '&Calculate'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
      73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
      0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
      0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
      0333337F777777737F333308888888880333337F333333337F33330888888888
      03333373FFFFFFFF733333700000000073333337777777773333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = btnCalClick
  end
  object DBEdit5: TDBEdit
    Left = 72
    Top = 229
    Width = 73
    Height = 21
    DataField = 'Adfee'
    DataSource = MyData.CLMast1S
    TabOrder = 9
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 72
    Top = 168
    Width = 153
    Height = 21
    DataField = 'cldesc'
    DataSource = MyData.CLMast1S
    TabOrder = 10
  end
end
