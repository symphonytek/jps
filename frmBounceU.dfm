object frmBounce: TfrmBounce
  Left = 0
  Top = 0
  Caption = 'Bounced cheque'
  ClientHeight = 337
  ClientWidth = 778
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
  object Label7: TLabel
    Left = 206
    Top = 11
    Width = 23
    Height = 13
    Caption = 'Bank'
  end
  object edtChqno: TLabeledEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 21
    EditLabel.Width = 56
    EditLabel.Height = 13
    EditLabel.Caption = 'Cheque no.'
    LabelPosition = lpLeft
    TabOrder = 0
  end
  object btnSearch: TBitBtn
    Left = 443
    Top = 4
    Width = 75
    Height = 25
    Caption = '&Search'
    TabOrder = 1
    OnClick = btnSearchClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 35
    Width = 762
    Height = 254
    DataSource = MyData.qryChqSearchS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnBounce: TBitBtn
    Left = 695
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Cancel fees'
    TabOrder = 3
    OnClick = btnBounceClick
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 243
    Top = 8
    Width = 194
    Height = 21
    KeyField = 'BCODE'
    ListField = 'DESCR'
    ListSource = MyData.dsBmast
    TabOrder = 4
  end
end
