object frmRptCrd: TfrmRptCrd
  Left = 274
  Top = 180
  BorderStyle = bsDialog
  Caption = 'Reports'
  ClientHeight = 442
  ClientWidth = 566
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
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 553
    Height = 89
    Shape = bsFrame
  end
  object Label3: TLabel
    Left = 384
    Top = 44
    Width = 25
    Height = 13
    Caption = 'Class'
  end
  object Label1: TLabel
    Left = 328
    Top = 12
    Width = 37
    Height = 13
    Caption = 'Select'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 288
    Top = 12
    Width = 28
    Height = 13
    Caption = 'Date'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 12
    Width = 69
    Height = 13
    Caption = 'Examination'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnList: TSpeedButton
    Left = 480
    Top = 64
    Width = 73
    Height = 25
    Hint = 'Report card'
    Caption = '&Reports'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
      0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
      00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
      00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
      F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
      F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
      FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
      0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
      00337777FFFF77FF7733EEEE0000000003337777777777777333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btnListClick
  end
  object Label5: TLabel
    Left = 136
    Top = 420
    Width = 46
    Height = 13
    Caption = 'Lines/Pg.'
  end
  object Label6: TLabel
    Left = 384
    Top = 66
    Width = 36
    Height = 13
    Caption = 'Section'
  end
  object btnMaster: TSpeedButton
    Left = 304
    Top = 408
    Width = 97
    Height = 33
    Hint = 'Report card'
    Caption = '&Master sheet'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
      0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
      00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
      00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
      F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
      F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
      FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
      0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
      00337777FFFF77FF7733EEEE0000000003337777777777777333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btnMasterClick
  end
  object RdGp2: TDBRadioGroup
    Left = 8
    Top = 405
    Width = 286
    Height = 36
    Caption = ' &Spacing : '
    Columns = 4
    DataField = 'FieldName'
    DataSource = exmdata.RdBtnValD
    Items.Strings = (
      'Single'
      'Double'
      '1.5')
    TabOrder = 6
    Values.Strings = (
      '12'
      '24'
      '18')
  end
  object BitBtn1: TBitBtn
    Left = 488
    Top = 408
    Width = 73
    Height = 33
    TabOrder = 0
    Kind = bkClose
  end
  object REdit: TRichEdit
    Left = 8
    Top = 104
    Width = 553
    Height = 297
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    PlainText = True
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
  object dbfilter: TDBLookupComboBox
    Left = 432
    Top = 40
    Width = 121
    Height = 21
    DataField = 'clcode'
    DataSource = MyData.tmpClmastS
    KeyField = 'ClCode'
    ListField = 'Descr'
    ListSource = exmdata.CLMastS
    TabOrder = 2
  end
  object btnPrint: TBitBtn
    Left = 415
    Top = 408
    Width = 73
    Height = 33
    Caption = '&Print'
    TabOrder = 3
    OnClick = btnPrintClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object Memo1: TMemo
    Left = 353
    Top = 368
    Width = 57
    Height = 25
    Lines.Strings = (
      ' ')
    TabOrder = 4
    Visible = False
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 16
    Top = 24
    Width = 361
    Height = 63
    DataSource = exmdata.exmmastS
    PanelHeight = 21
    PanelWidth = 345
    TabOrder = 5
    OnDblClick = DBCtrlGrid1DblClick
    object DBText1: TDBText
      Left = 8
      Top = 3
      Width = 209
      Height = 17
      DataField = 'Exmdesc'
      DataSource = exmdata.exmmastS
      OnDblClick = DBCtrlGrid1DblClick
    end
    object DBText2: TDBText
      Left = 254
      Top = 3
      Width = 58
      Height = 17
      Alignment = taRightJustify
      DataField = 'Exmdate'
      DataSource = exmdata.exmmastS
      OnDblClick = DBCtrlGrid1DblClick
    end
    object DBCheckBox1: TDBCheckBox
      Left = 328
      Top = 2
      Width = 17
      Height = 17
      DataField = 'Slct'
      DataSource = exmdata.exmmastS
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object edPgSz: TEdit
    Left = 259
    Top = 415
    Width = 29
    Height = 21
    TabOrder = 7
    Text = '36'
  end
  object StaticText1: TStaticText
    Left = 209
    Top = 420
    Width = 50
    Height = 17
    Caption = 'Lines/Pg.'
    TabOrder = 8
  end
  object REdt: TRichEdit
    Left = 296
    Top = 368
    Width = 57
    Height = 25
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    PlainText = True
    TabOrder = 9
    Visible = False
    WordWrap = False
  end
  object CBx1: TComboBox
    Left = 432
    Top = 65
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 10
    Text = 'A'
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E'
      'F')
  end
  object chkDmp: TCheckBox
    Left = 432
    Top = 16
    Width = 121
    Height = 17
    Alignment = taLeftJustify
    Caption = 'DOT Matrix printing'
    TabOrder = 11
  end
end
