object frmDepMast: TfrmDepMast
  Left = 206
  Top = 170
  BorderStyle = bsDialog
  Caption = 'Department Master'
  ClientHeight = 206
  ClientWidth = 471
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
    Top = 56
    Width = 23
    Height = 13
    Caption = 'SlNo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 55
    Height = 13
    Caption = 'Department'
    FocusControl = DBEdit2
  end
  object Label15: TLabel
    Left = 137
    Top = 8
    Width = 196
    Height = 29
    Caption = ' Department Master '
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
  object DBEdit1: TDBEdit
    Left = 72
    Top = 56
    Width = 64
    Height = 21
    DataField = 'DCode'
    DataSource = MyData.DepMastS
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 72
    Top = 104
    Width = 124
    Height = 21
    DataField = 'DESCR'
    DataSource = MyData.DepMastS
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 216
    Top = 56
    Width = 233
    Height = 81
    DataSource = MyData.DepMastS
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DCODE'
        Title.Caption = 'SlNo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCR'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 155
    Width = 228
    Height = 33
    DataSource = MyData.DepMastS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbCancel]
    Kind = dbnHorizontal
    TabOrder = 3
  end
  object btnSave: TBitBtn
    Left = 285
    Top = 156
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
    Left = 374
    Top = 156
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
end
