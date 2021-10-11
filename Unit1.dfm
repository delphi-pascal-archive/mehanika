object Form1: TForm1
  Left = 216
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1052#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099' '#1082#1088#1080#1074#1086#1096#1080#1087#1085#1086#1075#1086' '#1084#1077#1093#1072#1085#1080#1079#1084#1072
  ClientHeight = 690
  ClientWidth = 896
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = '1.hlp'
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCC0
    000CCCC0000000000CCCC7777CCCCCCC0000CCCC00000000CCCC7777CCCCCCCC
    C0000CCCCCCCCCCCCCC7777CCCCC0CCCCC0000CCCCCCCCCCCC7777CCCCC700CC
    C00CCCC0000000000CCCC77CCC77000C0000CCCC00000000CCCC7777C7770000
    00000CCCC000000CCCC777777777C000C00000CCCC0000CCCC77777C777CCC00
    CC00000CCCCCCCCCC77777CC77CCCCC0CCC000CCCCC00CCCCC777CCC7CCCCCCC
    CCCC0CCCCCCCCCCCCCC7CCCCCCCCCCCC0CCCCCCCCCCCCCCCCCCCCCC7CCC70CCC
    00CCCCCCCC0CC0CCCCCCCC77CC7700CC000CCCCCC000000CCCCCC777CC7700CC
    0000CCCC00000000CCCC7777CC7700CC0000C0CCC000000CCC7C7777CC7700CC
    0000C0CCC000000CCC7C7777CC7700CC0000CCCC00000000CCCC7777CC7700CC
    000CCCCCC000000CCCCCC777CC7700CC00CCCCCCCC0CC0CCCCCCCC77CC770CCC
    0CCCCCCCCCCCCCCCCCCCCCC7CCC7CCCCCCCC0CCCCCCCCCCCCCC7CCCCCCCCCCC0
    CCC000CCCCC00CCCCC777CCC7CCCCC00CC00000CCCCCCCCCC77777CC77CCC000
    C00000CCCC0000CCCC77777C777C000000000CCCC000000CCCC777777777000C
    0000CCCC00000000CCCC7777C77700CCC00CCCC0000000000CCCC77CCC770CCC
    CC0000CCCCCCCCCCCC7777CCCCC7CCCCC0000CCCCCCCCCCCCCC7777CCCCCCCCC
    0000CCCC00000000CCCC7777CCCCCCC0000CCCC0000000000CCCC7777CCC0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 56
    Top = 2
    Width = 149
    Height = 16
    Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077', '#1057#1084'.'
  end
  object Label2: TLabel
    Left = 8
    Top = 26
    Width = 47
    Height = 16
    Caption = 'L(OB) = '
  end
  object Label3: TLabel
    Left = 10
    Top = 141
    Width = 46
    Height = 16
    Caption = 'L(BC) = '
  end
  object Label4: TLabel
    Left = 8
    Top = 255
    Width = 47
    Height = 16
    Caption = 'L(CD) = '
  end
  object Label5: TLabel
    Left = 8
    Top = 362
    Width = 46
    Height = 16
    Caption = 'L(CE) = '
  end
  object Label7: TLabel
    Left = 8
    Top = 84
    Width = 22
    Height = 16
    Caption = 'A = '
  end
  object Label8: TLabel
    Left = 8
    Top = 198
    Width = 22
    Height = 16
    Caption = #1041' = '
  end
  object Label9: TLabel
    Left = 8
    Top = 419
    Width = 72
    Height = 16
    Caption = #1052#1072#1089#1096#1090#1072#1073' - '
  end
  object Label10: TLabel
    Left = 8
    Top = 476
    Width = 74
    Height = 16
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100' - '
  end
  object Label6: TLabel
    Left = 8
    Top = 305
    Width = 21
    Height = 16
    Caption = 'a = '
  end
  object Label11: TLabel
    Left = 8
    Top = 591
    Width = 188
    Height = 16
    Caption = #1042#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099' '#1084#1077#1093#1072#1085#1080#1079#1084#1072' - '
  end
  object Label12: TLabel
    Left = 8
    Top = 534
    Width = 82
    Height = 16
    Caption = #1059#1089#1082#1086#1088#1077#1085#1080#1077' - '
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 439
    Width = 241
    Height = 26
    Max = 500
    Min = 50
    ParentShowHint = False
    Position = 100
    ShowHint = False
    TabOrder = 1
    TickStyle = tsManual
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 8
    Top = 496
    Width = 241
    Height = 26
    Max = 400
    ParentShowHint = False
    Position = 50
    ShowHint = False
    TabOrder = 2
    TickStyle = tsManual
    OnChange = TrackBar2Change
  end
  object TrackBar3: TTrackBar
    Left = 8
    Top = 46
    Width = 241
    Height = 26
    Max = 100
    Min = 1
    ParentShowHint = False
    Position = 20
    ShowHint = False
    TabOrder = 3
    TickStyle = tsManual
    OnChange = Edit1Change
  end
  object TrackBar4: TTrackBar
    Left = 8
    Top = 161
    Width = 241
    Height = 25
    Max = 500
    Min = 1
    ParentShowHint = False
    Position = 50
    ShowHint = False
    TabOrder = 4
    TickStyle = tsManual
    OnChange = TrackBar1Change
  end
  object TrackBar5: TTrackBar
    Left = 8
    Top = 103
    Width = 241
    Height = 26
    Max = 500
    Min = 1
    ParentShowHint = False
    Position = 30
    ShowHint = False
    TabOrder = 5
    TickStyle = tsManual
    OnChange = TrackBar1Change
  end
  object TrackBar6: TTrackBar
    Left = 8
    Top = 218
    Width = 241
    Height = 26
    Max = 500
    Min = 1
    ParentShowHint = False
    Position = 90
    ShowHint = False
    TabOrder = 6
    TickStyle = tsManual
    OnChange = TrackBar1Change
  end
  object TrackBar7: TTrackBar
    Left = 8
    Top = 275
    Width = 241
    Height = 26
    Max = 500
    Min = 1
    ParentShowHint = False
    Position = 20
    ShowHint = False
    TabOrder = 7
    TickStyle = tsManual
    OnChange = TrackBar1Change
  end
  object TrackBar8: TTrackBar
    Left = 8
    Top = 324
    Width = 241
    Height = 26
    Max = 70
    Min = 5
    ParentShowHint = False
    Position = 30
    ShowHint = False
    TabOrder = 8
    TickStyle = tsManual
    OnChange = TrackBar1Change
  end
  object TrackBar9: TTrackBar
    Left = 8
    Top = 382
    Width = 241
    Height = 25
    Max = 500
    Min = 5
    ParentShowHint = False
    Position = 70
    ShowHint = False
    TabOrder = 9
    TickStyle = tsManual
    OnChange = TrackBar1Change
  end
  object Button1: TButton
    Left = 24
    Top = 648
    Width = 209
    Height = 25
    Caption = #1055#1091#1089#1082
    TabOrder = 0
    OnClick = Button1Click
  end
  object TrackBar10: TTrackBar
    Left = 8
    Top = 610
    Width = 241
    Height = 26
    Max = 400
    Min = 5
    ParentShowHint = False
    Position = 5
    ShowHint = False
    TabOrder = 10
    TickStyle = tsManual
    OnChange = TrackBar2Change
  end
  object TrackBar11: TTrackBar
    Left = 8
    Top = 553
    Width = 241
    Height = 26
    ParentShowHint = False
    ShowHint = False
    TabOrder = 11
    TickStyle = tsManual
    OnChange = TrackBar11Change
  end
  object Panel1: TPanel
    Left = 248
    Top = 8
    Width = 641
    Height = 673
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 12
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 639
      Height = 495
      Cursor = crHandPoint
      Align = alClient
      OnMouseDown = Image1MouseDown
      OnMouseMove = Image1MouseMove
      OnMouseUp = Image1MouseUp
    end
    object Chart1: TChart
      Left = 1
      Top = 496
      Width = 639
      Height = 176
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.AdjustFrame = False
      Title.Text.Strings = (
        #1057#1082#1086#1088#1086#1089#1090#1100)
      View3D = False
      Align = alBottom
      TabOrder = 0
      object Series1: TFastLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        LinePen.Color = clRed
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series2: TFastLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clGreen
        LinePen.Color = clGreen
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 506
      Top = 10
      Width = 120
      Height = 70
      Caption = ' '#1043#1088#1072#1092#1080#1082' '
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        #1057#1082#1086#1088#1086#1089#1090#1100
        #1059#1089#1082#1086#1088#1077#1085#1080#1077)
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = N7Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 148
    Top = 68
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 68
    object N1: TMenuItem
      Caption = #1060#1072#1080#1083
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076#1072#1085#1085#1099#1077
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1076#1072#1085#1085#1099#1077'|*.txt'
    Left = 72
    Top = 68
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1076#1072#1085#1085#1099#1077'|*.txt'
    Left = 184
    Top = 68
  end
end
