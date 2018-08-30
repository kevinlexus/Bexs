object FrmPdoc: TFrmPdoc
  Left = 494
  Top = 428
  Width = 1198
  Height = 590
  Caption = #1055#1083#1072#1090#1077#1078#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' - Pdoc'
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
    Top = 54
    Width = 1182
    Height = 497
    Align = alClient
    PopupMenu = FrmEolink.PopupMenu1
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_pdoc
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
        Width = 39
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 39
      end
      object cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQNUM'
        Width = 39
      end
      object cxGrid1DBTableView1UK: TcxGridDBColumn
        DataBinding.FieldName = 'UK'
        Width = 40
      end
      object cxGrid1DBTableView1STREET: TcxGridDBColumn
        DataBinding.FieldName = 'STREET'
        Width = 39
      end
      object cxGrid1DBTableView1ND: TcxGridDBColumn
        DataBinding.FieldName = 'ND'
        Width = 39
      end
      object cxGrid1DBTableView1KW: TcxGridDBColumn
        DataBinding.FieldName = 'KW'
        Width = 39
      end
      object cxGrid1DBTableView1ENTRY: TcxGridDBColumn
        DataBinding.FieldName = 'ENTRY'
        Width = 39
      end
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        DataBinding.FieldName = 'LSK'
        Width = 39
      end
      object cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_EOLINK'
        Width = 39
      end
      object cxGrid1DBTableView1GUID: TcxGridDBColumn
        DataBinding.FieldName = 'GUID'
        Width = 40
      end
      object cxGrid1DBTableView1TGUID: TcxGridDBColumn
        DataBinding.FieldName = 'TGUID'
        Width = 39
      end
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Width = 39
      end
      object cxGrid1DBTableView1V: TcxGridDBColumn
        DataBinding.FieldName = 'V'
        Width = 39
      end
      object cxGrid1DBTableView1DT: TcxGridDBColumn
        DataBinding.FieldName = 'DT'
        Width = 39
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        DataBinding.FieldName = 'DT_CRT'
        Width = 39
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        DataBinding.FieldName = 'DT_UPD'
        Width = 39
      end
      object cxGrid1DBTableView1ERR: TcxGridDBColumn
        DataBinding.FieldName = 'ERR'
        Width = 39
      end
      object cxGrid1DBTableView1RESULT: TcxGridDBColumn
        DataBinding.FieldName = 'RESULT'
        Width = 128
      end
      object cxGrid1DBTableView1SUMMA_IN: TcxGridDBColumn
        Caption = #1044#1086#1083#1075
        DataBinding.FieldName = 'SUMMA_IN'
      end
      object cxGrid1DBTableView1PENYA_IN: TcxGridDBColumn
        Caption = #1042' '#1090'.'#1095' '#1087#1077#1085#1103
        DataBinding.FieldName = 'PENYA_IN'
      end
      object cxGrid1DBTableView1SUMMA_OUT: TcxGridDBColumn
        Caption = #1044#1086#1083#1075' '#1043#1048#1057
        DataBinding.FieldName = 'SUMMA_OUT'
      end
      object cxGrid1DBTableView1PENYA_OUT: TcxGridDBColumn
        Caption = ' '#1074' '#1090'.'#1095' '#1087#1077#1085#1103' '#1043#1048#1057
        DataBinding.FieldName = 'PENYA_OUT'
      end
      object cxGrid1DBTableView1COMM: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        DataBinding.FieldName = 'COMM'
        Width = 50
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 29
    Width = 1182
    Height = 25
    Align = alTop
    Lines.Strings = (
      
        #1055#1044': STATUS:'#1057#1090#1072#1090#1091#1089' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1074' '#1043#1048#1057' (0-'#1076#1086#1073#1072#1074#1083#1077#1085' '#1085#1072' '#1079#1072#1075#1088#1091#1079#1082#1091', 1-'#1079#1072#1075#1088 +
        #1091#1078#1077#1085', 2-'#1086#1090#1084#1077#1085#1105#1085'), V: '#1057#1090#1072#1090#1091#1089' (1-'#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1081', 0-'#1086#1090#1084#1077#1085#1105#1085'), ERR-0-'#1085#1077 +
        #1090' '#1086#1096#1080#1073#1082#1080', 1-'#1077#1089#1090#1100)
    TabOrder = 1
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1182
    Height = 29
    Caption = 'ToolBar1'
    Images = FrmMain.ImageList1
    TabOrder = 2
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
    object CheckBox1: TCheckBox
      Left = 303
      Top = 2
      Width = 74
      Height = 22
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1072#1082#1090#1080#1074#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' (V=1)'
      Caption = #1040#1082#1090#1080#1074#1085#1099#1077' (V=1)'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox1Click
    end
  end
  object OD_Pdoc: TOracleDataSet
    SQL.Strings = (
      'select t.*, e.lsk, o.name as uk, s.name as street, '
      ' ltrim(h.nd,'#39'0'#39') as nd, p.entry, ltrim(k.kw,'#39'0'#39') as kw, t.rowid'
      ' from EXS.PDOC t'
      ' join EXS.EOLINK e on t.fk_eolink=e.id -- '#1083#1080#1094'.'#1089#1095#1077#1090
      ' join EXS.EOLINK k on e.parent_id=k.id -- '#1082#1074#1072#1088#1090#1080#1088#1072
      ' join EXS.EOLINK p on k.parent_id=p.id -- '#1087#1086#1076#1098#1077#1079#1076
      ' join EXS.EOLINK h on p.parent_id=h.id -- '#1076#1086#1084
      ' join EXS.EOLINK uk on h.parent_id=uk.id -- '#1059#1050
      ' join scott.t_org o on uk.reu=o.reu -- '#1059#1050
      ' join scott.spul s on h.kul=s.id -- '#1091#1083#1080#1094#1072
      
        'where (:flt=0 or t.id in :idSubst) and (:fltId=0 or t.fk_eolink=' +
        ':fltId) and (:fltId2=0 or t.id=:fltId2)'
      'and (:flt2=0 or t.v=1)'
      'order by t.id desc')
    Optimize = False
    Variables.Data = {
      0300000005000000040000003A464C5403000000040000000000000000000000
      080000003A49445355425354010000000600000028302C312900000000000600
      00003A464C54494403000000040000000000000000000000070000003A464C54
      49443203000000040000000000000000000000050000003A464C543203000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000018000000020000004944010000000000040000004755494401000000
      000002000000434401000000000007000000554E49514E554D01000000000006
      00000044545F4352540100000000000600000044545F55504401000000000009
      000000464B5F454F4C494E4B01000000000006000000524553554C5401000000
      0000050000005447554944010000000000060000005354415455530100000000
      0001000000560100000000000200000044540100000000000300000045525201
      0000000000030000004C534B01000000000002000000554B0100000000000600
      0000535452454554010000000000020000004E4401000000000005000000454E
      545259010000000000020000004B5701000000000004000000434F4D4D010000
      0000000800000053554D4D415F494E0100000000000800000050454E59415F49
      4E0100000000000900000053554D4D415F4F5554010000000000090000005045
      4E59415F4F5554010000000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    AfterFetchRecord = OD_PdocAfterFetchRecord
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Left = 32
    Top = 152
    object OD_PdocID: TFloatField
      FieldName = 'ID'
      Origin = 't.id'
    end
    object OD_PdocGUID: TStringField
      FieldName = 'GUID'
      Origin = 't.guid'
      Size = 36
    end
    object OD_PdocCD: TStringField
      FieldName = 'CD'
      Origin = 't.cd'
      Size = 128
    end
    object OD_PdocUNIQNUM: TStringField
      FieldName = 'UNIQNUM'
      Origin = 't.UNIQNUM'
      Size = 255
    end
    object OD_PdocFK_EOLINK: TFloatField
      FieldName = 'FK_EOLINK'
      Origin = 't.FK_EOLINK'
      Required = True
    end
    object OD_PdocTGUID: TStringField
      FieldName = 'TGUID'
      Origin = 't.tguid'
      Size = 36
    end
    object OD_PdocSTATUS: TFloatField
      FieldName = 'STATUS'
      Origin = 't.status'
      Required = True
    end
    object OD_PdocV: TFloatField
      FieldName = 'V'
      Origin = 't.v'
      Required = True
    end
    object OD_PdocDT: TDateTimeField
      FieldName = 'DT'
      Origin = 't.dt'
    end
    object OD_PdocERR: TFloatField
      FieldName = 'ERR'
      Origin = 't.err'
    end
    object OD_PdocDT_CRT: TDateTimeField
      FieldName = 'DT_CRT'
      Origin = 't.dt_crt'
    end
    object OD_PdocDT_UPD: TDateTimeField
      FieldName = 'DT_UPD'
      Origin = 't.dt_upd'
    end
    object OD_PdocRESULT: TStringField
      FieldName = 'RESULT'
      Origin = 't.result'
      Size = 1024
    end
    object OD_PdocLSK: TStringField
      FieldName = 'LSK'
      Origin = 'e.lsk'
      Size = 8
    end
    object OD_PdocUK: TStringField
      FieldName = 'UK'
      Origin = 'o.name'
      Required = True
      Size = 64
    end
    object OD_PdocSTREET: TStringField
      FieldName = 'STREET'
      Origin = 's.name'
      Size = 25
    end
    object OD_PdocND: TStringField
      FieldName = 'ND'
      Origin = 'h.nd'
      Size = 6
    end
    object OD_PdocENTRY: TFloatField
      FieldName = 'ENTRY'
      Origin = 'p.entry'
    end
    object OD_PdocKW: TStringField
      FieldName = 'KW'
      Origin = 'k.kw'
      Size = 64
    end
    object OD_PdocCOMM: TStringField
      FieldName = 'COMM'
      Origin = 't.comm'
      Size = 1024
    end
    object OD_PdocSUMMA_IN: TFloatField
      FieldName = 'SUMMA_IN'
    end
    object OD_PdocPENYA_IN: TFloatField
      FieldName = 'PENYA_IN'
    end
    object OD_PdocSUMMA_OUT: TFloatField
      FieldName = 'SUMMA_OUT'
    end
    object OD_PdocPENYA_OUT: TFloatField
      FieldName = 'PENYA_OUT'
    end
  end
  object DS_pdoc: TDataSource
    DataSet = OD_Pdoc
    Left = 72
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 152
    object Eolink1: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1083#1080#1094#1077#1074#1086#1081' '#1089#1095#1077#1090
      OnClick = Eolink1Click
    end
    object Eolink2: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1080#1077#1088#1072#1088#1093#1080#1102' '#1086#1073#1098#1077#1082#1090#1086#1074' '#1090#1080#1087#1072' "'#1044#1086#1084'"'
      OnClick = Eolink2Click
    end
    object Eolink3: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1080#1077#1088#1072#1088#1093#1080#1102' '#1086#1073#1098#1077#1082#1090#1086#1074' '#1090#1080#1087#1072' "'#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"'
      OnClick = Eolink3Click
    end
    object ask1: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1079#1072#1076#1072#1085#1080#1103' Task '#1087#1086' '#1086#1073#1098#1077#1082#1090#1091' '#1090#1080#1087#1072' "'#1044#1086#1084'"'
      OnClick = ask1Click
    end
    object N1: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1080#1079#1074#1077#1097#1077#1085#1080#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '---'
    end
    object INS1: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1074' '#1043#1048#1057
      OnClick = INS1Click
    end
    object N3: TMenuItem
      Caption = '---'
    end
    object Excel1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = Excel1Click
    end
  end
end
