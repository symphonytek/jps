object frmGeneral: TfrmGeneral
  Left = 240
  Top = 165
  BorderStyle = bsDialog
  Caption = 'Class Rooms Master'
  ClientHeight = 268
  ClientWidth = 381
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
    Left = 87
    Top = 16
    Width = 206
    Height = 29
    Caption = ' Class Rooms master '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 64
    Width = 321
    Height = 137
    DataSource = MyData.tbClMastS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = DBGrid2Enter
    Columns = <
      item
        Expanded = False
        FieldName = 'CLCode'
        Title.Caption = 'Sl No.'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desc'
        Title.Caption = 'Class Name'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 216
    Width = 220
    Height = 33
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete]
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 280
    Top = 216
    Width = 75
    Height = 33
    TabOrder = 2
    Kind = bkClose
  end
end
