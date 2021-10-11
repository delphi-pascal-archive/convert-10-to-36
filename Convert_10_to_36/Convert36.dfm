object Form1: TForm1
  Left = 225
  Top = 134
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1088#1077#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077' 10 (46655 Max) '#1074' 36'
  ClientHeight = 234
  ClientWidth = 498
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label4: TLabel
    Left = 30
    Top = 49
    Width = 3
    Height = 16
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 144
    Height = 16
    Caption = 'Dec '#1095#1080#1089#1083#1072' (46656 Max):'
  end
  object Label3: TLabel
    Left = 240
    Top = 8
    Width = 237
    Height = 16
    Caption = '36-'#1090#1080' '#1088#1080#1095#1085#1099#1077' '#1095#1080#1089#1083#1072' '#1074': '#1090#1088#1077#1093' '#1088#1072#1079#1088#1103#1076#1072#1093
  end
  object Label2: TLabel
    Left = 100
    Top = 64
    Width = 56
    Height = 16
    Caption = '1296 Max'
  end
  object Label5: TLabel
    Left = 120
    Top = 120
    Width = 39
    Height = 16
    Caption = '36Max'
  end
  object Label6: TLabel
    Left = 392
    Top = 64
    Width = 94
    Height = 16
    Caption = #1076#1074#1091#1093' '#1088#1072#1079#1088#1103#1076#1072#1093
  end
  object Label7: TLabel
    Left = 392
    Top = 120
    Width = 99
    Height = 16
    Caption = #1086#1076#1085#1086#1084' '#1088#1072#1079#1088#1103#1076#1077
  end
  object Label8: TLabel
    Left = 48
    Top = 176
    Width = 409
    Height = 16
    Caption = 
      '0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V ' +
      'W X Y Z'
  end
  object ExitPro: TButton
    Left = 8
    Top = 200
    Width = 481
    Height = 25
    Caption = 'Exit'
    TabOrder = 0
    OnClick = ExitProClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 153
    Height = 25
    TabOrder = 1
    Text = '8628'
  end
  object Convert1: TButton
    Left = 168
    Top = 56
    Width = 65
    Height = 25
    Caption = 'Convert'
    TabOrder = 2
    OnClick = Convert1Click
  end
  object Edit3: TEdit
    Left = 240
    Top = 30
    Width = 249
    Height = 27
    TabOrder = 3
    Text = '6NO'
  end
  object Edit2: TEdit
    Left = 8
    Top = 88
    Width = 153
    Height = 25
    TabOrder = 4
    Text = '1295'
  end
  object Edit4: TEdit
    Left = 10
    Top = 144
    Width = 149
    Height = 25
    TabOrder = 5
    Text = '35'
  end
  object Edit5: TEdit
    Left = 240
    Top = 88
    Width = 249
    Height = 25
    TabOrder = 6
    Text = 'ZZ'
  end
  object Edit6: TEdit
    Left = 240
    Top = 144
    Width = 249
    Height = 25
    TabOrder = 7
    Text = 'Z'
  end
  object Return: TButton
    Left = 168
    Top = 112
    Width = 65
    Height = 25
    Caption = 'Return'
    TabOrder = 8
    OnClick = ReturnClick
  end
end
