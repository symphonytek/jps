object frmSheet: TfrmSheet
  Left = 767
  Top = 171
  BorderStyle = bsDialog
  Caption = ' Marks Entry sheet preperation'
  ClientHeight = 411
  ClientWidth = 425
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
    Left = 20
    Top = 56
    Width = 45
    Height = 13
    Caption = 'Sheet No'
  end
  object DBText1: TDBText
    Left = 260
    Top = 152
    Width = 73
    Height = 17
    Color = clCream
    DataField = 'cldes'
    DataSource = exmdata.sheetS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 132
    Top = 152
    Width = 117
    Height = 17
    Color = clCream
    DataField = 'subdes'
    DataSource = exmdata.sheetS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label15: TLabel
    Left = 101
    Top = 8
    Width = 187
    Height = 29
    Caption = ' Marks entry sheet  '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object btnPub: TSpeedButton
    Left = 320
    Top = 118
    Width = 89
    Height = 25
    Hint = 'Search for existing sheet'
    Caption = '&Search'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
      555555777777777FF5555500000000805555557777777777FF555550BBBBB008
      05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
      005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
      055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
      055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
      05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
      05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
      005555555775FFFF77F555555570000000555555555777777755}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btnPubClick
  end
  object dbText3: TDBText
    Left = 340
    Top = 152
    Width = 73
    Height = 17
    Color = clCream
    DataField = 'SECTION'
    DataSource = exmdata.sheetS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 164
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object dbtSheetid: TDBText
    Left = 64
    Top = 152
    Width = 61
    Height = 17
    Color = clCream
    DataField = 'SHEETID'
    DataSource = exmdata.sheetS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 12
    Top = 152
    Width = 45
    Height = 13
    Caption = 'Sheet No'
  end
  object Label5: TLabel
    Left = 16
    Top = 376
    Width = 85
    Height = 13
    Caption = 'Change password'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 140
    Width = 409
    Height = 9
    Shape = bsBottomLine
    Style = bsRaised
  end
  object btnSave: TBitBtn
    Left = 251
    Top = 372
    Width = 73
    Height = 33
    Action = exmdata.dspost
    Caption = '&Save'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
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
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 176
    Width = 401
    Height = 193
    DataSource = exmdata.sheetdetS
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'SHEETID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'STUDID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ADMNO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RLNO'
        Title.Caption = 'Roll No'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STUDNAME'
        Title.Caption = 'Name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARKS'
        Width = 43
        Visible = True
      end>
  end
  object edtSheet: TEdit
    Left = 16
    Top = 72
    Width = 97
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object edtPassword: TEdit
    Left = 160
    Top = 72
    Width = 97
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object btnGo: TBitBtn
    Left = 320
    Top = 56
    Width = 89
    Height = 25
    Caption = 'Get &Sheet'
    TabOrder = 4
    OnClick = btnGoClick
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 376
    Width = 121
    Height = 21
    DataField = 'passwd'
    DataSource = exmdata.sheetS
    PasswordChar = '*'
    ReadOnly = True
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 339
    Top = 372
    Width = 73
    Height = 33
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Kind = bkClose
  end
  object btnEntermarks: TBitBtn
    Left = 320
    Top = 88
    Width = 89
    Height = 25
    Caption = '&Enter marks'
    TabOrder = 7
    OnClick = btnEntermarksClick
  end
end
