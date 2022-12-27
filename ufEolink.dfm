object FrmEolink: TFrmEolink
  Left = 562
  Top = 862
  Caption = #1054#1073#1098#1077#1082#1090#1099' - Eolink'
  ClientHeight = 436
  ClientWidth = 1210
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
        BestFitMaxWidth = 30
        MinWidth = 30
        Width = 30
      end
      object cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PARENT_ID'
        BestFitMaxWidth = 30
        MinWidth = 30
        Width = 30
      end
      object cxGrid1DBTableView1FK_OBJTP: TcxGridDBColumn
        DataBinding.FieldName = 'FK_OBJTP'
        Width = 20
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'NAME'
        BestFitMaxWidth = 20
        Width = 38
      end
      object cxGrid1DBTableView1REU: TcxGridDBColumn
        DataBinding.FieldName = 'REU'
        BestFitMaxWidth = 15
        MinWidth = 15
        Width = 15
      end
      object cxGrid1DBTableView1UK: TcxGridDBColumn
        DataBinding.FieldName = 'UK'
        Width = 65
      end
      object cxGrid1DBTableView1KUL: TcxGridDBColumn
        DataBinding.FieldName = 'KUL'
        Width = 23
      end
      object cxGrid1DBTableView1STREET: TcxGridDBColumn
        DataBinding.FieldName = 'STREET'
        Width = 38
      end
      object cxGrid1DBTableView1ND: TcxGridDBColumn
        DataBinding.FieldName = 'ND'
        Width = 20
      end
      object cxGrid1DBTableView1KW: TcxGridDBColumn
        DataBinding.FieldName = 'KW'
        Width = 20
      end
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        Caption = #1051#1080#1094'.'#1089#1095'.'
        DataBinding.FieldName = 'LSK'
        BestFitMaxWidth = 30
        Width = 23
      end
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Width = 26
      end
      object cxGrid1DBTableView1COMM: TcxGridDBColumn
        DataBinding.FieldName = 'COMM'
        OnCustomDrawCell = cxGrid1DBTableView1COMMCustomDrawCell
        Width = 105
      end
      object cxGrid1DBTableView1FK_UK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_UK'
        Width = 22
      end
      object cxGrid1DBTableView1NAME_REU: TcxGridDBColumn
        Caption = #1059#1050' '#1083#1080#1094'.'#1089#1095'.'
        DataBinding.FieldName = 'NAME_REU'
        Width = 25
      end
      object cxGrid1DBTableView1GUID: TcxGridDBColumn
        Caption = 'GUID '#1060#1048#1040#1057
        DataBinding.FieldName = 'GUID'
        Width = 33
      end
      object cxGrid1DBTableView1GUID_GIS: TcxGridDBColumn
        Caption = 'GUID '#1043#1048#1057
        DataBinding.FieldName = 'GUID_GIS'
        Width = 38
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 29
      end
      object cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQNUM'
        Width = 28
      end
      object cxGrid1DBTableView1SERVICEID: TcxGridDBColumn
        DataBinding.FieldName = 'SERVICEID'
        Width = 40
      end
      object cxGrid1DBTableView1FK_KLSK_PREMISE: TcxGridDBColumn
        DataBinding.FieldName = 'FK_KLSK_OBJ'
        Width = 29
      end
      object cxGrid1DBTableView1OGRN: TcxGridDBColumn
        DataBinding.FieldName = 'OGRN'
        Width = 36
      end
      object cxGrid1DBTableView1ENTRY: TcxGridDBColumn
        DataBinding.FieldName = 'ENTRY'
        Width = 29
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        DataBinding.FieldName = 'DT_CRT'
        Width = 29
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        DataBinding.FieldName = 'DT_UPD'
        Width = 31
      end
      object cxGrid1DBTableView1TGUID: TcxGridDBColumn
        DataBinding.FieldName = 'TGUID'
        Width = 36
      end
      object cxGrid1DBTableView1FK_HOUSE: TcxGridDBColumn
        DataBinding.FieldName = 'FK_HOUSE'
        Width = 69
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
      Top = 0
      Hint = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' QBE'
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' QBE'
      Caption = 'ToolButton2'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Edit1: TEdit
      Left = 54
      Top = 0
      Width = 203
      Height = 22
      Hint = #1042#1074#1077#1089#1090#1080' Eolink.Id'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object ToolButton4: TToolButton
      Left = 257
      Top = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' Eolink.Id'
      Caption = 'ToolButton4'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 280
      Top = 0
      Hint = #1057#1085#1103#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' Eolink.Id'
      Caption = 'ToolButton5'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
    object ToolButton6: TToolButton
      Left = 303
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton7: TToolButton
      Left = 311
      Top = 0
      Hint = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1074#1089#1077' '#1082#1086#1083#1086#1085#1082#1080
      Caption = 'ToolButton7'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton7Click
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
      ' t.guid, t.cd, t.uniqnum, t.app_tp, t.fk_klsk_obj, '
      
        't.ogrn, t.dt_crt, t.dt_upd, t.status, t.serviceId, t.fk_uk, o2.r' +
        'eu||'#39'-'#39'||o2.name as name_reu, t.tguid, t.fk_house, t.guid_gis,'
      ' t.rowid from exs.eolink t'
      'left join bs.addr_tp tp on t.fk_objtp=tp.id'
      'left join scott.spul s on t.kul=s.id'
      'left join scott.t_org o on t.reu=o.reu'
      'left join exs.eolink r on t.fk_uk=r.id'
      'left join scott.t_org o2 on r.reu=o2.reu'
      'where 1=1'
      ':substExp3'
      ':substExp4'
      ':substExp1'
      ':substExp2'
      ''
      '/*(:tp<>0 or t.id=:fltId) and (:tp<>1 or t.id in :idSubst) */'
      ''
      
        '/*order by t.id, t.parent_id, s.name, ltrim(t.nd,'#39'0'#39'), ltrim(t.k' +
        'w,'#39'0'#39')*/')
    Optimize = False
    Variables.Data = {
      0400000004000000140000003A00530055004200530054004500580050003100
      010000000000000000000000140000003A005300550042005300540045005800
      50003200010000000000000000000000140000003A0053005500420053005400
      4500580050003300010000000000000000000000140000003A00530055004200
      530054004500580050003400010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001D000000040000004900440001000000000006000000520045005500
      010000000000040000004E004400010000000000040000004B00570001000000
      00000A00000045004E0054005200590001000000000008000000470055004900
      440001000000000004000000430044000100000000001000000046004B005F00
      4F0042004A00540050000100000000000E00000055004E00490051004E005500
      4D000100000000000C0000004100500050005F00540050000100000000001600
      000046004B005F004B004C0053004B005F004F0042004A000100000000001200
      000050004100520045004E0054005F0049004400010000000000080000004F00
      470052004E000100000000000C000000440054005F0043005200540001000000
      00000C000000440054005F00550050004400010000000000080000004E004100
      4D0045000100000000000400000055004B000100000000000C00000053005400
      5200450045005400010000000000060000004B0055004C000100000000000800
      000043004F004D004D00010000000000060000004C0053004B00010000000000
      0E0000004F0042004A0054005000430044000100000000000C00000053005400
      4100540055005300010000000000120000005300450052005600490043004500
      490044000100000000000A00000046004B005F0055004B000100000000000A00
      000054004700550049004400010000000000100000004E0041004D0045005F00
      5200450055000100000000001000000046004B005F0048004F00550053004500
      0100000000001000000047005500490044005F00470049005300010000000000}
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
      Origin = 't.fk_uk'
    end
    object OD_EolinkNAME_REU: TStringField
      FieldName = 'NAME_REU'
      Size = 30
    end
    object OD_EolinkTGUID: TStringField
      FieldName = 'TGUID'
      Origin = 't.tguid'
      Size = 36
    end
    object OD_EolinkFK_HOUSE: TFloatField
      FieldName = 'FK_HOUSE'
    end
    object OD_EolinkGUID_GIS: TStringField
      FieldName = 'GUID_GIS'
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
    object N22: TMenuItem
      Caption = #1047#1072#1076#1072#1085#1080#1103' '#1087#1086' '#1086#1073#1098#1077#1082#1090#1091
      OnClick = N22Click
    end
    object Eolink1: TMenuItem
      Action = Action1
      Caption = #1047#1072#1076#1072#1085#1080#1103' '#1087#1086' '#1044#1086#1084#1091' '#1076#1072#1085#1085#1086#1075#1086' '#1086#1073#1098#1077#1082#1090#1072
    end
    object N2: TMenuItem
      Action = Action2
    end
    object Eolink2: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1080#1077#1088#1072#1088#1093#1080#1102' '#1086#1073#1098#1077#1082#1090#1086#1074' Eolink '#1090#1080#1087#1072' "'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"'
      OnClick = Eolink2Click
    end
    object N4: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1055#1044' '#1087#1086' '#1051#1057
      OnClick = N4Click
    end
    object N21: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1055#1044' '#1087#1086' '#1044#1086#1084#1091' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1086#1073#1098#1077#1082#1090#1072
      OnClick = N21Click
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
      Visible = False
      object N6: TMenuItem
        Caption = 
          #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1072#1082#1090#1080#1074#1085#1099#1077' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077#1088#1080#1086#1076#1091' '#1080#1084#1087#1086 +
          #1088#1090#1072', '#1087#1086' '#1076#1086#1084#1091
        Visible = False
        OnClick = N6Click
      end
      object N12: TMenuItem
        Caption = 
          #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1080#1084#1087#1086#1088#1090' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077#1088 +
          #1080#1086#1076#1091' '#1080#1084#1087#1086#1088#1090#1072', '#1087#1086' '#1076#1086#1084#1091' '#1074' '#1043#1048#1057
        Visible = False
        OnClick = N12Click
      end
      object N14: TMenuItem
        Caption = 
          #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1101#1082#1089#1087#1086#1088#1090' '#1055#1044' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1074' '#1087#1072#1088#1072#1084#1077#1090#1088#1072#1093' '#1087#1077 +
          #1088#1080#1086#1076#1091' '#1101#1082#1089#1087#1086#1088#1090#1072', '#1087#1086' '#1076#1086#1084#1091' '#1080#1079' '#1043#1048#1057' '
        Visible = False
        OnClick = N14Click
      end
      object N7: TMenuItem
        Caption = 
          #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1077#1076#1086#1089#1090#1072#1102#1097#1080#1077' '#1055#1044' '#1087#1086' '#1076#1086#1084#1091' '#1087#1086' '#1054#1089#1085#1086#1074#1085#1099#1084' '#1089#1095#1077#1090#1072#1084', '#1079#1072' '#1047#1040#1043#1056#1059#1047#1054#1063 +
          #1053#1067#1049' '#1087#1077#1088#1080#1086#1076
        Visible = False
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
      '  (reu, kul, nd, guid, parent_id, fk_objtp, fk_house)'
      
        'select distinct k.reu, k.kul, k.nd, t.guid as guid, :fk_eolink, ' +
        'tp.id as fk_objtp, t.id as fk_house'
      ' from scott.kart k'
      'join scott.c_houses t on k.house_id=t.id'
      'join bs.addr_tp tp on tp.cd='#39#1044#1086#1084#39
      'where k.reu=:reu'
      'and not exists (select * from exs.eolink e where t.guid=e.guid);'
      ' commit;'
      'end;'
      ''
      '/*begin'
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
      'end;*/')
    Session = DataModule2.OracleSession1
    Optimize = False
    Variables.Data = {
      0400000002000000080000003A00520045005500050000000000000000000000
      140000003A0046004B005F0045004F004C0049004E004B000300000000000000
      00000000}
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
      0400000001000000140000003A0046004B005F0045004F004C0049004E004B00
      030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000700000004000000490044000100000000001200000046004B005F00
      45004F004C0049004E004B000100000000000C00000046004B005F0050004100
      5200010000000000040000004E00310001000000000004000000530031000100
      0000000004000000440031000100000000000C000000560041004C005F005400
      5000010000000000}
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
  object ActionManager1: TActionManager
    Left = 80
    Top = 96
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = #1047#1072#1076#1072#1085#1080#1103' '#1087#1086' '#1044#1086#1084#1091
      Hint = #1053#1072#1081#1090#1080' '#1079#1072#1076#1072#1085#1080#1103' '#1087#1086' '#1086#1073#1098#1077#1082#1090#1091' '#1090#1080#1087#1072' "'#1044#1086#1084'"'
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = #1048#1077#1088#1072#1088#1093#1080#1103' '#1086#1073#1098#1077#1082#1090#1086#1074' '#1087#1086' '#1044#1086#1084#1091
      Hint = #1053#1072#1081#1090#1080' '#1080#1077#1088#1072#1088#1093#1080#1102' '#1086#1073#1098#1077#1082#1090#1086#1074' '#1090#1080#1087#1072' "'#1044#1086#1084'"'
      OnExecute = Action2Execute
    end
  end
end
