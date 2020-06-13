object StudAttend: TStudAttend
  Left = 206
  Top = 156
  Width = 554
  Height = 328
  Caption = 'StudAttend'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 25
    Height = 13
    Caption = 'Class'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 160
    Top = 24
    Width = 19
    Height = 13
    Caption = 'Sec'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 232
    Top = 24
    Width = 23
    Height = 13
    Caption = 'Date'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 368
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Month'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 24
    Width = 49
    Height = 21
    DataField = 'Class'
    DataSource = MyData.DsStudAttend
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 192
    Top = 24
    Width = 17
    Height = 21
    DataField = 'Sec'
    DataSource = MyData.DsStudAttend
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 272
    Top = 24
    Width = 64
    Height = 21
    DataField = 'Date'
    DataSource = MyData.DsStudAttend
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 416
    Top = 24
    Width = 81
    Height = 21
    DataField = 'Month'
    DataSource = MyData.DsStudAttend
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 72
    Width = 457
    Height = 168
    DataSource = MyData.DsStudAttenDet
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Class'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StudId'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Present'
        Width = 98
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 48
    Top = 256
    Width = 224
    Height = 33
    DataSource = MyData.DsStudAttend
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 320
    Top = 257
    Width = 75
    Height = 32
    TabOrder = 6
    Kind = bkClose
  end
  object DBCheckBox1: TDBCheckBox
    Left = 392
    Top = 88
    Width = 97
    Height = 17
    Caption = 'DBCheckBox1'
    TabOrder = 7
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
end
