object frmDefnotice: TfrmDefnotice
  Left = 189
  Top = 145
  Width = 517
  Height = 346
  Caption = 'frmDefnotice'
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
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 31
    Height = 13
    Caption = 'StudId'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 152
    Width = 31
    Height = 13
    Caption = 'Notice'
    FocusControl = memo1
  end
  object Label4: TLabel
    Left = 312
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Name'
  end
  object Label5: TLabel
    Left = 160
    Top = 72
    Width = 35
    Height = 13
    Caption = 'Roll No'
  end
  object Label6: TLabel
    Left = 24
    Top = 112
    Width = 25
    Height = 13
    Caption = 'Class'
  end
  object Label7: TLabel
    Left = 312
    Top = 112
    Width = 36
    Height = 13
    Caption = 'Section'
  end
  object Label15: TLabel
    Left = 144
    Top = 16
    Width = 177
    Height = 29
    Caption = '   Defaulter Notice  '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 216
    Top = 72
    Width = 65
    Height = 17
    Color = clWhite
    DataField = 'RollNo'
    DataSource = MyData.StudMastS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 64
    Top = 112
    Width = 65
    Height = 17
    Color = clWhite
    DataField = 'ClCode'
    DataSource = MyData.StudMastS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 368
    Top = 72
    Width = 65
    Height = 17
    Color = clWhite
    DataField = 'Name'
    DataSource = MyData.StudMastS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 368
    Top = 112
    Width = 65
    Height = 17
    Color = clWhite
    DataField = 'Section'
    DataSource = MyData.StudMastS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 72
    Width = 73
    Height = 21
    DataField = 'StudId'
    DataSource = MyData.DsStud_def
    TabOrder = 0
  end
  object memo1: TDBMemo
    Left = 16
    Top = 168
    Width = 481
    Height = 89
    DataField = 'Notice'
    DataSource = MyData.DsStud_def
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 268
    Width = 312
    Height = 37
    DataSource = MyData.DsStud_def
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 376
    Top = 264
    Width = 89
    Height = 33
    TabOrder = 3
    Kind = bkClose
  end
end
