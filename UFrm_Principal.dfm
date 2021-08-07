object Frm_Principal: TFrm_Principal
  Left = 0
  Top = 0
  Caption = 'Frm_Principal'
  ClientHeight = 481
  ClientWidth = 803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object FDQuery1: TFDQuery
    Left = 704
    Top = 72
  end
  object MainMenu1: TMainMenu
    Left = 408
    Top = 112
    object arefa11: TMenuItem
      Caption = 'Menu'
      object arefa12: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = arefa12Click
      end
      object arefa21: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = arefa21Click
      end
      object arefa31: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = arefa31Click
      end
    end
  end
end
