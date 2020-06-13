object frmRelations: TfrmRelations
  Left = 0
  Top = 0
  Caption = 'Relations'
  ClientHeight = 308
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Label15: TLabel
    Left = 170
    Top = 9
    Width = 123
    Height = 35
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = ' Relations  '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -28
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 460
    Height = 201
    DataSource = MyData.dsRelmast
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 266
    Width = 296
    Height = 34
    DataSource = MyData.dsRelmast
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Kind = dbnHorizontal
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 384
    Top = 263
    Width = 75
    Height = 37
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
end
