object frmSubjMast: TfrmSubjMast
  Left = 202
  Top = 165
  BorderStyle = bsDialog
  Caption = 'Subject Detail'
  ClientHeight = 348
  ClientWidth = 536
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
  object DBGrid1: TDBGrid
    Left = 32
    Top = 32
    Width = 457
    Height = 249
    DataSource = MyData.DsSubjMast
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Subjcode'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Subjname'
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Subjtot'
        Width = 161
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 297
    Width = 75
    Height = 40
    TabOrder = 1
    Kind = bkClose
  end
  object BitBtn2: TBitBtn
    Left = 160
    Top = 296
    Width = 89
    Height = 41
    TabOrder = 2
    Kind = bkOK
  end
end
