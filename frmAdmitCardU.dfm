object frmAdmitCard: TfrmAdmitCard
  Left = 0
  Top = 0
  Caption = 'Admit card for XI'
  ClientHeight = 209
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 64
    Width = 116
    Height = 13
    Caption = 'Examination date && time'
  end
  object Label2: TLabel
    Left = 312
    Top = 64
    Width = 70
    Height = 13
    Caption = 'Reporting time'
  end
  object Label6: TLabel
    Left = 143
    Top = 16
    Width = 118
    Height = 29
    Caption = ' Admit Card  '
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
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 30
    Height = 13
    Caption = 'Venue'
  end
  object dtpExdate: TDateTimePicker
    Left = 24
    Top = 80
    Width = 113
    Height = 21
    Date = 41256.446747604170000000
    Time = 41256.446747604170000000
    TabOrder = 0
  end
  object dtpExTime: TDateTimePicker
    Left = 143
    Top = 80
    Width = 90
    Height = 21
    Date = 41256.446747604170000000
    Time = 41256.446747604170000000
    Kind = dtkTime
    TabOrder = 1
  end
  object dtpReptime: TDateTimePicker
    Left = 311
    Top = 80
    Width = 90
    Height = 21
    Date = 41256.446747604170000000
    Time = 41256.446747604170000000
    Kind = dtkTime
    TabOrder = 2
  end
  object edtVenue: TEdit
    Left = 24
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'JPS'
  end
  object btnAdmitCard: TBitBtn
    Left = 158
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Admit Card'
    TabOrder = 4
    OnClick = btnAdmitCardClick
  end
end
