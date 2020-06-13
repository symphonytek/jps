object frmMarkEntry: TfrmMarkEntry
  Left = 208
  Top = 105
  BorderStyle = bsDialog
  Caption = 'Mark Entry '
  ClientHeight = 367
  ClientWidth = 543
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
  object Label3: TLabel
    Left = 189
    Top = 8
    Width = 165
    Height = 29
    Alignment = taCenter
    Caption = ' Mark Entry Form '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 96
    Width = 30
    Height = 13
    Caption = 'Studid'
    FocusControl = DBEdit1
  end
  object Label4: TLabel
    Left = 24
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Studnm'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 152
    Width = 481
    Height = 145
    DataSource = MyData.dsMarksubdet
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = DBGrid1EditButtonClick
    Columns = <
      item
        Expanded = False
        FieldName = 'SrlNo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Rno'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Term'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Subjcd'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Markobt'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SubjName'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Subjtot'
        Width = 136
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 56
    Top = 320
    Width = 232
    Height = 33
    DataSource = MyData.Dsmarkmast
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 328
    Top = 320
    Width = 75
    Height = 33
    TabOrder = 2
    Kind = bkClose
  end
  object BitBtn2: TBitBtn
    Left = 408
    Top = 320
    Width = 81
    Height = 33
    Caption = '&Auto Entry'
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337FF3333333333330003333333333333777F333333333333080333
      3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
      33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
      B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
      BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
      B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
      3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
      333333333337F33333333333333B333333333333333733333333}
    NumGlyphs = 2
  end
  object DBGrid2: TDBGrid
    Left = 264
    Top = 56
    Width = 241
    Height = 81
    DataSource = MyData.Dsmarkdet
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'StudId'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Term'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SrlNo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Totmark'
        Width = 104
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 96
    Width = 129
    Height = 21
    DataField = 'Studid'
    DataSource = MyData.Dsmarkmast
    TabOrder = 5
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 104
    Top = 56
    Width = 134
    Height = 21
    DataField = 'Studname'
    DataSource = MyData.Dsmarkmast
    TabOrder = 6
  end
end
