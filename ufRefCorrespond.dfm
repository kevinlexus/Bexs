object FrmRefCorrespond: TFrmRefCorrespond
  Left = 361
  Top = 471
  Width = 1032
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
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 129
    Top = 0
    Width = 8
    Height = 452
  end
  object cxGrid1: TcxGrid
    Left = 137
    Top = 0
    Width = 452
    Height = 452
    Align = alLeft
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_ServGis
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGrid1DBTableView1FK_SERV: TcxGridDBColumn
        DataBinding.FieldName = 'FK_SERV'
      end
      object cxGrid1DBTableView1FK_USL: TcxGridDBColumn
        DataBinding.FieldName = 'FK_USL'
      end
      object cxGrid1DBTableView1FK_LIST: TcxGridDBColumn
        DataBinding.FieldName = 'FK_LIST'
      end
      object cxGrid1DBTableView1GRP: TcxGridDBColumn
        DataBinding.FieldName = 'GRP'
      end
      object cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_EOLINK'
      end
      object cxGrid1DBTableView1LKUPLIST: TcxGridDBColumn
        DataBinding.FieldName = 'LKUPLIST'
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'FK_LIST'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'SERV_NAME'
          end>
        Properties.ListSource = DS_List
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 0
    Width = 129
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
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGridDBTableView1NAME: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'NAME'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object OD_ServGis: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from exs.servgis t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000600000002000000494401000000000007000000464B5F5345525601
      000000000006000000464B5F55534C01000000000007000000464B5F4C495354
      0100000000000300000047525001000000000009000000464B5F454F4C494E4B
      010000000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Active = True
    Left = 32
    Top = 152
    object OD_ServGisID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object OD_ServGisFK_SERV: TFloatField
      FieldName = 'FK_SERV'
    end
    object OD_ServGisFK_USL: TStringField
      FieldName = 'FK_USL'
      Size = 3
    end
    object OD_ServGisFK_LIST: TFloatField
      FieldName = 'FK_LIST'
    end
    object OD_ServGisGRP: TFloatField
      FieldName = 'GRP'
    end
    object OD_ServGisFK_EOLINK: TFloatField
      FieldName = 'FK_EOLINK'
    end
    object OD_ServGisLKUPLIST: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LKUPLIST'
      LookupDataSet = OD_List
      LookupKeyFields = 'ID'
      LookupResultField = 'SERV_NAME'
      KeyFields = 'FK_LIST'
      Lookup = True
    end
  end
  object DS_ServGis: TDataSource
    DataSet = OD_ServGis
    Left = 72
    Top = 152
  end
  object OD_List: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.parent_id, t.fk_listtp, tp.fk_eolink, tp.fk_ext, ' +
        't.cd, t.npp, t.guid, t.actual,'
      ' (select t2.s1 from exs.u_list t2 where t.id=t2.parent_id '
      
        ' and t2.name in ('#39#1042#1080#1076' '#1078#1080#1083#1080#1097#1085#1086#1081'  '#1091#1089#1083#1091#1075#1080#39','#39#1043#1083#1072#1074#1085#1072#1103' '#1082#1086#1084#1084#1091#1085#1072#1083#1100#1085#1072#1103' '#1091#1089 +
        #1083#1091#1075#1072#39','#39#1042#1080#1076' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1081' '#1091#1089#1083#1091#1075#1080#39')) as serv_name'
      ' from EXS.U_LIST t'
      ' join EXS.U_LISTTP tp on t.fk_listtp=tp.id and'
      
        '  (tp.fk_ext in (1,51) and tp.fk_eolink=:fk_eolink or tp.fk_ext=' +
        '50)'
      'where t.guid is not null'
      'and tp.fk_eolink=:fk_eolink'
      'order by serv_name')
    Optimize = False
    Variables.Data = {
      03000000010000000A0000003A464B5F454F4C494E4B0300000004000000FDC8
      0A0000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A00000002000000494401000000000009000000464B5F454F4C494E
      4B01000000000009000000504152454E545F494401000000000009000000464B
      5F4C495354545001000000000006000000464B5F455854010000000000020000
      004344010000000000030000004E505001000000000004000000475549440100
      000000000600000041435455414C01000000000009000000534552565F4E414D
      45010000000000}
    Master = OD_Eolink
    MasterFields = 'ID'
    DetailFields = 'FK_EOLINK'
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Active = True
    Left = 32
    Top = 208
  end
  object DS_List: TDataSource
    DataSet = OD_List
    Left = 72
    Top = 208
  end
  object OD_Eolink: TOracleDataSet
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
    DataSet = OD_Eolink
    Left = 72
    Top = 104
  end
end
