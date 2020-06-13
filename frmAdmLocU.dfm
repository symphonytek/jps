object frmAdmLoc: TfrmAdmLoc
  Left = 305
  Top = 303
  Caption = 'Locations'
  ClientHeight = 325
  ClientWidth = 579
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
    Left = 184
    Top = 8
    Width = 180
    Height = 29
    Caption = '  Nearby locations  '
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
  object DBGrid1: TDBGrid
    Left = 16
    Top = 56
    Width = 545
    Height = 217
    DataSource = MyData.dsLoc
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'loc_id'
        Title.Caption = 'code'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'location'
        Title.Caption = 'Location'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dist_range'
        Title.Caption = 'Distance range'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dist'
        Title.Caption = 'Order'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 287
    Width = 280
    Height = 33
    DataSource = MyData.dsLoc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Kind = dbnHorizontal
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 456
    Top = 288
    Width = 81
    Height = 33
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
end
