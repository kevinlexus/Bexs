object FrmRefCorrespond: TFrmRefCorrespond
  Left = 328
  Top = 429
  Width = 685
  Height = 491
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103' '#1091#1089#1083#1091#1075
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
    Left = 193
    Top = 0
    Width = 8
    Height = 452
  end
  object cxGrid1: TcxGrid
    Left = 201
    Top = 0
    Width = 468
    Height = 452
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_servgis
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 44
      end
      object cxGrid1DBTableView1FK_USL: TcxGridDBColumn
        DataBinding.FieldName = 'FK_USL'
        Width = 48
      end
      object cxGrid1DBTableView1USLNAME: TcxGridDBColumn
        Caption = #1059#1089#1083#1091#1075#1072', '#1073#1080#1083#1083#1080#1085#1075
        DataBinding.FieldName = 'FK_USL'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 250
        Properties.KeyFieldNames = 'USL'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListSource = DS_usl
        Width = 127
      end
      object cxGrid1DBTableView1FK_LIST: TcxGridDBColumn
        DataBinding.FieldName = 'FK_LIST'
        Width = 53
      end
      object cxGrid1DBTableView1LISTNAME: TcxGridDBColumn
        Caption = #1059#1089#1083#1091#1075#1072', '#1043#1048#1057
        DataBinding.FieldName = 'FK_LIST'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 325
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'FK_EXT'
          end
          item
            FieldName = 'GRP'
          end
          item
            FieldName = 'SERV_NAME'
          end>
        Properties.ListFieldIndex = 2
        Properties.ListSource = DS_list
        Width = 122
      end
      object cxGrid1DBTableView1GRP: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072' '#1076#1083#1103' '#1088#1072#1089#1094#1077#1085#1082#1080
        DataBinding.FieldName = 'GRP'
        Width = 65
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 0
    Width = 193
    Height = 452
    Align = alLeft
    TabOrder = 1
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_eolink
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1ID: TcxGridDBColumn
        Caption = 'FK_EOLINK'
        DataBinding.FieldName = 'ID'
        Width = 64
      end
      object cxGridDBTableView1NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'NAME'
        Width = 127
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object OD_servgis: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from exs.servgis t'
      ' where fk_eolink = :fk_eolink')
    Optimize = False
    Variables.Data = {
      03000000010000000A0000003A464B5F454F4C494E4B04000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000600000002000000494401000000000007000000464B5F5345525601
      000000000006000000464B5F55534C01000000000007000000464B5F4C495354
      0100000000000300000047525001000000000009000000464B5F454F4C494E4B
      010000000000}
    Master = OD_eolink
    MasterFields = 'ID'
    DetailFields = 'FK_EOLINK'
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    AfterInsert = OD_servgisAfterInsert
    Left = 32
    Top = 152
    object OD_servgisID: TFloatField
      FieldName = 'ID'
      ReadOnly = True
    end
    object OD_servgisFK_USL: TStringField
      FieldName = 'FK_USL'
      Size = 3
    end
    object OD_servgisFK_LIST: TFloatField
      FieldName = 'FK_LIST'
    end
    object OD_servgisGRP: TFloatField
      FieldName = 'GRP'
    end
    object OD_servgisFK_EOLINK: TFloatField
      FieldName = 'FK_EOLINK'
    end
  end
  object DS_servgis: TDataSource
    DataSet = OD_servgis
    Left = 72
    Top = 152
  end
  object OD_list: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.actual, tp.grp, tp.fk_ext,'
      ' (select t2.s1 from exs.u_list t2 where t.id=t2.parent_id '
      
        ' and t2.name in ('#39#1042#1080#1076' '#1078#1080#1083#1080#1097#1085#1086#1081'  '#1091#1089#1083#1091#1075#1080#39','#39#1043#1083#1072#1074#1085#1072#1103' '#1082#1086#1084#1084#1091#1085#1072#1083#1100#1085#1072#1103' '#1091#1089 +
        #1083#1091#1075#1072#39','#39#1042#1080#1076' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1081' '#1091#1089#1083#1091#1075#1080#39')) as serv_name'
      ' from EXS.U_LIST t'
      ' join EXS.U_LISTTP tp on t.fk_listtp=tp.id and'
      
        '  (tp.fk_ext in (1,51) and tp.fk_eolink=:fk_eolink or tp.fk_ext=' +
        '50)'
      'where t.guid is not null'
      'and (tp.fk_eolink=:fk_eolink  or tp.fk_ext=50)'
      'order by serv_name')
    Optimize = False
    Variables.Data = {
      03000000010000000A0000003A464B5F454F4C494E4B0300000004000000FDC8
      0A0000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000050000000200000049440100000000000600000041435455414C0100
      0000000009000000534552565F4E414D4501000000000006000000464B5F4558
      5401000000000003000000475250010000000000}
    Master = OD_eolink
    MasterFields = 'ID'
    DetailFields = 'FK_EOLINK'
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Active = True
    Left = 32
    Top = 200
  end
  object DS_list: TDataSource
    DataSet = OD_list
    Left = 72
    Top = 200
  end
  object OD_eolink: TOracleDataSet
    SQL.Strings = (
      'select t.id, o.name from exs.eolink t'
      'join bs.addr_tp tp on t.fk_objtp=tp.id and tp.cd='#39#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#39
      'left join scott.t_org o on t.reu=o.reu'
      'order by o.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Active = True
    Left = 32
    Top = 104
  end
  object DS_eolink: TDataSource
    DataSet = OD_eolink
    Left = 72
    Top = 104
  end
  object OD_usl: TOracleDataSet
    SQL.Strings = (
      'select t.usl, t.usl||'#39'-'#39'||t.nm as name'
      ' from scott.usl t'
      'order by t.usl'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000020000000300000055534C010000000000040000004E414D45010000
      000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Left = 32
    Top = 248
  end
  object DS_usl: TDataSource
    DataSet = OD_usl
    Left = 72
    Top = 248
  end
end
