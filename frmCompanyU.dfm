object frmCompany: TfrmCompany
  Left = 0
  Top = 0
  Caption = 'Company'
  ClientHeight = 231
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 12
  object Label15: TLabel
    Left = 128
    Top = 7
    Width = 92
    Height = 26
    Caption = ' Company  '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 42
    Width = 345
    Height = 151
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataSource = MyData.dsComp
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 6
    Top = 200
    Width = 216
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DataSource = MyData.dsComp
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Kind = dbnHorizontal
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 288
    Top = 197
    Width = 56
    Height = 28
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
end
