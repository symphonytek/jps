object frmSMSSend: TfrmSMSSend
  Left = 0
  Top = 0
  Caption = 'Send SMS'
  ClientHeight = 377
  ClientWidth = 702
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
    Left = 10
    Top = 16
    Width = 25
    Height = 13
    Caption = 'Class'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 53
    Top = 15
    Width = 156
    Height = 21
    KeyField = 'ClCode'
    ListField = 'Clcaption'
    ListSource = MyData.ClMastS
    TabOrder = 0
  end
  object btnSend: TButton
    Left = 296
    Top = 11
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 1
    OnClick = btnSendClick
  end
  object btnGetList: TButton
    Left = 215
    Top = 11
    Width = 75
    Height = 25
    Caption = 'Get list'
    TabOrder = 2
    OnClick = btnGetListClick
  end
  object btnCheckBal: TButton
    Left = 448
    Top = 11
    Width = 97
    Height = 25
    Caption = 'Check Balance'
    TabOrder = 3
    OnClick = btnCheckBalClick
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 42
    Width = 686
    Height = 330
    ActivePage = pg_sendsms
    TabOrder = 4
    object pg_sendsms: TTabSheet
      Caption = 'Send SMS'
      object mmPhoneList: TRichEdit
        Left = 429
        Top = 3
        Width = 246
        Height = 296
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'mmPhoneList')
        ParentFont = False
        TabOrder = 0
        Zoom = 100
      end
      object mmMsg: TMemo
        Left = 8
        Top = 3
        Width = 415
        Height = 216
        Lines.Strings = (
          'Type your message here')
        TabOrder = 1
      end
      object mmLog: TMemo
        Left = 8
        Top = 225
        Width = 415
        Height = 74
        Lines.Strings = (
          '')
        TabOrder = 2
      end
    end
    object History: TTabSheet
      Caption = 'History'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 678
        Height = 302
        Align = alClient
        DataSource = MyData.dsSmslog
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    Client = NetHTTPClient1
    Left = 392
    Top = 8
  end
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    AllowCookies = True
    HandleRedirects = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 552
    Top = 8
  end
end
