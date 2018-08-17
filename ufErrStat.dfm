object FrmErrStat: TFrmErrStat
  Left = 214
  Top = 374
  Width = 752
  Height = 597
  Caption = #1054#1096#1080#1073#1082#1080' '#1080' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1072
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 75
      Top = 13
      Width = 47
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 259
      Top = 13
      Width = 96
      Height = 13
      Caption = #1042#1072#1088#1080#1072#1085#1090' '#1086#1090#1095#1077#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 360
      Top = 8
      Align = alCustom
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_menu
      Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
      TabOrder = 0
      Width = 369
    end
    object Edit1: TEdit
      Left = 126
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 736
    Height = 517
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_data
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_menu: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  exs.p_gis.get_errs_menu(p_rfcur => :p_rfcur);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000001000000080000003A505F5246435552740000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule2.OracleSession1
    Left = 32
    Top = 8
  end
  object DS_menu: TDataSource
    DataSet = OD_menu
    Left = 72
    Top = 8
  end
  object OD_data: TOracleDataSet
    SQL.Strings = (
      'begin'
      '  -- Call the procedure'
      '  exs.p_gis.show_errs(p_id => :p_id,'
      '                      p_period => :p_period,'
      '                      p_rfcur => :p_rfcur);'
      'end;')
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A505F5246435552740000000000000000000000
      050000003A505F494403000000040000000000000000000000090000003A505F
      504552494F4405000000070000003230313830370000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000700000003000000524555010000000000030000004C534B01000000
      0000050000005245555F31010000000000030000004B554C0100000000000600
      0000535452454554010000000000020000004E4401000000000008000000434F
      554E54282A29010000000000}
    Session = DataModule2.OracleSession1
    Active = True
    Left = 32
    Top = 64
  end
  object DS_data: TDataSource
    DataSet = OD_data
    Left = 72
    Top = 64
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 152
    object Excel1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = Excel1Click
    end
  end
end
