object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 10
  Margins.Top = 10
  Margins.Right = 10
  Margins.Bottom = 10
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'EWSS'
  ClientHeight = 543
  ClientWidth = 608
  Color = clWhite
  CustomTitleBar.CaptionAlignment = taCenter
  CustomTitleBar.SystemColors = False
  CustomTitleBar.BackgroundColor = clNavy
  CustomTitleBar.ForegroundColor = 65793
  CustomTitleBar.InactiveBackgroundColor = clWhite
  CustomTitleBar.InactiveForegroundColor = 10066329
  CustomTitleBar.ButtonForegroundColor = 65793
  CustomTitleBar.ButtonBackgroundColor = clWhite
  CustomTitleBar.ButtonHoverForegroundColor = 65793
  CustomTitleBar.ButtonHoverBackgroundColor = 16053492
  CustomTitleBar.ButtonPressedForegroundColor = 65793
  CustomTitleBar.ButtonPressedBackgroundColor = 15395562
  CustomTitleBar.ButtonInactiveForegroundColor = 10066329
  CustomTitleBar.ButtonInactiveBackgroundColor = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesktopCenter
  StyleElements = [seFont, seClient]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object pTop: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 89
    Align = alTop
    BevelEdges = []
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object ltopEditionID: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 29
      Width = 602
      Height = 17
      Margins.Top = 0
      Margins.Bottom = 2
      Align = alTop
      Alignment = taRightJustify
      Caption = '%EditionID from REG%'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semilight'
      Font.Style = [fsItalic]
      ParentFont = False
      ExplicitLeft = 478
      ExplicitWidth = 127
    end
    object ltopIsAdmin: TLabel
      Left = 0
      Top = 48
      Width = 608
      Height = 15
      Align = alTop
      Alignment = taRightJustify
      Caption = 'Is Admin'
      ExplicitLeft = 561
      ExplicitWidth = 47
    end
    object ltopIsElevated: TLabel
      Left = 0
      Top = 63
      Width = 608
      Height = 15
      Align = alTop
      Alignment = taRightJustify
      Caption = 'Is Elevated'
      ExplicitLeft = 553
      ExplicitWidth = 55
    end
    object ltopPN: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 5
      Width = 602
      Height = 21
      Margins.Top = 5
      Align = alTop
      Alignment = taRightJustify
      Caption = '%ProductName from REG%'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 417
      ExplicitWidth = 188
    end
    object cbOpenActivator: TCheckBox
      Left = 8
      Top = 69
      Width = 130
      Height = 17
      Hint = 'KMS '#1040#1082#1090#1080#1074#1072#1094#1080#1103', '#1076#1083#1103' '#1085#1077#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1048#1085#1090#1077#1088#1085#1077#1090#1091'.'
      Align = alCustom
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1040#1082#1090#1080#1074#1072#1090#1086#1088
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 0
      OnClick = cbOpenActivatorClick
    end
    object AI1: TActivityIndicator
      Left = 8
      Top = 9
      FrameDelay = 45
      IndicatorSize = aisLarge
    end
  end
  object pcMain: TPageControl
    Left = 0
    Top = 89
    Width = 608
    Height = 454
    ActivePage = pcMMC
    Align = alTop
    MultiLine = True
    TabOrder = 1
    ExplicitTop = 92
    object pcEZM: TTabSheet
      Caption = #1054#1073#1097#1080#1077
      object pEzButtons: TPanel
        Left = 0
        Top = 0
        Width = 600
        Height = 424
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object bEzSPA: TButton
          Left = 10
          Top = 326
          Width = 579
          Height = 25
          Align = alCustom
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1089#1080#1089#1090#1077#1084#1099
          ElevationRequired = True
          TabOrder = 0
          OnClick = bEzSPAClick
        end
        object bEzCMDAs: TButton
          Left = 10
          Top = 295
          Width = 579
          Height = 25
          Caption = #1050#1086#1084#1072#1085#1076#1085#1072#1103' '#1089#1090#1088#1086#1082#1072
          ElevationRequired = True
          TabOrder = 1
          OnClick = bEzCMDAsClick
        end
        object bEzControl: TButton
          Left = 10
          Top = 388
          Width = 189
          Height = 25
          Align = alCustom
          Caption = #1055#1072#1085#1077#1083#1100' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
          TabOrder = 2
          OnClick = bEzControlClick
        end
        object bEzMSConfig: TButton
          Left = 205
          Top = 388
          Width = 189
          Height = 25
          Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1103' '#1089#1080#1089#1090#1077#1084#1099
          ElevationRequired = True
          TabOrder = 3
          OnClick = bEzMSConfigClick
        end
        object bEzPowershell: TButton
          Left = 10
          Top = 357
          Width = 280
          Height = 25
          Align = alCustom
          Caption = 'Powershell'
          ElevationRequired = True
          TabOrder = 4
          OnClick = bEzPowershellClick
        end
        object bEzREG: TButton
          Left = 400
          Top = 388
          Width = 189
          Height = 25
          Align = alCustom
          Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1088#1077#1077#1089#1090#1088#1072
          ElevationRequired = True
          TabOrder = 5
          OnClick = bEzREGClick
        end
        object bEzUAC: TButton
          Left = 296
          Top = 357
          Width = 293
          Height = 25
          Align = alCustom
          Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1082#1086#1085#1090#1088#1086#1083#1103' '#1059#1047
          ElevationRequired = True
          TabOrder = 6
          OnClick = bEzPowershellClick
        end
      end
    end
    object pcEZC: TTabSheet
      Caption = #1041#1099#1089#1090#1088#1099#1077' '#1082#1086#1084#1072#1085#1076#1099
      ImageIndex = 1
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 387
        Width = 594
        Height = 34
        Align = alBottom
        Alignment = taCenter
        Caption = 
          #1044#1083#1103' '#1073#1086#1083#1100#1096#1080#1085#1089#1090#1074#1072' '#1084#1072#1085#1080#1087#1091#1083#1103#1094#1080#1081' '#1089#1086' '#1079#1085#1072#1095#1077#1085#1080#1103#1084#1080' '#1080' '#1090'.'#1087'. '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1080#1085 +
          #1090#1077#1088#1087#1088#1077#1090#1072#1090#1086#1088' Powershell'#13#10#1059#1095#1080#1090#1099#1074#1072#1081#1090#1077' '#1101#1090#1086' '#1087#1088#1080' '#1088#1072#1073#1086#1090#1077' '#1089' '#1087#1088#1086#1075#1088#1072#1084#1084#1086#1081'.'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = 3618802
        Font.Height = -13
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 538
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 0
        Width = 310
        Height = 57
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100' Net-BIOS '#1080#1084#1103' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072'/'#1089#1077#1088#1074#1077#1088#1072
        TabOrder = 0
        object bNewHostname: TButton
          Left = 207
          Top = 21
          Width = 97
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Enabled = False
          TabOrder = 0
          OnClick = bNewHostnameClick
        end
        object eNewHostname: TEdit
          Left = 8
          Top = 23
          Width = 193
          Height = 23
          Hint = 
            #1048#1084#1103' '#1093#1086#1089#1090#1072' '#1076#1086#1083#1078#1085#1086' '#1073#1099#1090#1100' '#1085#1077' '#1073#1086#1083#1077#1077' 15 '#1089#1080#1084#1074#1086#1083#1086#1074', '#1074' '#1089#1083#1091#1095#1072#1077' '#1085#1077#1087#1086#1076#1093#1086#1076#1103#1097#1080 +
            #1093' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074', '#1080#1084#1103' '#1085#1077' '#1087#1088#1080#1084#1077#1085#1080#1090#1089#1103
          MaxLength = 15
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '%hostname%'
          OnChange = eNewHostnameChange
        end
      end
    end
    object pcActivator: TTabSheet
      Caption = #1040#1082#1090#1080#1074#1072#1090#1086#1088
      ImageIndex = 2
      object gbActivator: TGroupBox
        Left = 0
        Top = -2
        Width = 600
        Height = 426
        Align = alBottom
        Caption = #1040#1082#1090#1080#1074#1072#1090#1086#1088' Windows Server'
        Enabled = False
        TabOrder = 0
        Visible = False
        object lOSChosen: TLabel
          Left = 14
          Top = 74
          Width = 313
          Height = 15
          Align = alCustom
          AutoSize = False
          Caption = #1054#1057': '
        end
        object eOSKey: TEdit
          Left = 14
          Top = 95
          Width = 284
          Height = 23
          Align = alCustom
          Alignment = taCenter
          ReadOnly = True
          TabOrder = 0
          Text = 'XXXXX-XXXXX-XXXXX-XXXXX-XXXXX'
        end
        object bAct: TButton
          Left = 423
          Top = 95
          Width = 165
          Height = 25
          Align = alCustom
          Caption = #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' Windows'
          Enabled = False
          TabOrder = 1
          OnClick = bActClick
        end
        object bChooseKey: TButton
          Left = 2
          Top = 126
          Width = 596
          Height = 25
          Align = alBottom
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1082#1083#1102#1095
          TabOrder = 2
          OnClick = bChooseKeyClick
        end
        object bSetGVLK: TButton
          Left = 304
          Top = 95
          Width = 113
          Height = 25
          Align = alCustom
          Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1082#1083#1102#1095
          Enabled = False
          TabOrder = 3
          OnClick = bSetGVLKClick
        end
        object gbKMSServers: TGroupBox
          Left = 14
          Top = 27
          Width = 574
          Height = 41
          Caption = 'KMS Servers Online'
          TabOrder = 4
          Visible = False
          object lKMS01: TLabel
            Left = 36
            Top = 16
            Width = 155
            Height = 15
            AutoSize = False
            Caption = '127.0.0.1'
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object lKMS02: TLabel
            Left = 221
            Top = 16
            Width = 155
            Height = 15
            AutoSize = False
            Caption = '127.0.0.1'
          end
          object shOnline1: TShape
            Left = 15
            Top = 18
            Width = 17
            Height = 10
            Pen.Style = psClear
            Shape = stCircle
          end
          object shOnline2: TShape
            Left = 200
            Top = 18
            Width = 17
            Height = 10
            Pen.Style = psClear
            Shape = stCircle
          end
          object bSetServer: TButton
            Left = 418
            Top = 10
            Width = 153
            Height = 26
            Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' KMS '#1089#1077#1088#1074#1077#1088
            TabOrder = 0
            OnClick = bSetServerClick
          end
        end
        object vleOSKeys: TValueListEditor
          Left = 2
          Top = 151
          Width = 596
          Height = 273
          Align = alBottom
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goThumbTracking]
          Strings.Strings = (
            #8212' Windows Server 2022='
            
              'Windows Server 2022 Datacenter          =WX4NM-KYWYW-QJJR4-XV3QB' +
              '-6VM33'
            
              'Windows Server 2022 Standard            =VDYBN-27WPP-V4HQT-9VMD4' +
              '-VMK7H'
            ' ='
            #8212' Windows Server 2019='
            
              'Windows Server 2019 Datacenter          =WMDGN-G9PQG-XVVXX-R3X43' +
              '-63DFG'
            
              'Windows Server 2019 Standard            =N69G4-B89J2-4G8F4-WWYCC' +
              '-J464C'
            
              'Windows Server 2019 Essentials          =WVDHN-86M7X-466P6-VHXV7' +
              '-YY726'
            ' ='
            #8212' Windows Server 2016='
            
              'Windows Server 2016 Datacenter          =CB7KF-BWN84-R7R2Y-793K2' +
              '-8XDDG'
            
              'Windows Server 2016 Standard            =WC2BQ-8NRM3-FDDYY-2BFGV' +
              '-KHKQY'
            
              'Windows Server 2016 Essentials          =JCKRF-N37P4-C2D82-9YXRT' +
              '-4M63B'
            ' ='
            #8212' Windows Server 2012 R2='
            
              'Windows Server 2012 R2 Standard'#9'        =D2N9P-3P6X9-2R39C-7RTCD' +
              '-MDVJX'
            'Windows Server 2012 R2 Datacenter'#9'=W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9'
            'Windows Server 2012 R2 Essentials'#9'=KNC87-3J2TX-XB4WP-VCPJV-M4FWM'
            ' ='
            #8212' Windows Server 2012='
            'Windows Server 2012'#9#9#9'=BN3D2-R7TKB-3YPBD-8DRP2-27GG4'
            'Windows Server 2012 N'#9#9#9'=8N2M2-HWPGY-7PGT9-HGDD8-GVGGY'
            
              'Windows Server 2012 Single Language'#9'=2WN2H-YGCQR-KFX6K-CD6TF-84Y' +
              'XQ'
            
              'Windows Server 2012 Country Specific'#9'=4K36P-JN4VD-GDC6V-KDT89-DY' +
              'FKP'
            'Windows Server 2012 Standard'#9#9'=XC9B7-NBPP2-83J2H-RHMBY-92BT4'
            
              'Windows Server 2012 MultiPoint Standard'#9'=HM7DN-YVMH3-46JC3-XYTG7' +
              '-CYQJJ'
            
              'Windows Server 2012 MultiPoint Premium'#9'=XNH6W-2V9GX-RGJ4K-Y8X6F-' +
              'QGJ2G'
            'Windows Server 2012 Datacenter'#9#9'=48HP8-DN98B-MYWDG-T2DCC-8W83P'
            ' ='
            #8212' Windows Server 2008 R2='
            'Windows Server 2008 R2 Web'#9#9#9'=6TPJF-RBVHG-WBW2R-86QPH-6RTM4'
            
              'Windows Server 2008 R2 HPC edition'#9#9'=TT8MH-CG224-D3D7Q-498W2-9QC' +
              'TX'
            'Windows Server 2008 R2 Standard'#9#9#9'=YC6KT-GKW9T-YTKYR-T4X34-R7VHC'
            
              'Windows Server 2008 R2 Enterprise'#9#9'=489J6-VHDMP-X63PK-3K798-CPX3' +
              'Y'
            
              'Windows Server 2008 R2 Datacenter'#9#9'=74YFP-3QFB3-KQT8W-PMXWJ-7M64' +
              '8'
            ' ='
            #8212' Windows Server 2008='
            'Windows Web Server 2008'#9#9#9#9'=WYR28-R7TFJ-3X2YQ-YCY4H-M249D'
            'Windows Server 2008 Standard'#9#9#9'=TM24T-X9RMF-VWXK6-X8JC9-BFGM2'
            
              'Windows Server 2008 Standard without Hyper-V'#9'=W7VD6-7JFBR-RX26B-' +
              'YKQ3Y-6FFFJ'
            'Windows Server 2008 Enterprise'#9#9#9'=YQGMW-MPWTJ-34KDK-48M3W-X4Q6V'
            
              'Windows Server 2008 Enterprise without Hyper-V'#9'=39BXF-X8Q23-P2WW' +
              'T-38T2F-G3FPG'
            'Windows Server 2008 HPC'#9#9#9#9'=RCTX3-KWVHP-BR6TB-RB6DM-6X7HP'
            'Windows Server 2008 Datacenter'#9#9#9'=7M67G-PC374-GR742-YH8V4-TCBY3'
            
              'Windows Server 2008 Datacenter without Hyper-V'#9'=22XQ2-VRXRG-P8D4' +
              '2-K34TD-G3QQC'
            
              'Windows Server 2008 for Itanium-Based Systems'#9'=4DWFP-JF3DJ-B7DTH' +
              '-78FJB-PDRHK')
          TabOrder = 5
          TitleCaptions.Strings = (
            'OS'
            'Key')
          ColWidths = (
            286
            287)
        end
      end
    end
    object pcMMC: TTabSheet
      Caption = #1054#1089#1085#1072#1089#1090#1082#1080' '#1082#1086#1085#1089#1086#1083#1080' MMC'
      ImageIndex = 3
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 600
        Height = 85
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 
          #1042' '#1101#1090#1086#1084' '#1084#1077#1085#1102' '#1074#1099' '#1087#1086#1083#1091#1095#1072#1077#1090#1077' '#1073#1099#1089#1090#1088#1099#1081' '#1076#1086#1089#1090#1091#1087' '#1082' '#1054#1089#1085#1072#1089#1090#1082#1072#1084' '#1082#1086#1085#1089#1086#1083#1080' MMC ' +
          #1080' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1084' '#1091#1090#1080#1083#1080#1090#1072#1084' Windows. '#1054#1089#1085#1072#1089#1090#1082#1080' '#1085#1077' '#1082#1086#1084#1073#1080#1085#1080#1088#1091#1102#1090#1089#1103' '#1080' '#1086 +
          #1090#1082#1088#1099#1074#1072#1102#1090#1089#1103' '#1082#1072#1078#1076#1072#1103' '#1074' '#1089#1074#1086#1077#1084' '#1086#1082#1085#1077'. '#1044#1083#1103' '#1082#1086#1084#1073#1080#1085#1072#1094#1080#1080' '#1086#1089#1085#1072#1089#1090#1086#1082': '#1085#1077#1086#1073#1093#1086#1076 +
          #1080#1084#1086' '#1089#1072#1084#1086#1089#1090#1086#1103#1090#1077#1083#1100#1085#1086' '#1079#1072#1087#1091#1089#1082#1072#1090#1100' '#1082#1086#1085#1089#1086#1083#1100' MMC.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object GroupBox4: TGroupBox
        Left = 11
        Top = 347
        Width = 278
        Height = 62
        Caption = #1057#1077#1090#1100
        TabOrder = 0
        object Button6: TButton
          Left = 16
          Top = 24
          Width = 249
          Height = 25
          Caption = #1057#1077#1090#1077#1074#1099#1077' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1080' '#1072#1076#1072#1087#1090#1077#1088#1099
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 11
        Top = 223
        Width = 278
        Height = 118
        Caption = #1054#1073#1097#1080#1077' '#1088#1077#1089#1091#1088#1089#1099' '#1080' '#1076#1080#1089#1082#1080
        TabOrder = 1
        object bEZfgmgr: TButton
          Left = 16
          Top = 24
          Width = 249
          Height = 25
          Caption = #1052#1072#1089#1090#1077#1088' '#1086#1073#1097#1080#1093' '#1088#1077#1089#1091#1088#1089#1086#1074
          TabOrder = 0
        end
        object Button5: TButton
          Left = 16
          Top = 55
          Width = 249
          Height = 25
          Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1076#1080#1089#1082#1072#1084#1080
          TabOrder = 1
        end
        object Button7: TButton
          Left = 16
          Top = 86
          Width = 249
          Height = 25
          Caption = #1054#1095#1080#1089#1090#1082#1072' '#1076#1080#1089#1082#1072
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 11
        Top = 91
        Width = 278
        Height = 126
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' '#1080' '#1087#1086#1083#1080#1090#1080#1082#1080
        TabOrder = 2
        object bEZlusrmgr: TButton
          Left = 11
          Top = 24
          Width = 254
          Height = 25
          Caption = #1051#1086#1082#1072#1083#1100#1085#1099#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' '#1080' '#1075#1088#1091#1087#1087#1099
          TabOrder = 0
        end
        object bEZgpedit: TButton
          Left = 11
          Top = 55
          Width = 254
          Height = 25
          Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1083#1086#1082#1072#1083#1100#1085#1086#1081' '#1075#1088#1091#1087#1087#1086#1074#1086#1081' '#1087#1086#1083#1080#1090#1080#1082#1080
          TabOrder = 1
        end
        object lEZsecpol: TButton
          Left = 11
          Top = 86
          Width = 254
          Height = 25
          Caption = #1051#1086#1082#1072#1083#1100#1085#1072#1103' '#1087#1086#1083#1080#1090#1080#1082#1072' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
          TabOrder = 2
        end
      end
    end
  end
  object icmpC1: TIdIcmpClient
    Protocol = 1
    ProtocolIPv6 = 58
    Left = 512
    Top = 56
  end
end
