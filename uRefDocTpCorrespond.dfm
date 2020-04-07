object FrmRefDocTpCorrespond: TFrmRefDocTpCorrespond
  Left = 649
  Top = 242
  Width = 712
  Height = 444
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103' '#1090#1080#1087#1086#1074' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 696
    Height = 405
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataSource = DS_scott_ulist
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072', '#1044#1080#1088#1077#1082#1090
        DataBinding.FieldName = 'NAME_TP'
        Options.Editing = False
        Width = 336
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072', '#1043#1048#1057' '#1046#1050#1061
        DataBinding.FieldName = 'FK_EXS_U_LIST'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_exs_ulist
        Width = 358
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_scott_ulist: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.id||'#39'-'#39'||t.name as name_tp, t.fk_exs_u_list, t.ro' +
        'wid'
      ' from scott.u_list t join scott.u_listtp tp on t.fk_listtp=tp.id'
      'where tp.cd='#39#1044#1086#1082#1091#1084#1077#1085#1090#39
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000030000000200000049440100000000000D000000464B5F4558535F55
      5F4C495354010000000000070000004E414D455F5450010000000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Active = True
    Left = 24
    Top = 40
    object OD_scott_ulistID: TFloatField
      FieldName = 'ID'
    end
    object OD_scott_ulistFK_EXS_U_LIST: TFloatField
      FieldName = 'FK_EXS_U_LIST'
    end
    object OD_scott_ulistNAME_TP: TStringField
      FieldName = 'NAME_TP'
      Size = 137
    end
  end
  object DS_scott_ulist: TDataSource
    DataSet = OD_scott_ulist
    Left = 56
    Top = 40
  end
  object OD_exs_ulist: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.id||'#39'-'#39'||s.s1 as name from exs.u_list t '
      'left join exs.u_list s on s.parent_id=t.id'
      'join exs.u_listtp tp on t.fk_listtp=tp.id'
      'where tp.cd='#39'GIS_NSI_95'#39
      'and s.s1 is not null'
      'order by s.s1')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Left = 24
    Top = 88
  end
  object DS_exs_ulist: TDataSource
    DataSet = OD_exs_ulist
    Left = 56
    Top = 88
  end
end
