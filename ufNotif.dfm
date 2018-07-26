object FrmNotif: TFrmNotif
  Left = 938
  Top = 541
  Width = 856
  Height = 442
  Caption = #1048#1079#1074#1077#1097#1077#1085#1080#1103' - Notif'
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
  object Memo1: TMemo
    Left = 0
    Top = 29
    Width = 840
    Height = 25
    Align = alTop
    Lines.Strings = (
      
        #1048#1079#1074#1077#1097#1077#1085#1080#1077': STATUS:'#1057#1090#1072#1090#1091#1089' '#1079#1072#1075#1088#1091#1079#1082#1080' '#1074' '#1043#1048#1057' (0-'#1076#1086#1073#1072#1074#1083#1077#1085' '#1085#1072' '#1079#1072#1075#1088#1091#1079#1082#1091',' +
        ' 1-'#1079#1072#1075#1088#1091#1078#1077#1085', 2-'#1086#1090#1084#1077#1085#1105#1085'), V: '#1057#1090#1072#1090#1091#1089' (1-'#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1081', 0-'#1086#1090#1084#1077#1085#1105#1085'), E' +
        'RR-0-'#1085#1077#1090' '#1086#1096#1080#1073#1082#1080', 1-'#1077#1089#1090#1100)
    TabOrder = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 840
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 54
    Width = 840
    Height = 349
    Align = alClient
    PopupMenu = FrmEolink.PopupMenu1
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_Notif
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
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
        Width = 55
      end
      object cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQNUM'
        Width = 51
      end
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        DataBinding.FieldName = 'LSK'
        Width = 47
      end
      object cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn
        DataBinding.FieldName = 'FK_EOLINK'
        Width = 43
      end
      object cxGrid1DBTableView1FK_PDOC: TcxGridDBColumn
        DataBinding.FieldName = 'FK_PDOC'
      end
      object cxGrid1DBTableView1FK_KWTP_MG: TcxGridDBColumn
        DataBinding.FieldName = 'FK_KWTP_MG'
      end
      object cxGrid1DBTableView1SUMMA: TcxGridDBColumn
        DataBinding.FieldName = 'SUMMA'
      end
      object cxGrid1DBTableView1GUID: TcxGridDBColumn
        DataBinding.FieldName = 'GUID'
        Width = 26
      end
      object cxGrid1DBTableView1TGUID: TcxGridDBColumn
        DataBinding.FieldName = 'TGUID'
        Width = 45
      end
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Width = 43
      end
      object cxGrid1DBTableView1V: TcxGridDBColumn
        DataBinding.FieldName = 'V'
        Width = 42
      end
      object cxGrid1DBTableView1DT: TcxGridDBColumn
        DataBinding.FieldName = 'DT'
        Width = 44
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        DataBinding.FieldName = 'DT_CRT'
        Width = 61
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        DataBinding.FieldName = 'DT_UPD'
        Width = 63
      end
      object cxGrid1DBTableView1ERR: TcxGridDBColumn
        DataBinding.FieldName = 'ERR'
        Width = 41
      end
      object cxGrid1DBTableView1RESULT: TcxGridDBColumn
        DataBinding.FieldName = 'RESULT'
        Width = 257
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object OD_Notif: TOracleDataSet
    SQL.Strings = (
      'select t.*, e.lsk, t.rowid'
      ' from EXS.Notif t'
      ' left join EXS.Pdoc p on t.fk_pdoc=p.id'
      ' left join EXS.EOLINK e on p.fk_eolink=e.id'
      
        'where (:flt=0 or t.id in :idSubst) and (:fltId=0 or p.fk_eolink=' +
        ':fltId)'
      'and (:fltId2=0 or t.fk_pdoc=:fltId2)'
      'order by t.id desc')
    Optimize = False
    Variables.Data = {
      0300000004000000040000003A464C5403000000040000000000000000000000
      080000003A49445355425354010000000600000028302C312900000000000600
      00003A464C54494403000000040000000000000000000000070000003A464C54
      49443203000000040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000010000000020000004944010000000000040000004755494401000000
      000007000000554E49514E554D0100000000000600000044545F435254010000
      0000000600000044545F55504401000000000006000000524553554C54010000
      0000000500000054475549440100000000000600000053544154555301000000
      0000010000005601000000000002000000445401000000000003000000455252
      010000000000030000004C534B01000000000007000000464B5F50444F430100
      000000000500000053554D4D4101000000000008000000464B5F4C5F50415901
      00000000000A000000464B5F4B5754505F4D47010000000000}
    QueryAllRecords = False
    RefreshOptions = [roBeforeEdit, roAfterInsert, roAfterUpdate, roAllFields]
    AfterFetchRecord = OD_NotifAfterFetchRecord
    Session = DataModule2.OracleSession1
    DesignActivation = True
    Left = 32
    Top = 152
    object OD_NotifID: TFloatField
      FieldName = 'ID'
    end
    object OD_NotifGUID: TStringField
      FieldName = 'GUID'
      Size = 36
    end
    object OD_NotifUNIQNUM: TStringField
      FieldName = 'UNIQNUM'
      Size = 255
    end
    object OD_NotifFK_PDOC: TFloatField
      FieldName = 'FK_PDOC'
      Required = True
    end
    object OD_NotifSUMMA: TFloatField
      FieldName = 'SUMMA'
      Required = True
    end
    object OD_NotifFK_L_PAY: TFloatField
      FieldName = 'FK_L_PAY'
    end
    object OD_NotifDT: TDateTimeField
      FieldName = 'DT'
      Required = True
    end
    object OD_NotifTGUID: TStringField
      FieldName = 'TGUID'
      Size = 36
    end
    object OD_NotifSTATUS: TFloatField
      FieldName = 'STATUS'
      Required = True
    end
    object OD_NotifV: TFloatField
      FieldName = 'V'
      Required = True
    end
    object OD_NotifERR: TFloatField
      FieldName = 'ERR'
    end
    object OD_NotifDT_CRT: TDateTimeField
      FieldName = 'DT_CRT'
    end
    object OD_NotifDT_UPD: TDateTimeField
      FieldName = 'DT_UPD'
    end
    object OD_NotifRESULT: TStringField
      FieldName = 'RESULT'
      Size = 1024
    end
    object OD_NotifFK_KWTP_MG: TFloatField
      FieldName = 'FK_KWTP_MG'
    end
    object OD_NotifLSK: TStringField
      FieldName = 'LSK'
      Size = 8
    end
  end
  object DS_Notif: TDataSource
    DataSet = OD_Notif
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
    object N1: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1087#1083#1072#1090#1077#1078#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '---'
    end
    object INS1: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1074' '#1043#1048#1057
      OnClick = INS1Click
    end
  end
end
