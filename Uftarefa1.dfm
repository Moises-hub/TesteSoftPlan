object FTarefa1: TFTarefa1
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'FTarefa1'
  ClientHeight = 427
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object Label2: TLabel
    Left = 231
    Top = 31
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object Label3: TLabel
    Left = 444
    Top = 31
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object Label4: TLabel
    Left = 24
    Top = 293
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object colunas: TMemo
    Left = 24
    Top = 50
    Width = 185
    Height = 233
    TabOrder = 0
  end
  object tabelas: TMemo
    Left = 231
    Top = 50
    Width = 185
    Height = 233
    TabOrder = 1
  end
  object condicoes: TMemo
    Left = 440
    Top = 50
    Width = 185
    Height = 233
    TabOrder = 2
  end
  object sqlGerado: TMemo
    Left = 24
    Top = 312
    Width = 706
    Height = 97
    ScrollBars = ssHorizontal
    TabOrder = 3
  end
  object Button1: TButton
    Left = 639
    Top = 160
    Width = 91
    Height = 33
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = Button1Click
  end
end
