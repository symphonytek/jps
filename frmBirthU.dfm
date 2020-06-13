object frmBirth: TfrmBirth
  Left = 226
  Top = 198
  BorderStyle = bsDialog
  Caption = 'Confirmation of Date of Birth'
  ClientHeight = 284
  ClientWidth = 556
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
    Left = 136
    Top = 16
    Width = 283
    Height = 29
    Caption = ' Confirmation of Date of Birth '
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
  object Label1: TLabel
    Left = 24
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Sl. No.'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 336
    Top = 64
    Width = 47
    Height = 13
    Caption = 'Admn. No'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 37
    Height = 13
    Caption = 'Remark'
    FocusControl = DBMemo1
  end
  object Label4: TLabel
    Left = 24
    Top = 96
    Width = 28
    Height = 13
    Caption = 'Name'
    FocusControl = DBLookupComboBox1
  end
  object Label5: TLabel
    Left = 288
    Top = 184
    Width = 62
    Height = 13
    Caption = 'Leaving date'
    FocusControl = DBLookupComboBox1
  end
  object Label6: TLabel
    Left = 24
    Top = 184
    Width = 62
    Height = 13
    Caption = 'Date of issue'
    FocusControl = DBLookupComboBox1
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 64
    Width = 185
    Height = 21
    DataField = 'SlNo'
    DataSource = MyData.birthS
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 392
    Top = 64
    Width = 134
    Height = 21
    DataField = 'AdmNo'
    DataSource = MyData.birthS
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 80
    Top = 128
    Width = 185
    Height = 41
    DataField = 'CMNT'
    DataSource = MyData.birthS
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 80
    Top = 96
    Width = 185
    Height = 21
    DataField = 'sname'
    DataSource = MyData.birthS
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 235
    Width = 238
    Height = 33
    DataSource = MyData.birthS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost]
    Kind = dbnHorizontal
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 448
    Top = 235
    Width = 81
    Height = 33
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 5
  end
  object btnPreview: TBitBtn
    Left = 328
    Top = 235
    Width = 33
    Height = 33
    Hint = 'Preview'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      033333777777777773333330777777703333333773F333773333333330888033
      33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
      FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
      8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
      8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
      8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
      8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
      FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btnPreviewClick
  end
  object btnPrint: TBitBtn
    Left = 361
    Top = 235
    Width = 33
    Height = 33
    Hint = 'Print'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object RadioGroup1: TRadioGroup
    Left = 304
    Top = 96
    Width = 225
    Height = 49
    Caption = ' Type of certificate '
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Birth'
      'Character'
      'Domicile')
    TabOrder = 8
    OnClick = RadioGroup1Click
  end
  object DBEdit4: TDBEdit
    Left = 360
    Top = 184
    Width = 169
    Height = 21
    DataField = 'LastDte'
    DataSource = MyData.birthS
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 184
    Width = 169
    Height = 21
    DataField = 'IssueDte'
    DataSource = MyData.birthS
    TabOrder = 10
  end
end
