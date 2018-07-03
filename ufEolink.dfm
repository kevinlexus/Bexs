object FrmEolink: TFrmEolink
  Left = 337
  Top = 205
  Width = 1226
  Height = 475
  Caption = 'Eolink'
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1210
    Height = 407
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
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
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 49
      end
      object cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PARENT_ID'
        Width = 49
      end
      object cxGrid1DBTableView1FK_OBJTP: TcxGridDBColumn
        DataBinding.FieldName = 'FK_OBJTP'
        Width = 49
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'NAME'
        BestFitMaxWidth = 20
        Width = 53
      end
      object cxGrid1DBTableView1UK: TcxGridDBColumn
        DataBinding.FieldName = 'UK'
        Width = 47
      end
      object cxGrid1DBTableView1REU: TcxGridDBColumn
        DataBinding.FieldName = 'REU'
        Width = 51
      end
      object cxGrid1DBTableView1COMM: TcxGridDBColumn
        DataBinding.FieldName = 'COMM'
        Width = 45
      end
      object cxGrid1DBTableView1KUL: TcxGridDBColumn
        DataBinding.FieldName = 'KUL'
        Width = 66
      end
      object cxGrid1DBTableView1STREET: TcxGridDBColumn
        DataBinding.FieldName = 'STREET'
        Width = 65
      end
      object cxGrid1DBTableView1ND: TcxGridDBColumn
        DataBinding.FieldName = 'ND'
        Width = 66
      end
      object cxGrid1DBTableView1ENTRY: TcxGridDBColumn
        DataBinding.FieldName = 'ENTRY'
        Width = 65
      end
      object cxGrid1DBTableView1KW: TcxGridDBColumn
        DataBinding.FieldName = 'KW'
        Width = 65
      end
      object cxGrid1DBTableView1GUID: TcxGridDBColumn
        DataBinding.FieldName = 'GUID'
        Width = 66
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 63
      end
      object cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQNUM'
        Width = 66
      end
      object cxGrid1DBTableView1APP_TP: TcxGridDBColumn
        DataBinding.FieldName = 'APP_TP'
        Width = 65
      end
      object cxGrid1DBTableView1FK_KLSK_OBJ: TcxGridDBColumn
        DataBinding.FieldName = 'FK_KLSK_OBJ'
        Width = 66
      end
      object cxGrid1DBTableView1OGRN: TcxGridDBColumn
        DataBinding.FieldName = 'OGRN'
        Width = 64
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        DataBinding.FieldName = 'DT_CRT'
        Width = 66
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        DataBinding.FieldName = 'DT_UPD'
        Width = 65
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
  object OD_Eolink: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, t.parent_id, t.fk_objtp, tp.name, o.name as uk, t.c' +
        'omm as comm, t.reu, t.kul, s.name as street, '
      ' ltrim(t.nd,'#39'0'#39') as nd, t.entry,  ltrim(t.kw,'#39'0'#39') as kw, '
      
        ' t.guid, t.cd, t.uniqnum, t.app_tp, t.fk_klsk_obj, t.ogrn, t.dt_' +
        'crt, t.dt_upd, '
      ' t.rowid from exs.eolink t'
      'left join bs.addr_tp tp on t.fk_objtp=tp.id'
      'left join scott.spul s on t.kul=s.id'
      'left join scott.t_org o on t.reu=o.reu'
      'where (:flt=0 or t.id in :idSubst) and (:fltId=0 or t.id=:fltId)'
      
        'order by t.id, t.parent_id, s.name, ltrim(t.nd,'#39'0'#39'), ltrim(t.kw,' +
        #39'0'#39')')
    Optimize = False
    Variables.Data = {
      0300000003000000040000003A464C5403000000040000000000000000000000
      080000003A49445355425354010000000F0000002831313231322C3132333234
      35290000000000060000003A464C544944030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000014000000020000004944010000000000030000005245550100000000
      00020000004E44010000000000020000004B5701000000000005000000454E54
      5259010000000000040000004755494401000000000002000000434401000000
      000008000000464B5F4F424A545001000000000007000000554E49514E554D01
      0000000000060000004150505F54500100000000000B000000464B5F4B4C534B
      5F4F424A01000000000009000000504152454E545F4944010000000000040000
      004F47524E0100000000000600000044545F4352540100000000000600000044
      545F555044010000000000040000004E414D4501000000000002000000554B01
      000000000006000000535452454554010000000000030000004B554C01000000
      000004000000434F4D4D010000000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    AfterFetchRecord = OD_EolinkAfterFetchRecord
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Left = 32
    Top = 152
    object OD_EolinkID: TFloatField
      FieldName = 'ID'
      Origin = 't.id'
      Required = True
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
      FieldKind = fkCalculated
      FieldName = 'UK'
      Origin = 'o.name'
      Size = 6
      Calculated = True
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
      ReadOnly = True
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
  end
  object DS_eolink: TDataSource
    DataSet = OD_Eolink
    Left = 72
    Top = 152
  end
end
