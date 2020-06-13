object frmXmSlct: TfrmXmSlct
  Left = 313
  Top = 223
  BorderStyle = bsDialog
  Caption = 'Examination Selection'
  ClientHeight = 153
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 7
    Top = 8
    Width = 378
    Height = 89
    Shape = bsFrame
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
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 16
    Top = 24
    Width = 361
    Height = 63
    DataSource = exmdata.exmmastS
    PanelHeight = 21
    PanelWidth = 345
    TabOrder = 0
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
  object BitBtn1: TBitBtn
    Left = 80
    Top = 112
    Width = 76
    Height = 33
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 240
    Top = 112
    Width = 76
    Height = 33
    TabOrder = 2
    Kind = bkClose
  end
end
