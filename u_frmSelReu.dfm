object FrmSelReu: TFrmSelReu
  Left = 1095
  Top = 169
  Caption = #1042#1099#1073#1086#1088' '#1059#1050
  ClientHeight = 75
  ClientWidth = 236
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 8
    Top = 8
    Properties.KeyFieldNames = 'REU'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_reu
    Properties.OnCloseUp = cxLookupComboBox1PropertiesCloseUp
    TabOrder = 0
    Width = 217
  end
  object Button1: TButton
    Left = 56
    Top = 40
    Width = 75
    Height = 25
    Caption = #1054#1082
    ModalResult = 1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 144
    Top = 40
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
  object OD_reu: TOracleDataSet
    SQL.Strings = (
      
        'select t.reu, t.reu||'#39' '#39'||t.name_reu as name from scott.s_reu_tr' +
        'est t '
      'order by t.reu')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0500000002000000080000004E0041004D004500010000000000060000005200
      45005500010000000000}
    Session = DataModule2.OracleSession1
    Active = True
  end
  object DS_reu: TDataSource
    DataSet = OD_reu
    Left = 40
  end
end
