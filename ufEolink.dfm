object FrmEolink: TFrmEolink
  Left = 338
  Top = 492
  Width = 1226
  Height = 475
  Caption = #1054#1073#1098#1077#1082#1090#1099' - Eolink'
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
    Left = 929
    Top = 29
    Width = 8
    Height = 407
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 929
    Height = 407
    Align = alLeft
    PopupMenu = PopupMenu1
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
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
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 28
      end
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Width = 36
      end
      object cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PARENT_ID'
        Width = 28
      end
      object cxGrid1DBTableView1FK_OBJTP: TcxGridDBColumn
        DataBinding.FieldName = 'FK_OBJTP'
        Width = 28
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'NAME'
        BestFitMaxWidth = 20
        Width = 48
      end
      object cxGrid1DBTableView1UK: TcxGridDBColumn
        DataBinding.FieldName = 'UK'
        Width = 53
      end
      object cxGrid1DBTableView1REU: TcxGridDBColumn
        DataBinding.FieldName = 'REU'
        Width = 29
      end
      object cxGrid1DBTableView1KUL: TcxGridDBColumn
        DataBinding.FieldName = 'KUL'
        Width = 35
      end
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        Caption = #1051#1080#1094'.'#1089#1095'.'
        DataBinding.FieldName = 'LSK'
        Width = 29
      end
      object cxGrid1DBTableView1LSK_REU: TcxGridDBColumn
        Caption = #1059#1050
        DataBinding.FieldName = 'LSK_REU'
        Width = 41
      end
      object cxGrid1DBTableView1STREET: TcxGridDBColumn
        DataBinding.FieldName = 'STREET'
        Width = 64
      end
      object cxGrid1DBTableView1ND: TcxGridDBColumn
        DataBinding.FieldName = 'ND'
        Width = 33
      end
      object cxGrid1DBTableView1KW: TcxGridDBColumn
        DataBinding.FieldName = 'KW'
        Width = 35
      end
      object cxGrid1DBTableView1GUID: TcxGridDBColumn
        DataBinding.FieldName = 'GUID'
        Width = 35
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 34
      end
      object cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQNUM'
        Width = 34
      end
      object cxGrid1DBTableView1SERVICEID: TcxGridDBColumn
        DataBinding.FieldName = 'SERVICEID'
        Width = 45
      end
      object cxGrid1DBTableView1COMM: TcxGridDBColumn
        DataBinding.FieldName = 'COMM'
        OnCustomDrawCell = cxGrid1DBTableView1COMMCustomDrawCell
        Width = 26
      end
      object cxGrid1DBTableView1FK_KLSK_OBJ: TcxGridDBColumn
        DataBinding.FieldName = 'FK_KLSK_OBJ'
        Width = 39
      end
      object cxGrid1DBTableView1OGRN: TcxGridDBColumn
        DataBinding.FieldName = 'OGRN'
        Width = 39
      end
      object cxGrid1DBTableView1ENTRY: TcxGridDBColumn
        DataBinding.FieldName = 'ENTRY'
        Width = 23
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        DataBinding.FieldName = 'DT_CRT'
        Width = 40
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        DataBinding.FieldName = 'DT_UPD'
        Width = 38
      end
      object cxGrid1DBTableView1FK_UK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_UK'
        Width = 42
      end
      object cxGrid1DBTableView1TGUID: TcxGridDBColumn
        DataBinding.FieldName = 'TGUID'
        Width = 45
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1210
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageList1
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Hint = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' QBE'
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 2
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' QBE'
      Caption = 'ToolButton2'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Edit1: TEdit
      Left = 54
      Top = 2
      Width = 203
      Height = 22
      Hint = #1042#1074#1077#1089#1090#1080' Task.Id'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object ToolButton4: TToolButton
      Left = 257
      Top = 2
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' Task.Id'
      Caption = 'ToolButton4'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 280
      Top = 2
      Hint = #1057#1085#1103#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' Task.Id'
      Caption = 'ToolButton5'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
  end
  object Panel1: TPanel
    Left = 937
    Top = 29
    Width = 273
    Height = 407
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object cxGrid2: TcxGrid
      Left = 1
      Top = 90
      Width = 271
      Height = 316
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        DataController.DataModeController.GridModeBufferCount = 100
        DataController.DataSource = DS_eolxpar
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
        object cxGridDBTableView1FK_PAR: TcxGridDBColumn
          DataBinding.FieldName = 'FK_PAR'
          Width = 43
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088
          DataBinding.FieldName = 'FK_PAR'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownSizeable = True
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = DataModule2.DS_par
          MinWidth = 25
          Width = 134
        end
        object cxGridDBTableView1N1: TcxGridDBColumn
          DataBinding.FieldName = 'N1'
          Width = 35
        end
        object cxGridDBTableView1S1: TcxGridDBColumn
          DataBinding.FieldName = 'S1'
          Width = 59
        end
        object cxGridDBTableView1D1: TcxGridDBColumn
          DataBinding.FieldName = 'D1'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DateButtons = [btnClear, btnNow, btnToday]
          Properties.Kind = ckDateTime
          Width = 92
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 271
      Height = 89
      Align = alTop
      Lines.Strings = (
        '0 0 1 * * ? - '#1082#1072#1078#1076#1099#1081' '#1076#1077#1085#1100', '#1074' 1:00am'
        '0 0 0/1 ? * * * - '#1082#1072#1078#1076#1099#1081' 1 '#1095#1072#1089
        '0/30 * * ? * * * - '#1082#1072#1078#1076#1099#1077' 30 '#1089#1077#1082#1091#1085#1076
        '* */5 * ? * * * - '#1082#1072#1078#1076#1099#1077' 5 '#1084#1080#1085#1091#1090
        '15 */3 * ? * * - '#1082#1072#1078#1076#1099#1077' 3 '#1084#1080#1085#1091#1090#1099', '#1085#1072#1095#1080#1085#1072#1103' '#1089' 15 '
        #1089#1077#1082#1091#1085#1076#1099
        '0 0 0 ? * * 2034 - '#1079#1072#1087#1088#1077#1090#1080#1090#1100' ))')
      TabOrder = 1
    end
  end
  object OD_Eolink: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.parent_id, t.lsk, t.fk_objtp, tp.name, tp.cd as o' +
        'bjTpCd, o.name as uk, t.comm as comm, t.reu, t.kul, s.name as st' +
        'reet, '
      ' ltrim(t.nd,'#39'0'#39') as nd, t.entry,  ltrim(t.kw,'#39'0'#39') as kw, '
      
        ' t.guid, t.cd, t.uniqnum, t.app_tp, t.fk_klsk_obj, t.ogrn, t.dt_' +
        'crt, t.dt_upd, t.status, t.serviceId, t.fk_uk, r.reu as lsk_reu,' +
        ' t.tguid,'
      ' t.rowid from exs.eolink t'
      'left join bs.addr_tp tp on t.fk_objtp=tp.id'
      'left join scott.spul s on t.kul=s.id'
      'left join scott.t_org o on t.reu=o.reu'
      'left join exs.eolink r on t.fk_uk=r.id'
      'where (:tp<>0 or t.id=:fltId) and (:tp<>1 or t.id in :idSubst) '
      ':substExp1'
      ':substExp2'
      ''
      
        '/*order by t.id, t.parent_id, s.name, ltrim(t.nd,'#39'0'#39'), ltrim(t.k' +
        'w,'#39'0'#39')*/')
    Optimize = False
    Variables.Data = {
      03000000050000000A0000003A53554253544558503101000000000000000000
      00000A0000003A53554253544558503201000000000000000000000008000000
      3A4944535542535401000000100000002831313131312C313131313131312900
      00000000060000003A464C544944030000000000000000000000030000003A54
      50030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001B000000020000004944010000000000030000005245550100000000
      00020000004E44010000000000020000004B5701000000000005000000454E54
      5259010000000000040000004755494401000000000002000000434401000000
      000008000000464B5F4F424A545001000000000007000000554E49514E554D01
      0000000000060000004150505F54500100000000000B000000464B5F4B4C534B
      5F4F424A01000000000009000000504152454E545F4944010000000000040000
      004F47524E0100000000000600000044545F4352540100000000000600000044
      545F555044010000000000040000004E414D4501000000000002000000554B01
      000000000006000000535452454554010000000000030000004B554C01000000
      000004000000434F4D4D010000000000030000004C534B010000000000070000
      004F424A54504344010000000000060000005354415455530100000000000900
      000053455256494345494401000000000005000000464B5F554B010000000000
      070000004C534B5F524555010000000000050000005447554944010000000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    AfterQuery = OD_EolinkAfterQuery
    AfterFetchRecord = OD_EolinkAfterFetchRecord
    Session = DataModule2.OracleSession1
    DesignActivation = True
    AfterScroll = OD_EolinkAfterScroll
    Left = 32
    Top = 152
    object OD_EolinkID: TFloatField
      FieldName = 'ID'
      Origin = 't.id'
    end
    object OD_EolinkPARENT_ID: TFloatField
      FieldName = 'PARENT_ID'
      Origin = 't.parent_id'
    end
    object OD_EolinkFK_OBJTP: TFloatField
      FieldName = 'FK_OBJTP'
      Origin = 't.fk_objtp'
      Required = True
    end
    object OD_EolinkNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NAME'
      Origin = 'tp.name'
      ReadOnly = True
    end
    object OD_EolinkREU: TStringField
      FieldName = 'REU'
      Origin = 't.reu'
      Size = 4
    end
    object OD_EolinkUK: TStringField
      DisplayWidth = 25
      FieldKind = fkInternalCalc
      FieldName = 'UK'
      Origin = 'o.name'
      ReadOnly = True
      Size = 25
    end
    object OD_EolinkKUL: TStringField
      FieldName = 'KUL'
      Origin = 't.kul'
      Size = 4
    end
    object OD_EolinkSTREET: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'STREET'
      Origin = 's.name'
      ReadOnly = True
      Size = 25
    end
    object OD_EolinkND: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ND'
      Origin = 't.nd'
      ReadOnly = True
      Size = 6
    end
    object OD_EolinkENTRY: TFloatField
      FieldName = 'ENTRY'
      Origin = 't.entry'
      ReadOnly = True
    end
    object OD_EolinkKW: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'KW'
      Origin = 't.kw'
      ReadOnly = True
      Size = 64
    end
    object OD_EolinkGUID: TStringField
      FieldName = 'GUID'
      Origin = 't.guid'
      Size = 36
    end
    object OD_EolinkCD: TStringField
      FieldName = 'CD'
      Origin = 't.cd'
      ReadOnly = True
      Size = 128
    end
    object OD_EolinkUNIQNUM: TStringField
      FieldName = 'UNIQNUM'
      Origin = 't.uniqnum'
      ReadOnly = True
      Size = 255
    end
    object OD_EolinkAPP_TP: TFloatField
      FieldName = 'APP_TP'
      Origin = 't.app_tp'
    end
    object OD_EolinkFK_KLSK_OBJ: TFloatField
      FieldName = 'FK_KLSK_OBJ'
      Origin = 't.FK_KLSK_OBJ'
    end
    object OD_EolinkOGRN: TStringField
      FieldName = 'OGRN'
      Origin = 't.ogrn'
      Size = 13
    end
    object OD_EolinkDT_CRT: TDateTimeField
      FieldName = 'DT_CRT'
      Origin = 't.dt_crt'
    end
    object OD_EolinkDT_UPD: TDateTimeField
      FieldName = 'DT_UPD'
      Origin = 't.DT_UPD'
    end
    object OD_EolinkCOMM: TStringField
      FieldName = 'COMM'
      Origin = 't.COMM'
      Size = 1024
    end
    object OD_EolinkLSK: TStringField
      FieldName = 'LSK'
      Origin = 't.lsk'
      Size = 8
    end
    object OD_EolinkOBJTPCD: TStringField
      FieldName = 'OBJTPCD'
      Size = 100
    end
    object OD_EolinkSTATUS: TFloatField
      FieldName = 'STATUS'
      Origin = 't.status'
    end
    object OD_EolinkSERVICEID: TStringField
      FieldName = 'SERVICEID'
      Origin = 't.serviceid'
      Size = 13
    end
    object OD_EolinkFK_UK: TFloatField
      FieldName = 'FK_UK'
    end
    object OD_EolinkLSK_REU: TStringField
      FieldName = 'LSK_REU'
      Size = 4
    end
    object OD_EolinkTGUID: TStringField
      FieldName = 'TGUID'
      Origin = 't.tguid'
      Size = 36
    end
  end
  object DS_eolink: TDataSource
    DataSet = OD_Eolink
    Left = 72
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 120
    Top = 152
    object Eolink1: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1079#1072#1076#1072#1085#1080#1103' Task '#1087#1086' '#1086#1073#1098#1077#1082#1090#1091' Eolink'
      OnClick = Eolink1Click
    end
    object N2: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1080#1077#1088#1072#1088#1093#1080#1102' '#1086#1073#1098#1077#1082#1090#1086#1074' Eolink '#1090#1080#1087#1072' "'#1044#1086#1084'"'
      OnClick = N2Click
    end
    object Eolink2: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1080#1077#1088#1072#1088#1093#1080#1102' '#1086#1073#1098#1077#1082#1090#1086#1074' Eolink '#1090#1080#1087#1072' "'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"'
      OnClick = Eolink2Click
    end
    object N4: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1087#1083#1072#1090#1077#1078#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1087#1086' '#1051#1057
      OnClick = N4Click
    end
    object N3: TMenuItem
      Caption = '---'
    end
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1084#1072' '#1087#1086' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      OnClick = N1Click
    end
    object N16: TMenuItem
      Caption = #1057#1084#1077#1085#1080#1090#1100' '#1059#1050' '#1087#1086' '#1044#1086#1084#1091
      OnClick = N16Click
    end
    object N5: TMenuItem
      Caption = '---'
    end
    object Excel1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = Excel1Click
    end
    object N9: TMenuItem
      Caption = '---'
    end
    object N8: TMenuItem
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1055#1044',  '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      object N6: TMenuItem
        Caption = 
          #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1072#1082#1090#1080#1074#1085#1099#1077' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077#1088#1080#1086#1076#1091' '#1080#1084#1087#1086 +
          #1088#1090#1072', '#1087#1086' '#1076#1086#1084#1091
        OnClick = N6Click
      end
      object N12: TMenuItem
        Caption = 
          #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1080#1084#1087#1086#1088#1090' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077#1088 +
          #1080#1086#1076#1091' '#1080#1084#1087#1086#1088#1090#1072', '#1087#1086' '#1076#1086#1084#1091' '#1074' '#1043#1048#1057
        OnClick = N12Click
      end
      object N14: TMenuItem
        Caption = 
          #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1101#1082#1089#1087#1086#1088#1090' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077 +
          #1088#1080#1086#1076#1091' '#1101#1082#1089#1087#1086#1088#1090#1072', '#1087#1086' '#1076#1086#1084#1091' '#1080#1079' '#1043#1048#1057' '
        OnClick = N14Click
      end
      object N7: TMenuItem
        Caption = 
          #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1077#1076#1086#1089#1090#1072#1102#1097#1080#1077' '#1055#1044' '#1087#1086' '#1076#1086#1084#1091' '#1087#1086' '#1054#1089#1085#1086#1074#1085#1099#1084' '#1089#1095#1077#1090#1072#1084', '#1079#1072' '#1047#1040#1043#1056#1059#1047#1054#1063 +
          #1053#1067#1049' '#1087#1077#1088#1080#1086#1076
        OnClick = N7Click
      end
    end
    object N18: TMenuItem
      Caption = '---'
    end
    object N11: TMenuItem
      Caption = 
        #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1077#1076#1086#1089#1090#1072#1102#1097#1080#1077' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077#1088#1080#1086#1076#1091' '#1080#1084#1087#1086 +
        #1088#1090#1072', '#1087#1086' '#1059#1050
      OnClick = N11Click
    end
    object N17: TMenuItem
      Caption = 
        #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1077#1076#1086#1089#1090#1072#1102#1097#1080#1077' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077#1088#1080#1086#1076#1091' '#1080#1084#1087#1086 +
        #1088#1090#1072', '#1087#1086' '#1056#1057#1054
      OnClick = N17Click
    end
    object N13: TMenuItem
      Caption = 
        #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1080#1084#1087#1086#1088#1090' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077#1088 +
        #1080#1086#1076#1091' '#1080#1084#1087#1086#1088#1090#1072',  '#1087#1086' '#1059#1050' '#1074' '#1043#1048#1057
      OnClick = N13Click
    end
    object N19: TMenuItem
      Caption = 
        #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1080#1084#1087#1086#1088#1090' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077#1088 +
        #1080#1086#1076#1091' '#1080#1084#1087#1086#1088#1090#1072',  '#1087#1086' '#1056#1050#1062' '#1074' '#1043#1048#1057
      OnClick = N19Click
    end
    object N15: TMenuItem
      Caption = 
        #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1101#1082#1089#1087#1086#1088#1090' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077 +
        #1088#1080#1086#1076#1091' '#1101#1082#1089#1087#1086#1088#1090#1072',  '#1087#1086' '#1059#1050' '#1080#1079' '#1043#1048#1057
      OnClick = N15Click
    end
    object N20: TMenuItem
      Caption = 
        #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1101#1082#1089#1087#1086#1088#1090' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077 +
        #1088#1080#1086#1076#1091' '#1101#1082#1089#1087#1086#1088#1090#1072',  '#1087#1086' '#1056#1050#1062' '#1080#1079' '#1043#1048#1057
      OnClick = N20Click
    end
    object N10: TMenuItem
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1072#1082#1090#1080#1074#1085#1099#1077' '#1055#1044' '#1079#1072' '#1047#1040#1043#1056#1059#1047#1054#1063#1053#1067#1049' '#1087#1077#1088#1080#1086#1076', '#1087#1086' '#1059#1050
      OnClick = N10Click
    end
  end
  object OQ_add_house: TOracleQuery
    SQL.Strings = (
      'begin'
      'insert into exs.eolink'
      '  (reu, kul, nd, guid, parent_id, fk_objtp)'
      
        'select distinct k.reu, k.kul, k.nd, t.houseguid as guid, :fk_eol' +
        'ink, tp.id as fk_objtp'
      ' from scott.kart k'
      'join scott.PREP_HOUSE_FIAS t on k.house_id=t.fk_house'
      'join bs.addr_tp tp on tp.cd='#39#1044#1086#1084#39
      'where k.reu=:reu'
      
        'and not exists (select * from exs.eolink e where t.houseguid=e.g' +
        'uid);'
      ' commit;'
      'end;')
    Session = DataModule2.OracleSession1
    Optimize = False
    Variables.Data = {
      0300000002000000040000003A5245550500000000000000000000000A000000
      3A464B5F454F4C494E4B030000000000000000000000}
    Left = 32
    Top = 216
  end
  object OD_eolxpar: TOracleDataSet
    SQL.Strings = (
      
        'select t.*, p.val_tp, t.rowid from EXS.EOLXPAR t, oralv.u_hfpar ' +
        'p'
      'where t.fk_eolink=:fk_eolink and t.fk_par=p.id')
    Optimize = False
    Variables.Data = {
      03000000010000000A0000003A464B5F454F4C494E4B03000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      040000000700000002000000494401000000000009000000464B5F454F4C494E
      4B01000000000006000000464B5F504152010000000000020000004E31010000
      0000000200000053310100000000000200000044310100000000000600000056
      414C5F5450010000000000}
    Master = OD_Eolink
    MasterFields = 'ID'
    DetailFields = 'FK_EOLINK'
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Active = True
    AfterInsert = OD_eolxparAfterInsert
    AfterScroll = OD_eolxparAfterScroll
    Left = 640
    Top = 120
    object OD_eolxparID: TFloatField
      FieldName = 'ID'
    end
    object OD_eolxparFK_EOLINK: TFloatField
      FieldName = 'FK_EOLINK'
    end
    object OD_eolxparFK_PAR: TFloatField
      FieldName = 'FK_PAR'
      Required = True
    end
    object OD_eolxparN1: TFloatField
      FieldName = 'N1'
    end
    object OD_eolxparS1: TStringField
      FieldName = 'S1'
      Size = 1024
    end
    object OD_eolxparD1: TDateTimeField
      FieldName = 'D1'
    end
    object OD_eolxparVAL_TP: TStringField
      FieldName = 'VAL_TP'
      Size = 2
    end
  end
  object DS_eolxpar: TDataSource
    DataSet = OD_eolxpar
    Left = 680
    Top = 120
  end
end
