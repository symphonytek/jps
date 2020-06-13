object frmexam: Tfrmexam
  Left = 202
  Top = 148
  BorderStyle = bsDialog
  Caption = 'Examination Master'
  ClientHeight = 316
  ClientWidth = 367
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
    Left = 87
    Top = 8
    Width = 192
    Height = 29
    Caption = ' Examnation Details '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 25
    Height = 13
    Caption = 'Class'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 208
    Top = 64
    Width = 64
    Height = 13
    Caption = 'Class Caption'
    FocusControl = DBEdit2
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 109
    Width = 321
    Height = 120
    DataSource = MyData.dsexammast
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Ccode'
        Title.Caption = 'Class Code'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Eslno'
        Title.Caption = 'Slno.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ename'
        Title.Caption = 'Exam Name'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 245
    Width = 224
    Height = 44
    DataSource = MyData.CLMastS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 276
    Top = 248
    Width = 75
    Height = 41
    TabOrder = 2
    Kind = bkClose
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 80
    Width = 134
    Height = 21
    DataField = 'ClCode'
    DataSource = MyData.CLMastS
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 80
    Width = 134
    Height = 21
    DataField = 'Clcaption'
    DataSource = MyData.CLMastS
    TabOrder = 4
  end
end
