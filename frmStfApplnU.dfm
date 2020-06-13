object frmStfAppln: TfrmStfAppln
  Left = 124
  Top = 70
  Width = 657
  Height = 516
  Caption = 'Staff Profile'
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
  object DBText1: TDBText
    Left = 16
    Top = 32
    Width = 200
    Height = 17
    DataField = 'Name_1'
    DataSource = MyData.StfApplnD
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label47: TLabel
    Left = 264
    Top = 8
    Width = 121
    Height = 29
    Caption = ' Staff Profile '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Impact'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 11
    Top = 48
    Width = 625
    Height = 393
    ActivePage = TabSheet2
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Personal Information'
      object Bevel1: TBevel
        Left = 8
        Top = 10
        Width = 601
        Height = 345
        Shape = bsFrame
      end
      object Label1: TLabel
        Left = 18
        Top = 25
        Width = 50
        Height = 13
        Caption = 'Appln. No.'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 18
        Top = 104
        Width = 74
        Height = 13
        Caption = 'Post Applied for'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 218
        Top = 103
        Width = 28
        Height = 13
        Caption = 'Name'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 18
        Top = 142
        Width = 59
        Height = 13
        Caption = 'Date of Birth'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 218
        Top = 141
        Width = 78
        Height = 13
        Caption = 'Contact Address'
        FocusControl = DBMemo1
      end
      object Label6: TLabel
        Left = 18
        Top = 184
        Width = 38
        Height = 13
        Caption = 'Tel. No.'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 16
        Top = 225
        Width = 63
        Height = 13
        Caption = 'Place of Birth'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 216
        Top = 224
        Width = 49
        Height = 13
        Caption = 'Nationality'
      end
      object Label9: TLabel
        Left = 16
        Top = 263
        Width = 64
        Height = 13
        Caption = 'Marital Status'
      end
      object Label15: TLabel
        Left = 462
        Top = 20
        Width = 28
        Height = 13
        Caption = 'Photo'
        FocusControl = DBImage1
      end
      object Label20: TLabel
        Left = 216
        Top = 261
        Width = 40
        Height = 13
        Caption = 'Interests'
        FocusControl = DBMemo5
      end
      object Label49: TLabel
        Left = 18
        Top = 4
        Width = 165
        Height = 13
        Caption = ' Personal and Family Details '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 218
        Top = 25
        Width = 56
        Height = 13
        Caption = 'Appln. Date'
        FocusControl = DBEdit26
      end
      object Label48: TLabel
        Left = 16
        Top = 301
        Width = 47
        Height = 13
        Caption = 'File Name'
      end
      object btnPrevCont: TSpeedButton
        Left = 164
        Top = 313
        Width = 21
        Height = 21
        Hint = 'Preview contents'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
          07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
          0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnPrevContClick
      end
      object GroupBox1: TGroupBox
        Left = 408
        Top = 120
        Width = 193
        Height = 225
        Caption = ' Family Details '
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 11
        object Label11: TLabel
          Left = 14
          Top = 20
          Width = 115
          Height = 13
          Caption = 'Name of Spouse/Parent'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 11
          Top = 180
          Width = 38
          Height = 13
          Caption = 'Tel. No.'
          FocusControl = DBEdit12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 11
          Top = 100
          Width = 38
          Height = 13
          Caption = 'Address'
          FocusControl = DBMemo2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 10
          Top = 60
          Width = 55
          Height = 13
          Caption = 'Occupation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 112
          Top = 180
          Width = 70
          Height = 13
          Caption = 'No. of Children'
          FocusControl = DBEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit10: TDBEdit
          Left = 11
          Top = 36
          Width = 170
          Height = 21
          DataField = 'Name_2'
          DataSource = MyData.StfApplnD
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit12: TDBEdit
          Left = 13
          Top = 196
          Width = 84
          Height = 21
          DataField = 'Tel_No_2'
          DataSource = MyData.StfApplnD
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBMemo2: TDBMemo
          Left = 10
          Top = 112
          Width = 170
          Height = 65
          DataField = 'Addr_2'
          DataSource = MyData.StfApplnD
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 11
          Top = 76
          Width = 170
          Height = 21
          DataField = 'Occupation'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 112
          Top = 196
          Width = 70
          Height = 21
          DataField = 'Child_No'
          DataSource = MyData.StfApplnD
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object DBEdit1: TDBEdit
        Left = 18
        Top = 38
        Width = 100
        Height = 21
        DataField = 'Appln_No'
        DataSource = MyData.StfApplnD
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 18
        Top = 117
        Width = 170
        Height = 21
        DataField = 'Job_1'
        DataSource = MyData.StfApplnD
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 218
        Top = 116
        Width = 170
        Height = 21
        DataField = 'Name_1'
        DataSource = MyData.StfApplnD
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 18
        Top = 155
        Width = 170
        Height = 21
        DataField = 'DOB'
        DataSource = MyData.StfApplnD
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 18
        Top = 197
        Width = 170
        Height = 21
        DataField = 'Tel_No_1'
        DataSource = MyData.StfApplnD
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 238
        Width = 170
        Height = 21
        DataField = 'POB'
        DataSource = MyData.StfApplnD
        TabOrder = 7
      end
      object DBImage1: TDBImage
        Left = 494
        Top = 17
        Width = 105
        Height = 105
        DataField = 'Photo'
        DataSource = MyData.StfApplnD
        TabOrder = 12
      end
      object DBComboBox1: TDBComboBox
        Left = 216
        Top = 237
        Width = 170
        Height = 21
        DataField = 'Nationality'
        ItemHeight = 13
        Items.Strings = (
          'Indian'
          'Others')
        TabOrder = 8
      end
      object DBComboBox2: TDBComboBox
        Left = 16
        Top = 275
        Width = 170
        Height = 21
        DataField = 'Mar_Stat'
        DataSource = MyData.StfApplnD
        ItemHeight = 13
        Items.Strings = (
          'Single'
          'Married')
        TabOrder = 9
      end
      object DBMemo5: TDBMemo
        Left = 216
        Top = 274
        Width = 170
        Height = 65
        DataField = 'Interests'
        DataSource = MyData.StfApplnD
        TabOrder = 10
      end
      object DBEdit26: TDBEdit
        Left = 218
        Top = 38
        Width = 70
        Height = 21
        DataField = 'Appln_Date'
        DataSource = MyData.StfApplnD
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 218
        Top = 154
        Width = 170
        Height = 65
        DataField = 'Addr_1'
        DataSource = MyData.StfApplnD
        TabOrder = 5
      end
      object DBEdit18: TDBEdit
        Left = 16
        Top = 313
        Width = 145
        Height = 21
        DataField = 'Path'
        DataSource = MyData.StfApplnD
        TabOrder = 13
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Academic and Professional'
      ImageIndex = 1
      object Bevel2: TBevel
        Left = 8
        Top = 10
        Width = 601
        Height = 345
        Shape = bsFrame
      end
      object Label16: TLabel
        Left = 64
        Top = 252
        Width = 173
        Height = 13
        Caption = 'Scholarships/Awards/Honours'
        FocusControl = DBMemo3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 360
        Top = 252
        Width = 164
        Height = 13
        Caption = 'Research Work/Publications'
        FocusControl = DBMemo4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 16
        Top = 14
        Width = 123
        Height = 13
        Caption = 'Academic Information'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 16
        Top = 132
        Width = 151
        Height = 13
        Caption = 'Professional Qualifications'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 27
        Width = 585
        Height = 92
        DataSource = MyData.AcdD
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SL_NO'
            Title.Alignment = taCenter
            Title.Caption = 'No.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUALFN'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBJ'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSTITUTE'
            Title.Alignment = taCenter
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'YEAR'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARKS'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Div'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 145
        Width = 585
        Height = 92
        DataSource = MyData.ProD
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SL_NO'
            Title.Alignment = taCenter
            Title.Caption = 'No.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUALFN'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBJ'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSTITUTE'
            Title.Alignment = taCenter
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'YEAR'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARKS'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Div'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object DBMemo3: TDBMemo
        Left = 64
        Top = 265
        Width = 185
        Height = 65
        DataField = 'Scholarship'
        DataSource = MyData.StfApplnD
        TabOrder = 2
      end
      object DBMemo4: TDBMemo
        Left = 360
        Top = 265
        Width = 185
        Height = 65
        DataField = 'Research'
        DataSource = MyData.StfApplnD
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Language Profeciency'
      ImageIndex = 2
      object Bevel3: TBevel
        Left = 8
        Top = 10
        Width = 601
        Height = 345
        Shape = bsFrame
      end
      object Label51: TLabel
        Left = 114
        Top = 29
        Width = 148
        Height = 13
        Caption = 'Profeciency in Languages'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 211
        Top = 187
        Width = 161
        Height = 13
        Caption = 'Languages Spoken at Home'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid3: TDBGrid
        Left = 114
        Top = 42
        Width = 390
        Height = 110
        DataSource = MyData.Lang1D
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SL_NO'
            Title.Alignment = taCenter
            Title.Caption = 'No.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANGUAGE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Read'
            PickList.Strings = (
              'Yes'
              'No')
            Title.Alignment = taCenter
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Write'
            PickList.Strings = (
              'Yes'
              'No')
            Title.Alignment = taCenter
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Speak'
            PickList.Strings = (
              'Yes'
              'No')
            Title.Alignment = taCenter
            Width = 65
            Visible = True
          end>
      end
      object DBGrid8: TDBGrid
        Left = 211
        Top = 200
        Width = 192
        Height = 92
        DataSource = MyData.Lang2D
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SL_NO'
            Title.Alignment = taCenter
            Title.Caption = 'No.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LANGUAGE'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Work Experience'
      ImageIndex = 3
      object Bevel4: TBevel
        Left = 8
        Top = 10
        Width = 601
        Height = 345
        Shape = bsFrame
      end
      object Label22: TLabel
        Left = 38
        Top = 151
        Width = 24
        Height = 13
        Caption = 'Total'
        FocusControl = DBEdit7
      end
      object Label23: TLabel
        Left = 158
        Top = 151
        Width = 45
        Height = 13
        Caption = 'Teaching'
        FocusControl = DBEdit8
      end
      object Label24: TLabel
        Left = 278
        Top = 151
        Width = 65
        Height = 13
        Caption = 'Administration'
        FocusControl = DBEdit13
      end
      object Label25: TLabel
        Left = 398
        Top = 151
        Width = 26
        Height = 13
        Caption = 'Other'
        FocusControl = DBEdit14
      end
      object Label27: TLabel
        Left = 24
        Top = 202
        Width = 155
        Height = 13
        Caption = 'Name, Address, Tel. No. of orgn.'
        FocusControl = DBMemo6
      end
      object Label28: TLabel
        Left = 24
        Top = 285
        Width = 56
        Height = 13
        Caption = 'Designation'
        FocusControl = DBEdit16
      end
      object Label35: TLabel
        Left = 230
        Top = 319
        Width = 54
        Height = 13
        Caption = 'Allowances'
        FocusControl = DBEdit23
      end
      object Label33: TLabel
        Left = 230
        Top = 280
        Width = 45
        Height = 13
        Caption = 'Total Pay'
        FocusControl = DBEdit21
      end
      object Label30: TLabel
        Left = 230
        Top = 241
        Width = 77
        Height = 13
        Caption = 'Place of Posting'
        FocusControl = DBEdit19
      end
      object Label29: TLabel
        Left = 230
        Top = 202
        Width = 71
        Height = 13
        Caption = 'Date of Joining'
        FocusControl = DBEdit17
      end
      object Label37: TLabel
        Left = 237
        Top = 190
        Width = 147
        Height = 13
        Caption = 'Particulars of Present Job'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 318
        Top = 280
        Width = 26
        Height = 13
        Caption = 'Basic'
        FocusControl = DBEdit22
      end
      object Label36: TLabel
        Left = 318
        Top = 319
        Width = 31
        Height = 13
        Caption = 'Others'
        FocusControl = DBEdit24
      end
      object Label32: TLabel
        Left = 414
        Top = 241
        Width = 32
        Height = 13
        Caption = 'Details'
        FocusControl = DBMemo7
      end
      object Label31: TLabel
        Left = 414
        Top = 202
        Width = 31
        Height = 13
        Caption = 'Bond?'
      end
      object Label26: TLabel
        Left = 521
        Top = 202
        Width = 57
        Height = 13
        Caption = 'Time to Join'
        FocusControl = DBEdit15
      end
      object Label53: TLabel
        Left = 37
        Top = 139
        Width = 106
        Height = 13
        Caption = 'Experience (in Years) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 38
        Top = 13
        Width = 156
        Height = 13
        Caption = 'Details of Work Experience'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit7: TDBEdit
        Left = 38
        Top = 164
        Width = 50
        Height = 21
        DataField = 'Tot_Ex'
        DataSource = MyData.StfApplnD
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 158
        Top = 164
        Width = 50
        Height = 21
        DataField = 'Teach_Ex'
        DataSource = MyData.StfApplnD
        TabOrder = 2
      end
      object DBEdit13: TDBEdit
        Left = 278
        Top = 164
        Width = 50
        Height = 21
        DataField = 'Admin_Ex'
        DataSource = MyData.StfApplnD
        TabOrder = 3
      end
      object DBEdit14: TDBEdit
        Left = 398
        Top = 164
        Width = 50
        Height = 21
        DataField = 'Other_Ex'
        DataSource = MyData.StfApplnD
        TabOrder = 4
      end
      object DBMemo6: TDBMemo
        Left = 24
        Top = 215
        Width = 185
        Height = 65
        DataField = 'Curr_Orgn'
        DataSource = MyData.StfApplnD
        TabOrder = 5
      end
      object DBEdit16: TDBEdit
        Left = 24
        Top = 298
        Width = 150
        Height = 21
        DataField = 'Curr_Post'
        DataSource = MyData.StfApplnD
        TabOrder = 6
      end
      object DBEdit23: TDBEdit
        Left = 230
        Top = 332
        Width = 75
        Height = 21
        DataField = 'Allowances'
        DataSource = MyData.StfApplnD
        TabOrder = 11
      end
      object DBEdit21: TDBEdit
        Left = 230
        Top = 293
        Width = 75
        Height = 21
        DataField = 'Tot_Pay'
        DataSource = MyData.StfApplnD
        TabOrder = 9
      end
      object DBEdit19: TDBEdit
        Left = 230
        Top = 254
        Width = 150
        Height = 21
        DataField = 'Post_Place'
        DataSource = MyData.StfApplnD
        TabOrder = 8
      end
      object DBEdit17: TDBEdit
        Left = 230
        Top = 215
        Width = 70
        Height = 21
        DataField = 'DOJ'
        DataSource = MyData.StfApplnD
        TabOrder = 7
      end
      object DBEdit22: TDBEdit
        Left = 318
        Top = 293
        Width = 75
        Height = 21
        DataField = 'Basic'
        DataSource = MyData.StfApplnD
        TabOrder = 10
      end
      object DBEdit24: TDBEdit
        Left = 318
        Top = 332
        Width = 75
        Height = 21
        DataField = 'Others'
        DataSource = MyData.StfApplnD
        TabOrder = 12
      end
      object DBMemo7: TDBMemo
        Left = 414
        Top = 254
        Width = 185
        Height = 65
        DataField = 'Bond_Det'
        DataSource = MyData.StfApplnD
        TabOrder = 15
      end
      object DBComboBox3: TDBComboBox
        Left = 414
        Top = 215
        Width = 50
        Height = 21
        DataField = 'Bond_1'
        DataSource = MyData.StfApplnD
        ItemHeight = 13
        Items.Strings = (
          'Yes'
          'No')
        TabOrder = 13
      end
      object DBEdit15: TDBEdit
        Left = 522
        Top = 215
        Width = 50
        Height = 21
        DataField = 'Time_to_Join'
        DataSource = MyData.StfApplnD
        TabOrder = 14
      end
      object DBGrid4: TDBGrid
        Left = 38
        Top = 26
        Width = 540
        Height = 110
        DataSource = MyData.WorkExD
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SL_NO'
            Title.Alignment = taCenter
            Title.Caption = 'No.'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSTITUTE'
            Title.Alignment = taCenter
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'From'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'To'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POST'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBJ_CLS'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Other Information'
      ImageIndex = 4
      object Bevel5: TBevel
        Left = 8
        Top = 10
        Width = 601
        Height = 345
        Shape = bsFrame
      end
      object Label38: TLabel
        Left = 14
        Top = 14
        Width = 180
        Height = 13
        Caption = 'Seminars and Courses attended'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 14
        Top = 127
        Width = 151
        Height = 13
        Caption = 'Three Books recently read'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label46: TLabel
        Left = 14
        Top = 239
        Width = 66
        Height = 13
        Caption = 'References'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 417
        Top = 271
        Width = 48
        Height = 13
        Caption = 'Statement'
        FocusControl = DBMemo10
      end
      object Label43: TLabel
        Left = 417
        Top = 188
        Width = 59
        Height = 13
        Caption = 'Case Details'
        FocusControl = DBMemo9
      end
      object Label42: TLabel
        Left = 417
        Top = 149
        Width = 50
        Height = 13
        Caption = 'Law_Case'
      end
      object Label41: TLabel
        Left = 417
        Top = 66
        Width = 32
        Height = 13
        Caption = 'Details'
        FocusControl = DBMemo8
      end
      object Label40: TLabel
        Left = 417
        Top = 27
        Width = 29
        Height = 13
        Caption = 'Illness'
      end
      object Label45: TLabel
        Left = 417
        Top = 14
        Width = 99
        Height = 13
        Caption = 'Other Information'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid5: TDBGrid
        Left = 14
        Top = 27
        Width = 374
        Height = 92
        DataSource = MyData.SemCorD
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SL_NO'
            Title.Alignment = taCenter
            Title.Caption = 'No.'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEMINAR'
            Title.Alignment = taCenter
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DURATION'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATES'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Description'
            Width = 100
            Visible = True
          end>
      end
      object DBGrid6: TDBGrid
        Left = 14
        Top = 140
        Width = 374
        Height = 92
        DataSource = MyData.dsBooks
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SL_NO'
            Title.Alignment = taCenter
            Title.Caption = 'No.'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITLE'
            Title.Alignment = taCenter
            Width = 217
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AUTHORS'
            Title.Alignment = taCenter
            Width = 105
            Visible = True
          end>
      end
      object DBGrid7: TDBGrid
        Left = 14
        Top = 252
        Width = 374
        Height = 92
        DataSource = MyData.RefsD
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SLNO'
            Title.Alignment = taCenter
            Title.Caption = 'No.'
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Alignment = taCenter
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCCUPATION'
            Title.Alignment = taCenter
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADDR'
            Title.Alignment = taCenter
            Title.Caption = 'Address'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEL_NO'
            Title.Alignment = taCenter
            Title.Caption = 'Phone'
            Width = 57
            Visible = True
          end>
      end
      object DBMemo10: TDBMemo
        Left = 417
        Top = 284
        Width = 185
        Height = 65
        DataField = 'Statement'
        DataSource = MyData.StfApplnD
        TabOrder = 7
      end
      object DBMemo9: TDBMemo
        Left = 417
        Top = 201
        Width = 185
        Height = 65
        DataField = 'Case_Det'
        DataSource = MyData.StfApplnD
        TabOrder = 6
      end
      object DBComboBox5: TDBComboBox
        Left = 417
        Top = 162
        Width = 45
        Height = 21
        DataField = 'Law_Case'
        DataSource = MyData.StfApplnD
        ItemHeight = 13
        Items.Strings = (
          'Yes'
          'No')
        TabOrder = 5
      end
      object DBMemo8: TDBMemo
        Left = 417
        Top = 79
        Width = 185
        Height = 65
        DataField = 'Ill_Det'
        DataSource = MyData.StfApplnD
        TabOrder = 4
      end
      object DBComboBox4: TDBComboBox
        Left = 417
        Top = 40
        Width = 45
        Height = 21
        DataField = 'Illness'
        DataSource = MyData.StfApplnD
        ItemHeight = 13
        Items.Strings = (
          'Yes'
          'No')
        TabOrder = 3
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 48
    Top = 450
    Width = 198
    Height = 33
    DataSource = MyData.StfApplnD
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbCancel]
    TabOrder = 1
  end
  object btnSave: TBitBtn
    Left = 461
    Top = 450
    Width = 75
    Height = 33
    Action = MyData.dsSav
    Caption = '&Save'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
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
    Left = 536
    Top = 450
    Width = 75
    Height = 33
    Action = MyData.dsIns
    Caption = '&New'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
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
end