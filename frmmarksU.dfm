object frmmarksobtained: Tfrmmarksobtained
  Left = 191
  Top = 96
  BorderStyle = bsDialog
  Caption = 'Marks Details'
  ClientHeight = 377
  ClientWidth = 491
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
    Left = 16
    Top = 64
    Width = 25
    Height = 13
    Caption = 'Class'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 168
    Top = 64
    Width = 64
    Height = 13
    Caption = 'Class Caption'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 312
    Top = 64
    Width = 53
    Height = 13
    Caption = 'Description'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 177
    Top = 8
    Width = 136
    Height = 29
    Caption = ' Subject Entry '
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 120
    Width = 449
    Height = 161
    DataSource = MyData.dsclsubdet
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Slno'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cid'
        Title.Caption = 'Class ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Sid'
        Title.Caption = 'Subject ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Subdesc'
        Title.Caption = 'Subject Desc.'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Totalmarks'
        Title.Caption = 'Total Marks'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Passmarks'
        Title.Caption = 'Pass Marks'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 80
    Width = 134
    Height = 21
    DataField = 'ClCode'
    DataSource = MyData.CLMastS
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 168
    Top = 80
    Width = 134
    Height = 21
    DataField = 'Clcaption'
    DataSource = MyData.CLMastS
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 312
    Top = 80
    Width = 145
    Height = 21
    DataField = 'Desc'
    DataSource = MyData.CLMastS
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 296
    Width = 228
    Height = 49
    DataSource = MyData.CLMastS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 390
    Top = 296
    Width = 75
    Height = 49
    TabOrder = 5
    Kind = bkClose
  end
end
