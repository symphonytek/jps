object frmFeeColl: TfrmFeeColl
  Left = 85
  Top = 143
  Width = 534
  Height = 385
  Caption = 'Fees Collection'
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
    Left = 8
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Memo No'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 424
    Top = 56
    Width = 23
    Height = 13
    Caption = 'Date'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 8
    Top = 88
    Width = 33
    Height = 13
    Caption = 'StudID'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 256
    Top = 128
    Width = 58
    Height = 13
    Caption = 'Monthly Fee'
    FocusControl = DBEdit5
  end
  object Label3: TLabel
    Left = 152
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Name'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 128
    Width = 145
    Height = 13
    Caption = 'No. of Months you want to pay'
    FocusControl = DBEdit6
  end
  object DBText1: TDBText
    Left = 440
    Top = 128
    Width = 65
    Height = 17
    DataField = 'tmAmt'
  end
  object DBText2: TDBText
    Left = 16
    Top = 272
    Width = 361
    Height = 17
    DataField = 'amtwrd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 384
    Top = 272
    Width = 24
    Height = 13
    Caption = 'Total'
    FocusControl = DBEdit3
  end
  object Label8: TLabel
    Left = 176
    Top = 8
    Width = 148
    Height = 29
    Caption = 'Fees Collection'
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 56
    Width = 64
    Height = 21
    DataField = 'TRNO'
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 456
    Top = 56
    Width = 64
    Height = 21
    DataField = 'TRDate'
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 72
    Top = 88
    Width = 64
    Height = 21
    DataField = 'StudID'
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 328
    Top = 128
    Width = 64
    Height = 21
    DataField = 'Mfee'
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 168
    Top = 128
    Width = 64
    Height = 21
    DataField = 'Nomp'
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 152
    Top = 88
    Width = 241
    Height = 21
    DataField = 'stName'
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 160
    Width = 505
    Height = 105
    PopupMenu = PopupMenu1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SlNo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TRNO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Icode'
        Title.Caption = 'Item Code'
        Width = 69
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'ItemDesc'
        Title.Caption = 'Description'
        Width = 259
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Charge'
        Visible = True
      end>
  end
  object DBEdit3: TDBEdit
    Left = 432
    Top = 272
    Width = 80
    Height = 21
    DataField = 'TRAmt'
    TabOrder = 7
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 312
    Width = 228
    Height = 33
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbCancel]
    TabOrder = 8
  end
  object btnSave: TBitBtn
    Left = 277
    Top = 313
    Width = 76
    Height = 32
    Hint = 'Post'
    Caption = '&Save'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = btnSaveClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
  end
  object btnNew: TBitBtn
    Left = 368
    Top = 313
    Width = 73
    Height = 32
    Hint = 'Insert'
    Caption = '&New'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = btnNewClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
      333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
      0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
      0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
      33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
      B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
      3BB33773333773333773B333333B3333333B7333333733333337}
    NumGlyphs = 2
  end
  object btnPreview: TBitBtn
    Left = 448
    Top = 312
    Width = 33
    Height = 33
    Hint = 'Preview'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      033333777777777773333330777777703333333773F333773333333330888033
      33333FFFF7FFF7FFFFFF0000000000000003777777777777777F0FFFFFFFFFF9
      FF037F3333333337337F0F78888888887F037F33FFFFFFFFF37F0F7000000000
      8F037F3777777777F37F0F70AAAAAAA08F037F37F3333337F37F0F70ADDDDDA0
      8F037F37F3333337F37F0F70A99A99A08F037F37F3333337F37F0F70A99A99A0
      8F037F37F3333337F37F0F70AAAAAAA08F037F37FFFFFFF7F37F0F7000000000
      8F037F3777777777337F0F77777777777F037F3333333333337F0FFFFFFFFFFF
      FF037FFFFFFFFFFFFF7F00000000000000037777777777777773}
    NumGlyphs = 2
  end
  object btnPrint: TBitBtn
    Left = 480
    Top = 312
    Width = 33
    Height = 33
    Hint = 'Print'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
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
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 56
    object Insert1: TMenuItem
      Action = DataSetInsert1
    end
    object Delete1: TMenuItem
      Action = DataSetDelete1
    end
    object Post1: TMenuItem
      Action = DataSetPost1
    end
    object Refresh1: TMenuItem
      Action = DataSetRefresh1
    end
  end
  object ActionList1: TActionList
    Left = 352
    Top = 32
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
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
    end
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = 'Dataset'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 9
    end
  end
end
