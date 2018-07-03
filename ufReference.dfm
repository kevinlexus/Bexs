object FrmReference: TFrmReference
  Left = 723
  Top = 231
  Width = 907
  Height = 540
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1043#1048#1057
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 369
    Top = 0
    Width = 8
    Height = 501
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 369
    Height = 501
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
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 36
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 34
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'NAME'
        Width = 107
      end
      object cxGrid1DBTableView1COMM: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'COMM'
        Width = 82
      end
      object cxGrid1DBTableView1GRP: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'GRP'
        Width = 30
      end
      object cxGrid1DBTableView1FK_EXT: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'FK_EXT'
        Width = 30
      end
      object cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_EOLINK'
        Width = 31
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 377
    Top = 0
    Width = 514
    Height = 501
    Align = alClient
    TabOrder = 1
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = Ds_List
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGridDBTableView1PARENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PARENT_ID'
      end
      object cxGridDBTableView1FK_LISTTP: TcxGridDBColumn
        DataBinding.FieldName = 'FK_LISTTP'
      end
      object cxGridDBTableView1FK_EXT: TcxGridDBColumn
        DataBinding.FieldName = 'FK_EXT'
      end
      object cxGridDBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
      end
      object cxGridDBTableView1NPP: TcxGridDBColumn
        DataBinding.FieldName = 'NPP'
      end
      object cxGridDBTableView1GUID: TcxGridDBColumn
        DataBinding.FieldName = 'GUID'
      end
      object cxGridDBTableView1ACTUAL: TcxGridDBColumn
        DataBinding.FieldName = 'ACTUAL'
      end
      object cxGridDBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
      end
      object cxGridDBTableView1S1: TcxGridDBColumn
        DataBinding.FieldName = 'S1'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object DS_ListTp: TDataSource
    DataSet = OD_ListTp
    Left = 72
    Top = 152
  end
  object OD_ListTp: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.cd, t.name, t.grp, t.fk_ext, t.fk_eolink, e.comm'
      ' from EXS.U_LISTTP t'
      'left join exs.eolink e on t.fk_eolink=e.id'
      'order by decode(t.fk_ext, 1, 0, 2, 0, 51, 0, 50, 0, 1),'
      't.name ')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000007000000020000004944010000000000020000004344010000000000
      040000004E414D4501000000000004000000434F4D4D01000000000003000000
      47525001000000000006000000464B5F45585401000000000009000000464B5F
      454F4C494E4B010000000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Active = True
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
    object OD_ListTpCOMM: TStringField
      FieldName = 'COMM'
      Size = 1024
    end
  end
  object OD_list: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.parent_id, t.fk_listtp, tp.fk_ext, t.cd, t.npp, t' +
        '.guid, t.actual, t.name, t.s1'
      ' from EXS.U_LIST t'
      ' join EXS.U_LISTTP tp on t.fk_listtp=tp.id'
      'where t.fk_listtp=:fk_listtp'
      'order by t.id, t.parent_id')
    Optimize = False
    Variables.Data = {
      03000000010000000A0000003A464B5F4C49535454500300000004000000DB1D
      010000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A000000020000004944010000000000020000004344010000000000
      09000000504152454E545F494401000000000009000000464B5F4C4953545450
      010000000000030000004E505001000000000004000000475549440100000000
      000600000041435455414C01000000000006000000464B5F4558540100000000
      00040000004E414D45010000000000020000005331010000000000}
    Master = OD_ListTp
    MasterFields = 'ID'
    DetailFields = 'FK_LISTTP'
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Active = True
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
    object OD_listCD: TStringField
      FieldName = 'CD'
      Required = True
      Size = 255
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
  end
  object Ds_List: TDataSource
    DataSet = OD_list
    Left = 72
    Top = 208
  end
end