object FrmTask: TFrmTask
  Left = 241
  Top = 466
  Width = 1222
  Height = 492
  Caption = 'Task'
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
    Top = 29
    Width = 1206
    Height = 424
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_task
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
      object cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PARENT_ID'
        Width = 45
      end
      object cxGrid1DBTableView1DEP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DEP_ID'
        Width = 29
      end
      object cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_EOLINK'
        Width = 43
      end
      object cxGrid1DBTableView1EOLTPNAME: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
        DataBinding.FieldName = 'EOLTP_NAME'
        Width = 42
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 91
      end
      object cxGrid1DBTableView1STATE: TcxGridDBColumn
        DataBinding.FieldName = 'STATE'
        Width = 42
      end
      object cxGrid1DBTableView1FK_ACT: TcxGridDBColumn
        DataBinding.FieldName = 'FK_ACT'
        Width = 44
      end
      object cxGrid1DBTableView1ACT_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'ACT_NAME'
        Width = 112
      end
      object cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQNUM'
        Width = 61
      end
      object cxGrid1DBTableView1RESULT: TcxGridDBColumn
        DataBinding.FieldName = 'RESULT'
        Width = 93
      end
      object cxGrid1DBTableView1ERRACKCNT: TcxGridDBColumn
        DataBinding.FieldName = 'ERRACKCNT'
        Width = 72
      end
      object cxGrid1DBTableView1PRIORITY: TcxGridDBColumn
        DataBinding.FieldName = 'PRIORITY'
        Width = 83
      end
      object cxGrid1DBTableView1TRACE: TcxGridDBColumn
        DataBinding.FieldName = 'TRACE'
        Width = 67
      end
      object cxGrid1DBTableView1GUID: TcxGridDBColumn
        DataBinding.FieldName = 'GUID'
        Width = 39
      end
      object cxGrid1DBTableView1TGUID: TcxGridDBColumn
        DataBinding.FieldName = 'TGUID'
        Width = 41
      end
      object cxGrid1DBTableView1FK_USER: TcxGridDBColumn
        DataBinding.FieldName = 'FK_USER'
        Width = 40
      end
      object cxGrid1DBTableView1COMM: TcxGridDBColumn
        DataBinding.FieldName = 'COMM'
        Width = 55
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        DataBinding.FieldName = 'DT_CRT'
        Width = 89
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        DataBinding.FieldName = 'DT_UPD'
        Width = 80
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
  object OD_Task: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.parent_id, t.dep_id, t.fk_eolink, t.state, t.uniq' +
        'num, t.cd, t.errackcnt, t.priority, t.trace,'
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
      'order by t.cd, t.id, t.parent_id, t.dep_id')
    Optimize = False
    Variables.Data = {
      0300000003000000080000003A49445355425354050000001500000028333134
      3636362C31363635322C3430353137290000000000040000003A464C54030000
      00040000000000000000000000060000003A464C544944030000000000000000
      000000}
    QBEDefinition.QBEFieldDefs = {
      0400000014000000020000004944010000000000040000004755494401000000
      000002000000434401000000000007000000554E49514E554D01000000000009
      000000504152454E545F49440100000000000600000044545F43525401000000
      00000600000044545F55504401000000000004000000434F4D4D010000000000
      060000004445505F494401000000000009000000464B5F454F4C494E4B010000
      0000000500000053544154450100000000000900000045525241434B434E5401
      0000000000080000005052494F52495459010000000000050000005452414345
      01000000000006000000464B5F414354010000000000080000004143545F4E41
      4D4501000000000006000000524553554C540100000000000500000054475549
      4401000000000007000000464B5F555345520100000000000A000000454F4C54
      505F4E414D45010000000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Left = 32
    Top = 152
    object OD_TaskID: TFloatField
      FieldName = 'ID'
      Origin = 't.id'
      Required = True
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
      Required = True
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
  end
end