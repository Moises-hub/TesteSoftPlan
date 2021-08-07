object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa2'
  ClientHeight = 363
  ClientWidth = 701
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
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 20
    Top = 20
    Width = 661
    Height = 109
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alTop
    Caption = 'Tread1'
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 37
      Width = 61
      Height = 13
      Caption = 'Contador : 0'
    end
    object ProgressBar1: TProgressBar
      Left = 48
      Top = 56
      Width = 585
      Height = 22
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 294
    Width = 701
    Height = 69
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 400
    object Label3: TLabel
      Left = 56
      Top = 5
      Width = 50
      Height = 13
      Caption = 'Intervalo1'
    end
    object Label4: TLabel
      Left = 152
      Top = 5
      Width = 50
      Height = 13
      Caption = 'Intervalo2'
    end
    object SpinEdit1: TSpinEdit
      Left = 56
      Top = 24
      Width = 73
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object Button1: TButton
      Left = 336
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Iniciar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object SpinEdit2: TSpinEdit
      Left = 152
      Top = 24
      Width = 73
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 20
    Top = 159
    Width = 661
    Height = 109
    Margins.Left = 20
    Margins.Top = 10
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alTop
    Caption = 'Tread2'
    TabOrder = 2
    ExplicitLeft = 28
    ExplicitTop = 28
    object Label2: TLabel
      Left = 48
      Top = 37
      Width = 61
      Height = 13
      Caption = 'Contador : 0'
    end
    object ProgressBar2: TProgressBar
      Left = 48
      Top = 56
      Width = 585
      Height = 22
      TabOrder = 0
    end
  end
end
