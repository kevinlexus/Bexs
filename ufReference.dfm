object FrmReference: TFrmReference
  Left = 330
  Top = 349
  Width = 1263
  Height = 563
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1043#1048#1057
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
  object Splitter1: TSplitter
    Left = 369
    Top = 0
    Width = 8
    Height = 524
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 369
    Height = 524
    Align = alLeft
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_ListTp
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 20
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 20
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'NAME'
        Width = 58
      end
      object cxGrid1DBTableView1NAME_ORG: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'NAME_ORG'
        Width = 87
      end
      object cxGrid1DBTableView1GRP: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'GRP'
        Width = 61
      end
      object cxGrid1DBTableView1FK_EXT: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'FK_EXT'
        Width = 60
      end
      object cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_EOLINK'
        Width = 61
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 377
    Top = 0
    Width = 870
    Height = 524
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 1
      Top = 33
      Width = 868
      Height = 490
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        DataController.DataModeController.GridModeBufferCount = 100
        DataController.DataSource = Ds_List
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object cxGridDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Width = 31
        end
        object cxGridDBTableView1FK_LISTTP: TcxGridDBColumn
          DataBinding.FieldName = 'FK_LISTTP'
          Width = 32
        end
        object cxGridDBTableView1FK_EXT: TcxGridDBColumn
          DataBinding.FieldName = 'FK_EXT'
          Width = 31
        end
        object cxGridDBTableView1CD: TcxGridDBColumn
          DataBinding.FieldName = 'CD'
          Width = 34
        end
        object cxGridDBTableView1NPP: TcxGridDBColumn
          DataBinding.FieldName = 'NPP'
          Width = 31
        end
        object cxGridDBTableView1GUID: TcxGridDBColumn
          DataBinding.FieldName = 'GUID'
          Width = 50
        end
        object cxGridDBTableView1ACTUAL: TcxGridDBColumn
          DataBinding.FieldName = 'ACTUAL'
          Width = 52
        end
        object cxGridDBTableView1NAME: TcxGridDBColumn
          DataBinding.FieldName = 'NAME'
          Width = 135
        end
        object cxGridDBTableView1S1: TcxGridDBColumn
          DataBinding.FieldName = 'S1'
          Width = 81
        end
        object cxGridDBTableView1HIDE_IN_PD: TcxGridDBColumn
          Caption = #1057#1082#1088#1099#1090#1100' '#1074' '#1055#1044
          DataBinding.FieldName = 'HIDE_IN_PD'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 'null;0'
        end
        object cxGridDBTableView1PARENT_ID: TcxGridDBColumn
          Caption = #1048#1047' '#1043#1048#1057' '#1046#1050#1061': '#1057#1074#1103#1079#1100' '#1079#1072#1087#1080#1089#1080' '#1076#1086#1095#1077#1088#1085#1077#1075#1086' '#1101#1083#1077#1084#1077#1085#1090#1072' '#1089' '#1075#1083#1072#1074#1085#1086#1081' '#1079#1072#1087#1080#1089#1100#1102
          DataBinding.FieldName = 'PARENT_ID'
          Width = 146
        end
        object cxGridDBTableView1PARENT_ID2: TcxGridDBColumn
          Caption = #1057#1074#1103#1079#1100' '#1079#1072#1087#1080#1089#1080' '#1091#1089#1083#1091#1075#1080' '#1054#1048' '#1089' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1091#1089#1083#1091#1075#1086#1081
          DataBinding.FieldName = 'PARENT_ID2'
          Width = 122
        end
        object cxGridDBTableView1PARENT_ID3: TcxGridDBColumn
          Caption = #1057#1074#1103#1079#1100' '#1091#1089#1083#1091#1075#1080' '#1087#1086#1074#1099#1096'. '#1082#1086#1101#1092#1092' '#1089' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1091#1089#1083#1091#1075#1086#1081
          DataBinding.FieldName = 'PARENT_ID3'
          Width = 121
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 868
      Height = 32
      Align = alTop
      Lines.Strings = (
        
          #1055#1088#1080' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1080' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072', '#1082#1086#1085#1090#1088#1086#1083#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1083#1080#1095#1080#1077' '#1072#1082#1090#1091#1072#1083#1100#1085#1086#1089#1090#1080' ' +
          'ACTUAL=1')
      TabOrder = 1
    end
  end
  object DS_ListTp: TDataSource
    DataSet = OD_ListTp
    Left = 72
    Top = 152
  end
  object OD_ListTp: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.cd, t.name, t.grp, t.fk_ext, t.fk_eolink, o.name ' +
        'as name_org, t.rowid'
      ' from EXS.U_LISTTP t'
      'left join exs.eolink e on t.fk_eolink=e.id'
      'left join scott.t_org o on e.reu=o.reu'
      'order by decode(t.fk_ext, 1, 0, 2, 0, 51, 0, 50, 0, 1), o.name,'
      't.name ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000007000000020000004944010000000000020000004344010000000000
      040000004E414D45010000000000030000004752500100000000000600000046
      4B5F45585401000000000009000000464B5F454F4C494E4B0100000000000800
      00004E414D455F4F5247010000000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Left = 32
    Top = 152
    object OD_ListTpID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_ListTpCD: TStringField
      FieldName = 'CD'
      Required = True
      Size = 32
    end
    object OD_ListTpNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object OD_ListTpGRP: TStringField
      FieldName = 'GRP'
      Size = 255
    end
    object OD_ListTpFK_EXT: TFloatField
      FieldName = 'FK_EXT'
    end
    object OD_ListTpFK_EOLINK: TFloatField
      FieldName = 'FK_EOLINK'
    end
    object OD_ListTpNAME_ORG: TStringField
      FieldName = 'NAME_ORG'
      Size = 64
    end
  end
  object OD_list: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.parent_id, t.parent_id2, t.parent_id3, t.fk_listt' +
        'p, tp.fk_ext, t.npp, t.guid, t.actual, t.name, t.s1, t.tp, t.hid' +
        'e_in_pd, t.rowid'
      ' from EXS.U_LIST t'
      ' join EXS.U_LISTTP tp on t.fk_listtp=tp.id'
      'where t.fk_listtp=:fk_listtp'
      'order by t.id, t.parent_id')
    Optimize = False
    Variables.Data = {
      03000000010000000A0000003A464B5F4C49535454500300000004000000DB1D
      010000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D00000002000000494401000000000009000000504152454E545F49
      4401000000000009000000464B5F4C4953545450010000000000030000004E50
      5001000000000004000000475549440100000000000600000041435455414C01
      000000000006000000464B5F455854010000000000040000004E414D45010000
      0000000200000053310100000000000200000054500100000000000A00000050
      4152454E545F4944320100000000000A000000504152454E545F494433010000
      0000000A000000484944455F494E5F5044010000000000}
    Master = OD_ListTp
    MasterFields = 'ID'
    DetailFields = 'FK_LISTTP'
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Left = 32
    Top = 208
    object OD_listID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_listPARENT_ID: TFloatField
      FieldName = 'PARENT_ID'
    end
    object OD_listFK_LISTTP: TFloatField
      FieldName = 'FK_LISTTP'
      Required = True
    end
    object OD_listFK_EXT: TFloatField
      FieldName = 'FK_EXT'
    end
    object OD_listNPP: TFloatField
      FieldName = 'NPP'
      Required = True
    end
    object OD_listGUID: TStringField
      FieldName = 'GUID'
      Size = 255
    end
    object OD_listACTUAL: TFloatField
      FieldName = 'ACTUAL'
    end
    object OD_listNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 2000
    end
    object OD_listS1: TStringField
      FieldName = 'S1'
      Size = 2000
    end
    object OD_listTP2: TFloatField
      FieldName = 'TP'
    end
    object OD_listPARENT_ID2: TFloatField
      FieldName = 'PARENT_ID2'
    end
    object OD_listPARENT_ID3: TFloatField
      FieldName = 'PARENT_ID3'
    end
    object OD_listHIDE_IN_PD: TFloatField
      FieldName = 'HIDE_IN_PD'
    end
  end
  object Ds_List: TDataSource
    DataSet = OD_list
    Left = 72
    Top = 208
  end
end
