object frmDueDt: TfrmDueDt
  Left = 0
  Top = 0
  Caption = 'Due date '
  ClientHeight = 515
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 331
    Height = 441
    DataSource = MyData.fees_duedtS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'mnth'
        Title.Caption = 'Month'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fee_dt'
        Title.Caption = 'Due date'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 471
    Width = 238
    Height = 33
    DataSource = MyData.fees_duedtS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbCancel]
    Kind = dbnHorizontal
    TabOrder = 1
  end
end
