object frmtabulation: Tfrmtabulation
  Left = 200
  Top = 95
  BorderStyle = bsDialog
  Caption = 'Tabulation Sheet'
  ClientHeight = 412
  ClientWidth = 457
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
    Left = 142
    Top = 24
    Width = 172
    Height = 29
    Caption = ' Tabulation Sheet '
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 24
    Top = 72
    Width = 393
    Height = 137
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 39
    Top = 92
    Width = 58
    Height = 13
    Caption = 'Select Class'
  end
  object Label3: TLabel
    Left = 40
    Top = 128
    Width = 64
    Height = 13
    Caption = 'Select StudId'
  end
  object Label4: TLabel
    Left = 40
    Top = 160
    Width = 71
    Height = 13
    Caption = 'Student  Name'
  end
  object DBText1: TDBText
    Left = 122
    Top = 160
    Width = 50
    Height = 13
    Alignment = taCenter
    AutoSize = True
    Color = clInfoBk
    DataField = 'Name'
    DataSource = MyData.dsstudmarkdet
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 120
    Top = 187
    Width = 50
    Height = 13
    AutoSize = True
    Color = clInfoBk
    DataField = 'RollNo.'
    DataSource = MyData.dsstudmarkdet
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 184
    Width = 38
    Height = 13
    Caption = 'Roll No.'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 220
    Width = 393
    Height = 125
    DataSource = MyData.dsqrytabul
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'studID'
        Title.Caption = 'StudID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Name'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Srlno'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'subdesc'
        Title.Caption = 'Subject'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalMarks'
        Title.Caption = 'Total Marks'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mobt'
        Title.Caption = 'Marks Obtained'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Clcaption'
        Title.Caption = 'Class'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'passmarks'
        Visible = False
      end>
  end
  object btnmarksheet: TBitBtn
    Left = 289
    Top = 86
    Width = 105
    Height = 33
    Caption = '&Get MarkSheet'
    TabOrder = 1
    OnClick = btnmarksheetClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555500000000
      0555555F7777777775F55500FFFFFFFFF0555577F5FFFFFFF7F550F0FEEEEEEE
      F05557F7F777777757F550F0FFFFFFFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
      F05557F7F777777757F550F0FF777FFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
      F05557F7F777777757F550F0FF7F777FF05557F7F5FFFFFFF7F550F0FEEEEEEE
      F05557F7F777777757F550F0FF77F7FFF05557F7F5FFFFFFF7F550F0FEEEEEEE
      F05557F7F777777757F550F0FFFFFFFFF05557F7FF5F5F5F57F550F00F0F0F0F
      005557F77F7F7F7F77555055070707070555575F7F7F7F7F7F55550507070707
      0555557575757575755555505050505055555557575757575555}
    NumGlyphs = 2
  end
  object btnpreview: TBitBtn
    Left = 289
    Top = 131
    Width = 105
    Height = 33
    Caption = '&Preview'
    TabOrder = 2
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
  object cbxclass: TComboBox
    Left = 119
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    OnChange = cbxclassChange
  end
  object cbxstudid: TComboBox
    Left = 120
    Top = 125
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    OnChange = cbxstudidChange
  end
  object Memo1: TMemo
    Left = 424
    Top = 64
    Width = 9
    Height = 145
    TabOrder = 5
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 344
    Top = 360
    Width = 75
    Height = 41
    TabOrder = 6
    Kind = bkClose
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 359
    Width = 224
    Height = 41
    DataSource = MyData.dsqrytabul
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 7
  end
end
