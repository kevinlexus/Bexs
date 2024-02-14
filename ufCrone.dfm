object FrmCrone: TFrmCrone
  Left = 563
  Top = 211
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' Crone'
  ClientHeight = 603
  ClientWidth = 333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 0
    Width = 333
    Height = 603
    Align = alClient
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DataModule2.DS_crone
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 20
      end
      object cxGridDBTableView1EXPR: TcxGridDBColumn
        Caption = #1042#1099#1088#1072#1078#1077#1085#1080#1077
        DataBinding.FieldName = 'EXPR'
        Width = 100
      end
      object cxGridDBTableView1COMM: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'COMM'
        Width = 194
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
end
