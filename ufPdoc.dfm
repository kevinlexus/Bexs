object FrmPdoc: TFrmPdoc
  Left = 944
  Top = 218
  Caption = #1055#1083#1072#1090#1077#1078#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' - Pdoc'
  ClientHeight = 551
  ClientWidth = 1182
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
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' Pdoc.Id'
      Caption = 'ToolButton4'
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton4Click
    end
    object ToolButton5: TToolButton
      Left = 280
      Top = 0
      Hint = #1057#1085#1103#1090#1100' '#1092#1080#1083#1100#1090#1088' '#1087#1086' Pdoc.Id'
      Caption = 'ToolButton5'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
    object cxLabel1: TcxLabel
      Left = 303
      Top = 2
      Caption = #1044#1072#1090#1072':'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxDateEdit1: TcxDateEdit
      Left = 341
      Top = 0
      Properties.DateButtons = [btnClear, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon]
      TabOrder = 2
      Width = 121
    end
    object CheckBox1: TCheckBox
      Left = 462
      Top = 0
      Width = 114
      Height = 22
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1072#1082#1090#1080#1074#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' (V=1)'
      Caption = #1040#1082#1090#1080#1074#1085#1099#1077' (V=1)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object ToolButton6: TToolButton
      Left = 576
      Top = 0
      Hint = #1053#1072#1081#1090#1080'!'
      Caption = 'ToolButton6'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton6Click
    end
  end
  object OD_Pdoc: TOracleDataSet
    SQL.Strings = (
      'select t.*, e.lsk, o.name as uk, s.name as street, '
      
        ' ltrim(coalesce(h.nd, k.nd),'#39'0'#39') as nd, -- '#1083#1080#1073#1086' '#1084#1082#1076' '#1076#1086#1084', '#1083#1080#1073#1086' '#1095#1072 +
        #1089#1090#1085#1099#1081' '#1076#1086#1084
      ' p.entry, ltrim(k.kw,'#39'0'#39') as kw, t.rowid'
      ' from EXS.PDOC t'
      ' join bs.addr_tp tp on tp.cd='#39#1051#1057#39
      ' join bs.addr_tp tp2 on tp2.cd='#39#1055#1086#1076#1098#1077#1079#1076#39
      ' join bs.addr_tp tp3 on tp3.cd='#39#1044#1086#1084#39
      
        ' join EXS.EOLINK e on t.fk_eolink=e.id and e.fk_objtp=tp.id -- '#1083 +
        #1080#1094'.'#1089#1095#1077#1090
      
        ' join EXS.EOLINK k on e.parent_id=k.id --and k.fk_objtp=tp4.id -' +
        '- '#1087#1086#1084#1077#1097#1077#1085#1080#1077' '#1080#1083#1080' '#1095#1072#1089#1090#1085#1099#1081' '#1076#1086#1084
      
        ' left join EXS.EOLINK p on k.parent_id=p.id and p.fk_objtp=tp2.i' +
        'd -- '#1087#1086#1076#1098#1077#1079#1076
      
        ' left join EXS.EOLINK h on p.parent_id=h.id and h.fk_objtp=tp3.i' +
        'd -- '#1076#1086#1084
      
        ' left join EXS.EOLINK h2 on k.parent_id=h2.id and h2.fk_objtp=tp' +
        '3.id -- '#1076#1086#1084', '#1077#1089#1083#1080' '#1082#1074#1072#1088#1090#1080#1088#1072' '#1085#1077' '#1074#1093#1086#1076#1080#1090' '#1074' '#1087#1086#1076#1098#1077#1079#1076
      
        ' left join EXS.EOLINK h3 on k.id=h3.id and h3.fk_objtp=tp3.id --' +
        ' '#1095#1072#1089#1090#1085#1099#1081' '#1076#1086#1084
      ' join scott.spul s on k.kul=s.id -- '#1091#1083#1080#1094#1072
      ' left join EXS.EOLINK uk on e.fk_uk=uk.id -- '#1059#1050
      ' join scott.t_org o on uk.reu=o.reu -- '#1059#1050
      'where 1=1'
      ':substExp1'
      ':substExp2'
      ':substExp3'
      ':substExp4'
      ':substExp5'
      ':substExp7'
      'order by t.id desc')
    Optimize = False
    Variables.Data = {
      0400000007000000140000003A00530055004200530054004500580050003100
      010000000000000000000000140000003A005300550042005300540045005800
      50003200010000000000000000000000140000003A0053005500420053005400
      4500580050003300010000000000000000000000140000003A00530055004200
      530054004500580050003400010000000000000000000000140000003A005300
      5500420053005400450058005000350001000000000000000000000014000000
      3A00530055004200530054004500580050003600010000000000000000000000
      140000003A005300550042005300540045005800500037000100000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      0500000018000000040000004900440001000000000008000000470055004900
      440001000000000004000000430044000100000000000E00000055004E004900
      51004E0055004D000100000000000C000000440054005F004300520054000100
      000000000C000000440054005F00550050004400010000000000120000004600
      4B005F0045004F004C0049004E004B000100000000000C000000520045005300
      55004C0054000100000000000A00000054004700550049004400010000000000
      0C00000053005400410054005500530001000000000002000000560001000000
      0000040000004400540001000000000006000000450052005200010000000000
      060000004C0053004B000100000000000400000055004B000100000000000C00
      0000530054005200450045005400010000000000040000004E00440001000000
      00000A00000045004E00540052005900010000000000040000004B0057000100
      000000000800000043004F004D004D0001000000000010000000530055004D00
      4D0041005F0049004E0001000000000010000000500045004E00590041005F00
      49004E0001000000000012000000530055004D004D0041005F004F0055005400
      01000000000012000000500045004E00590041005F004F005500540001000000
      0000}
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
