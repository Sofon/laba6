object Form1: TForm1
  Left = 396
  Top = 53
  Caption = 'Con2 '#1076#1083#1103' '#1084#1072#1090#1088#1080#1094#1099
  ClientHeight = 324
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 42
    Height = 13
    Caption = #1057#1058#1056#1054#1050
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 16
    Width = 69
    Height = 13
    Caption = #1057#1058#1054#1051#1041#1062#1054#1042
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 304
    Width = 151
    Height = 13
    Caption = #1047#1072#1076#1072#1095#1072' '#1077#1097#1077' '#1085#1077' '#1088#1077#1096#1072#1083#1072#1089#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 48
    Width = 9
    Height = 13
    Caption = 'T'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 39
    Top = 83
    Width = 10
    Height = 13
    Caption = 'D'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 64
    Top = 16
    Width = 81
    Height = 21
    ReadOnly = True
    TabOrder = 0
    Text = '4'
    OnChange = edt1Change
  end
  object edt2: TEdit
    Left = 248
    Top = 16
    Width = 81
    Height = 21
    ReadOnly = True
    TabOrder = 1
    Text = '4'
    OnChange = edt2Change
  end
  object ud1: TUpDown
    Left = 145
    Top = 16
    Width = 16
    Height = 21
    Associate = edt1
    Min = 1
    Max = 20
    Position = 4
    TabOrder = 2
  end
  object ud2: TUpDown
    Left = 329
    Top = 16
    Width = 16
    Height = 21
    Associate = edt2
    Min = 1
    Max = 10
    Position = 4
    TabOrder = 3
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 120
    Width = 337
    Height = 137
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 4
    ColWidths = (
      64
      64
      64
      64
      64)
  end
  object rg1: TRadioGroup
    Left = 168
    Top = 40
    Width = 161
    Height = 49
    ItemIndex = 0
    Items.Strings = (
      #1048#1079' '#1092#1072#1081#1083#1072'   '
      #1048#1079' c'#1077#1090#1082#1080' '#1089#1090#1088#1086#1082)
    TabOrder = 5
  end
  object btn1: TButton
    Left = 8
    Top = 264
    Width = 137
    Height = 25
    Caption = #1056#1077#1096#1080#1090#1100' '
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 264
    Width = 137
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 7
    OnClick = btn2Click
  end
  object edt3: TEdit
    Left = 64
    Top = 48
    Width = 81
    Height = 21
    TabOrder = 8
    Text = '2'
    OnExit = edt3Exit
  end
  object Edit1: TEdit
    Left = 64
    Top = 80
    Width = 81
    Height = 21
    TabOrder = 9
    Text = '6'
  end
  object dlgOpen1: TOpenDialog
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090'|*.txt'
    Left = 65520
    Top = 280
  end
end
