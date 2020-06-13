object frmmarkdet: Tfrmmarkdet
  Left = 183
  Top = 103
  BorderStyle = bsDialog
  Caption = 'Marks Detail'
  ClientHeight = 406
  ClientWidth = 483
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
    Left = 150
    Top = 12
    Width = 183
    Height = 29
    Caption = '  Mark Entry  Sheet  '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 80
    Top = -16
    Width = 19
    Height = 13
    Caption = 'snm'
  end
  object DBNavigator1: TDBNavigator
    Left = 26
    Top = 353
    Width = 224
    Height = 41
    DataSource = MyData.dsstudmarkdet
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 368
    Top = 353
    Width = 75
    Height = 41
    TabOrder = 1
    Kind = bkClose
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 49
    Width = 433
    Height = 158
    Caption = 'Listing'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 10
      Top = 57
      Width = 58
      Height = 13
      Caption = 'Select Class'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 112
      Width = 69
      Height = 13
      Caption = 'Select Subject'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 118
      Top = 136
      Width = 120
      Height = 17
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 10
      Top = 137
      Width = 76
      Height = 13
      Caption = 'Maximum Marks'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 83
      Width = 57
      Height = 13
      Caption = 'Examination'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 10
      Top = 29
      Width = 50
      Height = 13
      Caption = 'Enter Year'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbxsubject: TComboBox
      Left = 118
      Top = 109
      Width = 120
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnChange = cbxsubjectChange
    end
    object cbxclass: TComboBox
      Left = 118
      Top = 51
      Width = 120
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      OnChange = cbxclassChange
    end
    object btngetlist: TBitBtn
      Left = 254
      Top = 56
      Width = 99
      Height = 41
      Caption = '&Get List'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btngetlistClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cbxexam: TComboBox
      Left = 118
      Top = 81
      Width = 120
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 117
      Top = 24
      Width = 120
      Height = 21
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 23
    Top = 214
    Width = 434
    Height = 123
    DataSource = MyData.dsstudmarkdet
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Cl'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'RollNo.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Studid'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mobt'
        Title.Caption = 'Marks. Obtained'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P/F'
        Title.Caption = 'Remarks'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Srlno'
        Visible = False
      end>
  end
  object btnpreview: TBitBtn
    Left = 280
    Top = 353
    Width = 75
    Height = 41
    Caption = '&Preview'
    TabOrder = 4
    OnClick = btnpreviewClick
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
  end
end
