object FrmMain: TFrmMain
  Left = 1115
  Top = 325
  Width = 739
  Height = 644
  Caption = 'Bexs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 80
    Top = 32
    object File1: TMenuItem
      Caption = 'File'
      object N1: TMenuItem
        Caption = 'Task'
        OnClick = N1Click
      end
      object Eolink1: TMenuItem
        Caption = 'Eolink'
      end
    end
  end
end
