object frmItemMast: TfrmItemMast
  Left = 299
  Top = 192
  BorderStyle = bsDialog
  Caption = 'Item Master'
  ClientHeight = 439
  ClientWidth = 483
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
    Left = 186
    Top = 8
    Width = 125
    Height = 29
    Caption = ' Item Master '
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
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 25
    Height = 13
    Caption = 'Code'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 80
    Width = 53
    Height = 13
    Caption = 'Description'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 280
    Top = 48
    Width = 54
    Height = 13
    Caption = 'Short name'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 48
    Width = 134
    Height = 21
    DataField = 'AC_NO'
    DataSource = MyData.tbAcMasterS
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 80
    Width = 385
    Height = 21
    DataField = 'AC_NAME'
    DataSource = MyData.tbAcMasterS
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 256
    Top = 112
    Width = 81
    Height = 17
    Caption = 'Compulsory'
    DataField = 'AC_MANDATORY'
    DataSource = MyData.tbAcMasterS
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 145
    Width = 457
    Height = 241
    DataSource = MyData.tbAcMasterS
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AC_NO'
        Title.Caption = 'Code'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AC_CODE'
        Title.Caption = 'Short name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AC_NAME'
        Title.Caption = 'Head'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AC_MODE'
        Title.Caption = 'Mode'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AC_MANDATORY'
        Title.Caption = 'Compulsory'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AC_DEF'
        Title.Caption = 'Show in defaulter'
        Width = 92
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 392
    Width = 248
    Height = 33
    DataSource = MyData.tbAcMasterS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 384
    Top = 392
    Width = 75
    Height = 33
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 344
    Top = 48
    Width = 121
    Height = 21
    DataField = 'AC_CODE'
    DataSource = MyData.tbAcMasterS
    TabOrder = 6
  end
  object DBCheckBox2: TDBCheckBox
    Left = 344
    Top = 112
    Width = 121
    Height = 17
    Caption = 'Show in Defaulter list'
    DataField = 'AC_DEF'
    DataSource = MyData.tbAcMasterS
    TabOrder = 7
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 8
    Top = 104
    Width = 185
    Height = 33
    Caption = ' Mode '
    Columns = 3
    DataField = 'AC_MODE'
    DataSource = MyData.tbAcMasterS
    Items.Strings = (
      'Term'
      'Annual'
      'Initial')
    TabOrder = 8
    Values.Strings = (
      'T'
      'A'
      'I')
  end
end
