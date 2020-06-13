object frmAdHoc: TfrmAdHoc
  Left = 0
  Top = 0
  Caption = 'Ad Hoc Charges'
  ClientHeight = 375
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object CRDBGrid1: TCRDBGrid
    Left = 8
    Top = 118
    Width = 617
    Height = 249
    OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
    DataSource = MyData.dsAdhocfee
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dt'
        Title.Caption = 'Date'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'studid'
        Title.Caption = 'STUDID'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'studname'
        Title.Caption = 'Name'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ac_no'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'acname'
        Title.Caption = 'Head'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amount'
        Title.Caption = 'Amount'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'paid'
        ReadOnly = True
        Title.Caption = 'Paid'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mr_no'
        ReadOnly = True
        Title.Caption = 'MR_NO'
        Width = 88
        Visible = True
      end>
  end
end
