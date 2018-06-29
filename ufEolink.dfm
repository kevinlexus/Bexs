object FrmEolink: TFrmEolink
  Left = 871
  Top = 494
  Width = 910
  Height = 521
  Caption = 'Eolink'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 894
    Height = 483
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.GridModeBufferCount = 100
      DataController.DataSource = DS_eolink
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGrid1DBTableView1REU: TcxGridDBColumn
        DataBinding.FieldName = 'REU'
      end
      object cxGrid1DBTableView1KUL: TcxGridDBColumn
        DataBinding.FieldName = 'KUL'
      end
      object cxGrid1DBTableView1ND: TcxGridDBColumn
        DataBinding.FieldName = 'ND'
      end
      object cxGrid1DBTableView1KW: TcxGridDBColumn
        DataBinding.FieldName = 'KW'
        Width = 49
      end
      object cxGrid1DBTableView1LSK: TcxGridDBColumn
        DataBinding.FieldName = 'LSK'
      end
      object cxGrid1DBTableView1ENTRY: TcxGridDBColumn
        DataBinding.FieldName = 'ENTRY'
      end
      object cxGrid1DBTableView1USL: TcxGridDBColumn
        DataBinding.FieldName = 'USL'
      end
      object cxGrid1DBTableView1ID_CNT: TcxGridDBColumn
        DataBinding.FieldName = 'ID_CNT'
      end
      object cxGrid1DBTableView1GUID: TcxGridDBColumn
        DataBinding.FieldName = 'GUID'
      end
      object cxGrid1DBTableView1CD: TcxGridDBColumn
        DataBinding.FieldName = 'CD'
      end
      object cxGrid1DBTableView1FK_OBJTP: TcxGridDBColumn
        DataBinding.FieldName = 'FK_OBJTP'
      end
      object cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQNUM'
      end
      object cxGrid1DBTableView1FK_OBJTPX: TcxGridDBColumn
        DataBinding.FieldName = 'FK_OBJTPX'
      end
      object cxGrid1DBTableView1APP_TP: TcxGridDBColumn
        DataBinding.FieldName = 'APP_TP'
      end
      object cxGrid1DBTableView1FK_KLSK_OBJ: TcxGridDBColumn
        DataBinding.FieldName = 'FK_KLSK_OBJ'
      end
      object cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PARENT_ID'
      end
      object cxGrid1DBTableView1OGRN: TcxGridDBColumn
        DataBinding.FieldName = 'OGRN'
      end
      object cxGrid1DBTableView1DT_CRT: TcxGridDBColumn
        DataBinding.FieldName = 'DT_CRT'
      end
      object cxGrid1DBTableView1FK_USER: TcxGridDBColumn
        DataBinding.FieldName = 'FK_USER'
      end
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
      end
      object cxGrid1DBTableView1ID_GRP: TcxGridDBColumn
        DataBinding.FieldName = 'ID_GRP'
      end
      object cxGrid1DBTableView1C_LSK_ID: TcxGridDBColumn
        DataBinding.FieldName = 'C_LSK_ID'
      end
      object cxGrid1DBTableView1COMM: TcxGridDBColumn
        DataBinding.FieldName = 'COMM'
      end
      object cxGrid1DBTableView1DT_UPD: TcxGridDBColumn
        DataBinding.FieldName = 'DT_UPD'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Button1: TButton
    Left = 552
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 432
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button2Click
  end
  object OD_Eolink: TOracleDataSet
    SQL.Strings = (
      'select t.* from exs.eolink t'
      '--where rownum<10000')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000019000000020000004944010000000000030000005245550100000000
      00030000004B554C010000000000020000004E44010000000000020000004B57
      010000000000030000004C534B01000000000005000000454E54525901000000
      00000300000055534C0100000000000600000049445F434E5401000000000004
      0000004755494401000000000002000000434401000000000008000000464B5F
      4F424A545001000000000007000000554E49514E554D01000000000009000000
      464B5F4F424A545058010000000000060000004150505F54500100000000000B
      000000464B5F4B4C534B5F4F424A01000000000009000000504152454E545F49
      44010000000000040000004F47524E0100000000000600000044545F43525401
      000000000007000000464B5F5553455201000000000006000000535441545553
      0100000000000600000049445F47525001000000000008000000435F4C534B5F
      494401000000000004000000434F4D4D0100000000000600000044545F555044
      010000000000}
    QueryAllRecords = False
    AfterFetchRecord = OD_EolinkAfterFetchRecord
    Session = DataModule2.OracleSession1
    Active = True
    Left = 32
    Top = 16
  end
  object DS_eolink: TDataSource
    DataSet = OD_Eolink
    Left = 88
    Top = 16
  end
end
