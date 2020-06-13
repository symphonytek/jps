object usermgrfrm: Tusermgrfrm
  Left = 305
  Top = 182
  Hint = 'Insert'
  BorderStyle = bsDialog
  Caption = 'User Manager'
  ClientHeight = 266
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 38
    Height = 13
    Caption = 'Login Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 105
    Top = 48
    Width = 51
    Height = 13
    Caption = 'User name'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 85
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label7: TLabel
    Left = 87
    Top = 8
    Width = 146
    Height = 29
    Caption = 'USER  MANAGER'
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clAqua
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object btnPassReset: TSpeedButton
    Left = 283
    Top = 100
    Width = 25
    Height = 21
    Hint = 'Change Password'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
      305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
      005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
      B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
      B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
      B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
      B0557777FF577777F7F500000E055550805577777F7555575755500000555555
      05555777775555557F5555000555555505555577755555557555}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btnPassResetClick
  end
  object Label4: TLabel
    Left = 8
    Top = 122
    Width = 22
    Height = 13
    Caption = 'Role'
  end
  object Label5: TLabel
    Left = 143
    Top = 85
    Width = 83
    Height = 13
    Caption = 'Confirm password'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 64
    Width = 91
    Height = 21
    DataField = 'Uid'
    DataSource = MyData.userds
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 105
    Top = 64
    Width = 203
    Height = 21
    DataField = 'Uname'
    DataSource = MyData.userds
    TabOrder = 1
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 8
    Top = 163
    Width = 300
    Height = 46
    BiDiMode = bdRightToLeftNoAlign
    Caption = ' User type '
    Color = clBtnHighlight
    Columns = 2
    DataField = 'Stat'
    DataSource = MyData.userds
    Items.Strings = (
      'Normal User'
      'Super User ')
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    TabOrder = 2
    Values.Strings = (
      '0'
      '1')
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 215
    Width = 231
    Height = 35
    DataSource = MyData.userds
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbPost, nbCancel]
    Kind = dbnHorizontal
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 245
    Top = 215
    Width = 64
    Height = 35
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 136
    Width = 300
    Height = 21
    DataField = 'role_descr'
    DataSource = MyData.userds
    TabOrder = 5
  end
  object edtPass: TEdit
    Left = 8
    Top = 101
    Width = 129
    Height = 21
    PasswordChar = '*'
    TabOrder = 6
  end
  object edtConfPass: TEdit
    Left = 143
    Top = 101
    Width = 134
    Height = 21
    PasswordChar = '*'
    TabOrder = 7
  end
  object ActionList1: TActionList
    Left = 264
    Top = 16
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = MyData.userds
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = MyData.userds
    end
  end
end
