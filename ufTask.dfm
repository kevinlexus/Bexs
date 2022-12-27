object FrmTask: TFrmTask
  Left = 619
  Top = 70
  Caption = #1047#1072#1076#1072#1085#1080#1103' - Task'
  ClientHeight = 454
  ClientWidth = 1206
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
    Left = 937
    Top = 29
    Width = 8
    Height = 425
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 937
    Height = 425
    Align = alLeft
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_task
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
        Width = 25
      end
      object cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PARENT_ID'
        Width = 25
      end
      object cxGrid1DBTableView1DEP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DEP_ID'
        Width = 25
      end
      object cxGrid1DBTableView1EXISTS_TASKXTASK: TcxGridDBColumn
        Caption = #1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1077'?'
        DataBinding.FieldName = 'EXISTS_TASKXTASK'
      end
      object cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_EOLINK'
        Width = 37
      end
      object cxGrid1DBTableView1EOLTPNAME: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
        DataBinding.FieldName = 'EOLTP_NAME'
        Width = 25
      end
      object cxGrid1DBTableView1OBJ_ADR: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'OBJ_ADR'
        Width = 49
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 122
      end
      object cxGrid1DBTableView1STATE: TcxGridDBColumn
        DataBinding.FieldName = 'STATE'
        Width = 25
      end
      object cxGrid1DBTableView1FK_ACT: TcxGridDBColumn
        DataBinding.FieldName = 'FK_ACT'
        Width = 25
      end
      object cxGrid1DBTableView1ACT_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'ACT_NAME'
        Width = 71
      end
      object cxGrid1DBTableView1RESULT: TcxGridDBColumn
        DataBinding.FieldName = 'RESULT'
        Width = 25
      end
      object cxGrid1DBTableView1COMM: TcxGridDBColumn
        DataBinding.FieldName = 'COMM'
        Width = 25
      end
      object cxGrid1DBTableView1ERRACKCNT: TcxGridDBColumn
        DataBinding.FieldName = 'ERRACKCNT'
        Width = 25
      end
      object cxGrid1DBTableView1PRIORITY: TcxGridDBColumn
        DataBinding.FieldName = 'PRIORITY'
        Width = 25
      end
      object cxGrid1DBTableView1TRACE: TcxGridDBColumn
        DataBinding.FieldName = 'TRACE'
        Width = 25
      end
      object cxGrid1DBTableView1GUID: TcxGridDBColumn
        DataBinding.FieldName = 'GUID'
        Width = 24
      end
      object cxGrid1DBTableView1TGUID: TcxGridDBColumn
        DataBinding.FieldName = 'TGUID'
        Width = 25
      end
      object cxGrid1DBTableView1FK_PROC_UK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_PROC_UK'
        Width = 41
      end
      object cxGrid1DBTableView1NAME_REU: TcxGridDBColumn
        Caption = #1059#1050' '#1086#1073#1088#1072#1073#1086#1090#1082#1080
        DataBinding.FieldName = 'NAME_REU'
        Width = 81
      end
      object cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQNUM'
        Width = 25
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        DataBinding.FieldName = 'DT_CRT'
        Width = 25
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        DataBinding.FieldName = 'DT_UPD'
        Width = 25
      end
      object cxGrid1DBTableView1DT_NEXTSTART: TcxGridDBColumn
        DataBinding.FieldName = 'DT_NEXTSTART'
        Width = 61
      end
      object cxGrid1DBTableView1LAG_NEXTSTART: TcxGridDBColumn
        DataBinding.FieldName = 'LAG_NEXTSTART'
        Width = 49
      end
      object cxGrid1DBTableView1FK_USER: TcxGridDBColumn
        DataBinding.FieldName = 'FK_USER'
        Width = 25
      end
      object cxGrid1DBTableView1ID_FROM: TcxGridDBColumn
        DataBinding.FieldName = 'ID_FROM'
      end
      object cxGrid1DBTableView1ID_TO: TcxGridDBColumn
        DataBinding.FieldName = 'ID_TO'
      end
      object cxGrid1DBTableView1FK_EOLINK_LAST: TcxGridDBColumn
        DataBinding.FieldName = 'FK_EOLINK_LAST'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1206
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
      Hint = #1042#1074#1077#1089#1090#1080' Task.Id'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object ToolButton4: TToolButton
      Left = 257
      Top = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' Task.Id'
      Caption = 'ToolButton4'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 280
      Top = 0
      Hint = #1057#1085#1103#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' Task.Id'
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
      Caption = 'ToolButton7'
      ImageIndex = 2
      OnClick = ToolButton7Click
    end
  end
  object Panel1: TPanel
    Left = 945
    Top = 29
    Width = 261
    Height = 425
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object cxGrid2: TcxGrid
      Left = 1
      Top = 121
      Width = 259
      Height = 303
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu2
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        DataController.DataModeController.GridModeBufferCount = 100
        DataController.DataSource = DS_taskxpar
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
      Width = 259
      Height = 120
      Align = alTop
      Lines.Strings = (
        #1054#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086' '#1091#1082#1072#1079#1099#1074#1072#1090#1100' '#1089#1077#1082#1091#1085#1076#1099'!!!'
        '0 0 1 * * ? - '#1082#1072#1078#1076#1099#1081' '#1076#1077#1085#1100', '#1074' 1:00am'
        '0 0 0/1 ? * * * - '#1082#1072#1078#1076#1099#1081' 1 '#1095#1072#1089
        '0/30 * * ? * * * - '#1082#1072#1078#1076#1099#1077' 30 '#1089#1077#1082#1091#1085#1076
        '0 */1 * ? * * * - '#1082#1072#1078#1076#1099#1077' 1 '#1084#1080#1085#1091#1090#1091', '#1085#1072#1095#1080#1085#1072#1103' '#1089' 0 '
        #1089#1077#1082'.'
        '15 */3 * ? * * - '#1082#1072#1078#1076#1099#1077' 3 '#1084#1080#1085#1091#1090#1099', '#1085#1072#1095#1080#1085#1072#1103' '#1089' 15 '
        #1089#1077#1082#1091#1085#1076#1099
        '0 0 0 ? * * 2079 - '#1079#1072#1087#1088#1077#1090#1080#1090#1100' ))')
      TabOrder = 1
    end
  end
  object OD_Task: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.parent_id, t.dep_id, t.fk_eolink, t.state, t.uniq' +
        'num, t.cd, t.errackcnt, t.priority, t.trace,'
      
        't.fk_act, s.name as act_name, t.result, t.guid, t.tguid, case wh' +
        'en x.cnt is not null then '#39'TASKXTASK'#39' else '#39#39' end as exists_task' +
        'xtask, '
      't.fk_user, t.dt_crt, t.dt_upd, t.comm, tp.name as eoltp_name, '
      
        ' '#39'REU:'#39'||e.reu||'#39','#39'||trim(g.name)||'#39', '#39'||trim(sp.name)||'#39', '#39'||lt' +
        'rim(e.nd,'#39'0'#39')||'#39', '#39'||ltrim(e.kw,'#39'0'#39') as obj_adr, t.fk_proc_uk, t' +
        '.dt_nextstart, t.lag_nextstart, o.reu||'#39'-'#39'||o.name as name_reu,'
      ' t.id_from, t.id_to, t.fk_eolink_last,'
      ' t.rowid'
      ' from EXS.TASK t'
      ' join bs.list s on t.fk_act=s.id '
      ' left join EXS.EOLINK e on t.fk_eolink=e.id'
      ' left join bs.addr_tp tp on e.fk_objtp=tp.id'
      ' left join scott.spul sp on e.kul=sp.id'
      ' left join scott.t_org g on e.reu=g.reu'
      ' left join EXS.EOLINK e2 on t.fk_proc_uk=e2.id'
      ' left join scott.t_org o on e2.reu=o.reu'
      
        ' left join (select t.fk_child, count(*) as cnt from exs.taskxtas' +
        'k t group by t.fk_child) x on t.id=x.fk_child'
      
        'where (:flt=0 or t.id in :idSubst) and (:fltId=0 or t.fk_eolink=' +
        ':fltId)'
      'order by t.cd, t.id, t.parent_id, t.dep_id'
      ''
      
        '/*select t.id, t.parent_id, t.dep_id, t.fk_eolink, t.state, t.un' +
        'iqnum, t.cd, t.errackcnt, t.priority, t.trace,'
      't.fk_act, s.name as act_name, t.result, t.guid, t.tguid, '
      
        't.fk_user, t.dt_crt, t.dt_upd, t.comm, tp.name as eoltp_name, t.' +
        'rowid'
      ' from EXS.TASK t'
      ' join bs.list s on t.fk_act=s.id '
      ' left join EXS.EOLINK e on t.fk_eolink=e.id'
      ' left join bs.addr_tp tp on e.fk_objtp=tp.id'
      ''
      
        'where (:flt=0 or t.id in :idSubst) and (:fltId=0 or t.fk_eolink=' +
        ':fltId)'
      'order by t.cd, t.id, t.parent_id, t.dep_id'
      '*/')
    Optimize = False
    Variables.Data = {
      0400000003000000100000003A00490044005300550042005300540001000000
      0F000000283132323131322C2033333331290000000000080000003A0046004C
      005400030000000400000000000000000000000C0000003A0046004C00540049
      004400030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000001D000000040000004900440001000000000008000000470055004900
      440001000000000004000000430044000100000000000E00000055004E004900
      51004E0055004D000100000000001200000050004100520045004E0054005F00
      490044000100000000000C000000440054005F00430052005400010000000000
      0C000000440054005F005500500044000100000000000800000043004F004D00
      4D000100000000000C0000004400450050005F00490044000100000000001200
      000046004B005F0045004F004C0049004E004B000100000000000A0000005300
      540041005400450001000000000012000000450052005200410043004B004300
      4E005400010000000000100000005000520049004F0052004900540059000100
      000000000A000000540052004100430045000100000000000C00000046004B00
      5F00410043005400010000000000100000004100430054005F004E0041004D00
      45000100000000000C00000052004500530055004C0054000100000000000A00
      0000540047005500490044000100000000000E00000046004B005F0055005300
      450052000100000000001400000045004F004C00540050005F004E0041004D00
      45000100000000000E0000004F0042004A005F00410044005200010000000000
      1400000046004B005F00500052004F0043005F0055004B000100000000001800
      0000440054005F004E0045005800540053005400410052005400010000000000
      1A0000004C00410047005F004E00450058005400530054004100520054000100
      00000000100000004E0041004D0045005F005200450055000100000000000E00
      0000490044005F00460052004F004D000100000000000A000000490044005F00
      54004F000100000000001C00000046004B005F0045004F004C0049004E004B00
      5F004C0041005300540001000000000020000000450058004900530054005300
      5F005400410053004B0058005400410053004B00010000000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    AfterQuery = OD_TaskAfterQuery
    AfterFetchRecord = OD_TaskAfterFetchRecord
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Left = 32
    Top = 152
    object OD_TaskID: TFloatField
      FieldName = 'ID'
      Origin = 't.id'
    end
    object OD_TaskPARENT_ID: TFloatField
      FieldName = 'PARENT_ID'
      Origin = 't.PARENT_ID'
    end
    object OD_TaskDEP_ID: TFloatField
      FieldName = 'DEP_ID'
      Origin = 't.DEP_ID'
    end
    object OD_TaskFK_EOLINK: TFloatField
      FieldName = 'FK_EOLINK'
      Origin = 't.FK_EOLINK'
    end
    object OD_TaskSTATE: TStringField
      FieldName = 'STATE'
      Origin = 't.STATE'
      Size = 25
    end
    object OD_TaskUNIQNUM: TStringField
      FieldName = 'UNIQNUM'
      Origin = 't.UNIQNUM'
      Size = 255
    end
    object OD_TaskCD: TStringField
      FieldName = 'CD'
      Origin = 't.cd'
      Size = 64
    end
    object OD_TaskERRACKCNT: TFloatField
      FieldName = 'ERRACKCNT'
      Origin = 't.ERRACKCNT'
    end
    object OD_TaskPRIORITY: TFloatField
      FieldName = 'PRIORITY'
      Origin = 't.PRIORITY'
    end
    object OD_TaskTRACE: TFloatField
      FieldName = 'TRACE'
      Origin = 't.TRACE'
    end
    object OD_TaskFK_ACT: TFloatField
      FieldName = 'FK_ACT'
      Origin = 't.FK_ACT'
      Required = True
    end
    object OD_TaskACT_NAME: TStringField
      FieldName = 'ACT_NAME'
      Origin = 's.name'
      Size = 255
    end
    object OD_TaskRESULT: TStringField
      FieldName = 'RESULT'
      Origin = 't.RESULT'
      Size = 1024
    end
    object OD_TaskGUID: TStringField
      FieldName = 'GUID'
      Origin = 't.GUID'
      Size = 36
    end
    object OD_TaskTGUID: TStringField
      FieldName = 'TGUID'
      Origin = 't.TGUID'
      Size = 36
    end
    object OD_TaskFK_USER: TFloatField
      FieldName = 'FK_USER'
      Origin = 't.FK_USER'
    end
    object OD_TaskDT_CRT: TDateTimeField
      FieldName = 'DT_CRT'
      Origin = 't.DT_CRT'
    end
    object OD_TaskDT_UPD: TDateTimeField
      FieldName = 'DT_UPD'
      Origin = 't.DT_UPD'
    end
    object OD_TaskCOMM: TStringField
      FieldName = 'COMM'
      Origin = 't.COMM'
      Size = 1024
    end
    object OD_TaskEOLTP_NAME: TStringField
      FieldName = 'EOLTP_NAME'
      Origin = 'tp.name'
      Size = 100
    end
    object OD_TaskOBJ_ADR: TStringField
      FieldName = 'OBJ_ADR'
      Size = 170
    end
    object OD_TaskFK_PROC_UK: TFloatField
      FieldName = 'FK_PROC_UK'
    end
    object OD_TaskDT_NEXTSTART: TDateTimeField
      FieldName = 'DT_NEXTSTART'
    end
    object OD_TaskLAG_NEXTSTART: TFloatField
      FieldName = 'LAG_NEXTSTART'
    end
    object OD_TaskNAME_REU: TStringField
      FieldName = 'NAME_REU'
      Size = 68
    end
    object OD_TaskID_FROM: TFloatField
      FieldName = 'ID_FROM'
    end
    object OD_TaskID_TO: TFloatField
      FieldName = 'ID_TO'
    end
    object OD_TaskFK_EOLINK_LAST: TFloatField
      FieldName = 'FK_EOLINK_LAST'
    end
    object OD_TaskEXISTS_TASKXTASK: TStringField
      FieldName = 'EXISTS_TASKXTASK'
      ReadOnly = True
      Size = 9
    end
  end
  object DS_task: TDataSource
    DataSet = OD_Task
    Left = 72
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 152
    object Eolink1: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1086#1073#1098#1077#1082#1090' Eolink'
      OnClick = Eolink1Click
    end
    object N1: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1080#1077#1088#1072#1088#1093#1080#1102' '#1086#1073#1098#1077#1082#1090#1086#1074' Eolink'
      OnClick = N1Click
    end
    object Eolink2: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1080#1077#1088#1072#1088#1093#1080#1102' '#1086#1073#1098#1077#1082#1090#1086#1074' Eolink '#1090#1080#1087#1072' "'#1044#1086#1084'"'
      OnClick = Eolink2Click
    end
    object Eolink3: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1080#1077#1088#1072#1088#1093#1080#1102' '#1086#1073#1098#1077#1082#1090#1086#1074' Eolink '#1090#1080#1087#1072' "'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"'
      OnClick = Eolink3Click
    end
    object N2: TMenuItem
      Caption = '---'
    end
    object INS1: TMenuItem
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1074' INS'
      OnClick = INS1Click
    end
    object STP1: TMenuItem
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1074' STP'
      OnClick = STP1Click
    end
    object ACK1: TMenuItem
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1074' ACK'
      OnClick = ACK1Click
    end
    object RPT1: TMenuItem
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1074' RPT'
      OnClick = RPT1Click
    end
    object N3: TMenuItem
      Caption = '---'
    end
    object Excel1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = Excel1Click
    end
  end
  object OD_taskxpar: TOracleDataSet
    SQL.Strings = (
      
        'select t.*, p.val_tp, t.rowid from EXS.TASKXPAR t, oralv.u_hfpar' +
        ' p'
      'where t.fk_task=:fk_task and t.fk_par=p.id')
    Optimize = False
    Variables.Data = {
      0400000001000000100000003A0046004B005F005400410053004B0003000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      050000000700000004000000490044000100000000000C00000046004B005F00
      500041005200010000000000040000004E003100010000000000040000005300
      310001000000000004000000440031000100000000000C000000560041004C00
      5F00540050000100000000000E00000046004B005F005400410053004B000100
      00000000}
    Master = OD_Task
    MasterFields = 'ID'
    DetailFields = 'FK_TASK'
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    AfterInsert = OD_taskxparAfterInsert
    AfterScroll = OD_taskxparAfterScroll
    Left = 640
    Top = 152
    object OD_taskxparID: TFloatField
      FieldName = 'ID'
    end
    object OD_taskxparFK_PAR: TFloatField
      FieldName = 'FK_PAR'
      Required = True
    end
    object OD_taskxparN1: TFloatField
      FieldName = 'N1'
    end
    object OD_taskxparS1: TStringField
      FieldName = 'S1'
      Size = 1024
    end
    object OD_taskxparD1: TDateTimeField
      FieldName = 'D1'
    end
    object OD_taskxparVAL_TP: TStringField
      FieldName = 'VAL_TP'
      Size = 2
    end
    object OD_taskxparFK_TASK: TFloatField
      FieldName = 'FK_TASK'
    end
  end
  object DS_taskxpar: TDataSource
    DataSet = OD_taskxpar
    Left = 680
    Top = 152
  end
  object PopupMenu2: TPopupMenu
    Left = 1009
    Top = 141
    object Crone1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1099#1088#1072#1078#1077#1085#1080#1077' Crone'
      OnClick = Crone1Click
    end
  end
end
