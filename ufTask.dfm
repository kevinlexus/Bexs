object FrmTask: TFrmTask
  Left = 818
  Top = 222
  Width = 1222
  Height = 493
  Caption = #1047#1072#1076#1072#1085#1080#1103' - Task'
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
        Width = 20
      end
      object cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PARENT_ID'
        Width = 20
      end
      object cxGrid1DBTableView1DEP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DEP_ID'
        Width = 20
      end
      object cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_EOLINK'
        Width = 59
      end
      object cxGrid1DBTableView1EOLTPNAME: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
        DataBinding.FieldName = 'EOLTP_NAME'
        Width = 24
      end
      object cxGrid1DBTableView1OBJ_ADR: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'OBJ_ADR'
        Width = 76
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 20
      end
      object cxGrid1DBTableView1STATE: TcxGridDBColumn
        DataBinding.FieldName = 'STATE'
        Width = 39
      end
      object cxGrid1DBTableView1FK_ACT: TcxGridDBColumn
        DataBinding.FieldName = 'FK_ACT'
        Width = 41
      end
      object cxGrid1DBTableView1ACT_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'ACT_NAME'
        Width = 100
      end
      object cxGrid1DBTableView1RESULT: TcxGridDBColumn
        DataBinding.FieldName = 'RESULT'
        Width = 51
      end
      object cxGrid1DBTableView1COMM: TcxGridDBColumn
        DataBinding.FieldName = 'COMM'
        Width = 23
      end
      object cxGrid1DBTableView1ERRACKCNT: TcxGridDBColumn
        DataBinding.FieldName = 'ERRACKCNT'
        Width = 49
      end
      object cxGrid1DBTableView1PRIORITY: TcxGridDBColumn
        DataBinding.FieldName = 'PRIORITY'
        Width = 48
      end
      object cxGrid1DBTableView1TRACE: TcxGridDBColumn
        DataBinding.FieldName = 'TRACE'
        Width = 49
      end
      object cxGrid1DBTableView1GUID: TcxGridDBColumn
        DataBinding.FieldName = 'GUID'
        Width = 50
      end
      object cxGrid1DBTableView1TGUID: TcxGridDBColumn
        DataBinding.FieldName = 'TGUID'
        Width = 49
      end
      object cxGrid1DBTableView1FK_USER: TcxGridDBColumn
        DataBinding.FieldName = 'FK_USER'
        Width = 49
      end
      object cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQNUM'
        Width = 51
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        DataBinding.FieldName = 'DT_CRT'
        Width = 46
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        DataBinding.FieldName = 'DT_UPD'
        Width = 51
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
    Left = 945
    Top = 29
    Width = 261
    Height = 425
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 259
      Height = 423
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
  end
  object OD_Task: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.parent_id, t.dep_id, t.fk_eolink, t.state, t.uniq' +
        'num, t.cd, t.errackcnt, t.priority, t.trace,'
      't.fk_act, s.name as act_name, t.result, t.guid, t.tguid, '
      't.fk_user, t.dt_crt, t.dt_upd, t.comm, tp.name as eoltp_name, '
      
        ' '#39'REU:'#39'||e.reu||'#39','#39'||trim(g.name)||'#39', '#39'||trim(sp.name)||'#39', '#39'||lt' +
        'rim(e.nd,'#39'0'#39')||'#39', '#39'||ltrim(e.kw,'#39'0'#39') as obj_adr, '
      ' t.rowid'
      ' from EXS.TASK t'
      ' join bs.list s on t.fk_act=s.id '
      ' left join EXS.EOLINK e on t.fk_eolink=e.id'
      ' left join bs.addr_tp tp on e.fk_objtp=tp.id'
      ' left join scott.spul sp on e.kul=sp.id'
      ' left join scott.t_org g on e.reu=g.reu'
      
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
      0300000003000000080000003A49445355425354010000000F00000028313232
      3131322C2033333331290000000000040000003A464C54030000000400000000
      00000000000000060000003A464C544944030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000015000000020000004944010000000000040000004755494401000000
      000002000000434401000000000007000000554E49514E554D01000000000009
      000000504152454E545F49440100000000000600000044545F43525401000000
      00000600000044545F55504401000000000004000000434F4D4D010000000000
      060000004445505F494401000000000009000000464B5F454F4C494E4B010000
      0000000500000053544154450100000000000900000045525241434B434E5401
      0000000000080000005052494F52495459010000000000050000005452414345
      01000000000006000000464B5F414354010000000000080000004143545F4E41
      4D4501000000000006000000524553554C540100000000000500000054475549
      4401000000000007000000464B5F555345520100000000000A000000454F4C54
      505F4E414D45010000000000070000004F424A5F414452010000000000}
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
      0300000001000000080000003A464B5F5441534B030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000700000002000000494401000000000006000000464B5F5041520100
      00000000020000004E3101000000000002000000533101000000000002000000
      44310100000000000600000056414C5F545001000000000007000000464B5F54
      41534B010000000000}
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
