object frmAbsentees: TfrmAbsentees
  Left = 197
  Top = 118
  Width = 544
  Height = 276
  Caption = 'frmAbsentees'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 8
    Width = 473
    Height = 177
    DataSource = MyData.DsAbsentees
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColEnter = DBGrid1ColEnter
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Sid'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Absent'
        Width = 152
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 200
    Width = 240
    Height = 33
    DataSource = MyData.DsAbsentees
    TabOrder = 2
  end
  object DBCheckBox1: TDBCheckBox
    Left = 328
    Top = 24
    Width = 97
    Height = 25
    Caption = 'Absent'
    DataField = 'Absent'
    DataSource = MyData.DsAbsentees
    TabOrder = 1
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
end
