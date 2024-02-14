unit ufEolink;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, ComCtrls, ToolWin, Menus, ufTask, ufPdoc, Oracle, ExtCtrls,
  cxDBLookupComboBox, cxCalendar, cxButtonEdit, ActnList, XPStyleActnCtrls,
  ActnMan, dxDateRanges, System.Actions;

type
  TFrmEolink = class(TForm)
    OD_Eolink: TOracleDataSet;
    DS_eolink: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1FK_OBJTP: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1UK: TcxGridDBColumn;
    cxGrid1DBTableView1STREET: TcxGridDBColumn;
    cxGrid1DBTableView1ND: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRY: TcxGridDBColumn;
    cxGrid1DBTableView1KW: TcxGridDBColumn;
    cxGrid1DBTableView1GUID: TcxGridDBColumn;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn;
    cxGrid1DBTableView1FK_KLSK_PREMISE: TcxGridDBColumn;
    cxGrid1DBTableView1OGRN: TcxGridDBColumn;
    cxGrid1DBTableView1DT_CRT: TcxGridDBColumn;
    cxGrid1DBTableView1DT_UPD: TcxGridDBColumn;
    cxGrid1DBTableView1KUL: TcxGridDBColumn;
    OD_EolinkID: TFloatField;
    OD_EolinkPARENT_ID: TFloatField;
    OD_EolinkFK_OBJTP: TFloatField;
    OD_EolinkNAME: TStringField;
    OD_EolinkREU: TStringField;
    OD_EolinkUK: TStringField;
    OD_EolinkKUL: TStringField;
    OD_EolinkSTREET: TStringField;
    OD_EolinkND: TStringField;
    OD_EolinkENTRY: TFloatField;
    OD_EolinkKW: TStringField;
    OD_EolinkGUID: TStringField;
    OD_EolinkCD: TStringField;
    OD_EolinkUNIQNUM: TStringField;
    OD_EolinkAPP_TP: TFloatField;
    OD_EolinkFK_KLSK_OBJ: TFloatField;
    OD_EolinkOGRN: TStringField;
    OD_EolinkDT_CRT: TDateTimeField;
    OD_EolinkDT_UPD: TDateTimeField;
    OD_EolinkCOMM: TStringField;
    cxGrid1DBTableView1COMM: TcxGridDBColumn;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Edit1: TEdit;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    PopupMenu1: TPopupMenu;
    Eolink1: TMenuItem;
    N1: TMenuItem;
    OQ_add_house: TOracleQuery;
    OD_eolxpar: TOracleDataSet;
    DS_eolxpar: TDataSource;
    Splitter1: TSplitter;
    OD_eolxparID: TFloatField;
    OD_eolxparFK_EOLINK: TFloatField;
    OD_eolxparFK_PAR: TFloatField;
    OD_eolxparN1: TFloatField;
    OD_eolxparS1: TStringField;
    OD_eolxparD1: TDateTimeField;
    OD_eolxparVAL_TP: TStringField;
    OD_EolinkLSK: TStringField;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    N2: TMenuItem;
    Eolink2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    OD_EolinkOBJTPCD: TStringField;
    N5: TMenuItem;
    Excel1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    OD_EolinkSTATUS: TFloatField;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    N16: TMenuItem;
    OD_EolinkSERVICEID: TStringField;
    cxGrid1DBTableView1SERVICEID: TcxGridDBColumn;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1FK_PAR: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1N1: TcxGridDBColumn;
    cxGridDBTableView1S1: TcxGridDBColumn;
    cxGridDBTableView1D1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    OD_EolinkFK_UK: TFloatField;
    cxGrid1DBTableView1FK_UK: TcxGridDBColumn;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    OD_EolinkNAME_REU: TStringField;
    cxGrid1DBTableView1NAME_REU: TcxGridDBColumn;
    OD_EolinkTGUID: TStringField;
    cxGrid1DBTableView1TGUID: TcxGridDBColumn;
    N21: TMenuItem;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    N22: TMenuItem;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    OD_EolinkFK_HOUSE: TFloatField;
    cxGrid1DBTableView1FK_HOUSE: TcxGridDBColumn;
    OD_EolinkGUID_GIS: TStringField;
    cxGrid1DBTableView1GUID_GIS: TcxGridDBColumn;
    N23: TMenuItem;
    OD_EolinkHM_GUID: TStringField;
    cxGrid1DBTableView1HM_GUID: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_EolinkAfterFetchRecord(Sender: TOracleDataSet;
      FilterAccept: Boolean; var Action: TAfterFetchRecordAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure OD_EolinkAfterScroll(DataSet: TDataSet);
    procedure OD_eolxparAfterScroll(DataSet: TDataSet);
    procedure OD_eolxparAfterInsert(DataSet: TDataSet);
    procedure Eolink2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure OD_EolinkAfterQuery(Sender: TOracleDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N16Click(Sender: TObject);
    procedure cxGrid1DBTableView1COMMCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N17Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure toggleColumnsVisible();
    procedure ToolButton7Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure setFltById(id: Integer; tp: Integer);
  end;

var
  FrmEolink: TFrmEolink;
  loadRec: Integer;
  isLoadAllRec: Boolean;
  isColumnsVisible: Boolean = true;

implementation

uses DataModule, ufMain, u_frmSelReu;

{$R *.dfm}

procedure TFrmEolink.toggleColumnsVisible();
var
  col: TcxGridDBColumn;
begin

  if isColumnsVisible then
  begin
    isColumnsVisible := False;
  end
  else
  begin
    isColumnsVisible := True;
  end;

  col := cxGrid1DBTableView1.GetColumnByFieldName('CD');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('KUL');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('FK_UK');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('NAME_REU');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('GUID');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('GUID_GIS');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('HM_GUID');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('UNIQNUM');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('SERVICEID');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('FK_KLSK_OBJ');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('OGRN');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('ENTRY');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('DT_CRT');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('DT_UPD');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('TGUID');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('FK_HOUSE');
  col.Visible := isColumnsVisible;

end;

// ��������� ������� �������

procedure TFrmEolink.setFltById(id: Integer; tp: Integer);
begin
  if tp = 0 then
  begin
    // ������ �� ������ Id
    //OD_Eolink.SetVariable('TP', 0);
    OD_Eolink.SetVariable('substExp3', '');
    // ������ �� ������ Id
    //OD_Eolink.SetVariable('FLTID', id);
    //OD_Eolink.SetVariable('IDSUBST', '(0)');
    OD_Eolink.SetVariable('substExp4', '');
    // connect by - ������
    OD_Eolink.SetVariable('SUBSTEXP1', '');
    // where
    //OD_Eolink.SetVariable('SUBSTEXP1', 'where ('+IntToStr(:flt)+'=0 or t.id in '+IntToStr(:flt)+') and (:fltId=0 or t.id=:fltId)');
    // order by
    OD_Eolink.SetVariable('SUBSTEXP2',
      'order by t.id, t.parent_id, s.name, ltrim(t.nd,''0''), ltrim(t.kw,''0'')');
  end
  else if tp = 1 then
  begin
    // ������ �� ���������� Id
    //OD_Eolink.SetVariable('TP', 1);
    //OD_Eolink.SetVariable('IDSUBST', '(' + Edit1.Text + ')');
    OD_Eolink.SetVariable('substExp3', 'and t.id in (' + Edit1.Text + ')');
    // connect by - ������
    OD_Eolink.SetVariable('SUBSTEXP1', '');
    OD_Eolink.SetVariable('SUBSTEXP2',
      'order by t.id, t.parent_id, s.name, ltrim(t.nd,''0''), ltrim(t.kw,''0'')');
  end
  else if tp = 3 then
  begin
    // ����� ������ �� ���������� Id
    //OD_Eolink.SetVariable('TP', -1);
    //OD_Eolink.SetVariable('IDSUBST', '(0)');
    OD_Eolink.SetVariable('substExp3', '');
    OD_Eolink.SetVariable('substExp4', '');
    // connect by - ������
    OD_Eolink.SetVariable('SUBSTEXP1', '');
    OD_Eolink.SetVariable('SUBSTEXP2',
      'order by t.id, t.parent_id, s.name, ltrim(t.nd,''0''), ltrim(t.kw,''0'')');
  end
  else
  begin
    // ������ ������, ������� � Id
    //OD_Eolink.SetVariable('TP', 2);
    OD_Eolink.SetVariable('substExp3', '');
    OD_Eolink.SetVariable('substExp4', '');

    //OD_Eolink.SetVariable('IDSUBST', '(0)');
    OD_Eolink.SetVariable('SUBSTEXP1', 'start with t.id=' + IntToStr(id) +
      ' connect by prior t.id=t.parent_id');
    // order by - ������
    OD_Eolink.SetVariable('SUBSTEXP2', '');
  end;

{  if tp = 3 then
  begin
    OD_Eolink.Active := false;
    // QBE ������ - ������� ������ �� ���� "�����������", ����� ���. �������� ����� ������ � � ������� ��������� �� ��� �� (� �����) ���.13.05.20
    OD_Eolink.Active := True;
    OD_Eolink.QBEMode := True;
    OD_Eolink.QBEDefinition.FieldByName('FK_OBJTP').Value := '1';
    OD_Eolink.ExecuteQBE;
  end
  else
  begin
    OD_Eolink.Active := True;
  end;}
  OD_Eolink.Active := False;
  OD_Eolink.Active := True;

  // ����� �������
{  if LowerCase(DataModule2.OracleLogon1.Session.LogonUsername) <> 'scott' then
  begin
    OD_Eolink.ReadOnly := true;
  end;}
  OD_eolxpar.Active := False;
  OD_eolxpar.Active := true;
  // ������� �������
  loadRec := 0;
end;

procedure TFrmEolink.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEolink.OD_EolinkAfterFetchRecord(Sender: TOracleDataSet;
  FilterAccept: Boolean; var Action: TAfterFetchRecordAction);
begin
  loadRec := loadRec + 1;
  if loadRec > 10000 then
  begin
    if (isLoadAllRec) or (Application.MessageBox('��������� ��� ������?',
      '�� ��������� ����� 10000 �������', MB_YESNO +
      MB_ICONQUESTION + MB_TOPMOST) = IDYES) then
    begin
      Action := afContinue;
      loadRec := 0;
      isLoadAllRec := True;
    end
    else
    begin
      Action := afStop;
      isLoadAllRec := False;
    end;
  end;

end;

procedure TFrmEolink.ToolButton1Click(Sender: TObject);
begin
  OD_Eolink.QBEMode := True;
end;

procedure TFrmEolink.ToolButton2Click(Sender: TObject);
begin
  OD_Eolink.ExecuteQBE;
end;

procedure TFrmEolink.ToolButton4Click(Sender: TObject);
begin
  // ���������� ������ �� ������ id �������
  setFltById(0, 1);
end;

procedure TFrmEolink.ToolButton5Click(Sender: TObject);
begin
  // ����� ������ �� id �������
  setFltById(0, 3);
end;

procedure TFrmEolink.N1Click(Sender: TObject);
begin
  if
    Application.MessageBox('� ������ ����������� ����� ��������� ����������� ���� �� ����������� ������ � ��� ���',
    '��������!', MB_OKCANCEL + MB_ICONWARNING) = IDOK then
  begin
    // �������� � ����������� ����������� ���� � guid
    // �� ����������� ��� ������ � ���
    OQ_add_house.SetVariable('REU', OD_Eolink.FieldByName('REU').AsString);
    OQ_add_house.SetVariable('FK_EOLINK',
      OD_Eolink.FieldByName('ID').AsInteger);
    OQ_add_house.Execute;
    OD_Eolink.Active := false;
    OD_Eolink.Active := true;
  end;
end;

procedure TFrmEolink.PopupMenu1Popup(Sender: TObject);
begin
  // �������� ���������� �����, ���� �� �����������
  if OD_Eolink.FieldByName('FK_OBJTP').AsInteger <> 1 then
    N1.Enabled := false
  else
    N1.Enabled := True;

end;

procedure TFrmEolink.OD_EolinkAfterScroll(DataSet: TDataSet);
begin
  // ���
  if (OD_Eolink.FieldByName('OBJTPCD').AsString = '�����������') and
    (OD_Eolink.FieldByName('PARENT_ID').AsInteger = 0) then
  begin
    N19.Enabled := true;
    N20.Enabled := true;
  end
  else
  begin
    N19.Enabled := false;
    N20.Enabled := false;
  end;

  // ��
  if (OD_Eolink.FieldByName('OBJTPCD').AsString = '�����������') and
    (OD_Eolink.FieldByName('PARENT_ID').AsInteger <> 0) then
  begin
    N1.Enabled := true;
    N10.Enabled := true;
    N11.Enabled := true;
    N13.Enabled := true;
    N15.Enabled := true;
    N17.Enabled := true;
  end
  else
  begin
    N1.Enabled := false;
    N10.Enabled := false;
    N11.Enabled := false;
    N13.Enabled := false;
    N15.Enabled := false;
    N17.Enabled := false;
  end;

  // �������� ��� �� �� ���� ���������� �������
  N21.Enabled := false;
  // �������� �� �� ���.�����
  N4.Enabled := false;

  // ���
  if OD_Eolink.FieldByName('OBJTPCD').AsString = '���' then
  begin
    N21.Enabled := true;
    N6.Enabled := true;
    N7.Enabled := true;
    N12.Enabled := true;
    N14.Enabled := true;
    N16.Enabled := true;
    N23.Enabled := true;
  end
  else
  begin
    N6.Enabled := False;
    N7.Enabled := False;
    N12.Enabled := false;
    N14.Enabled := false;
    N16.Enabled := false;
    N23.Enabled := false;
  end;

  // �������
  if OD_Eolink.FieldByName('OBJTPCD').AsString = '�������' then
  begin
    N21.Enabled := true;
  end
  else
  begin
  end;

  // ���������
  if OD_Eolink.FieldByName('OBJTPCD').AsString = '��������' then
  begin
    N21.Enabled := true;
  end
  else
  begin
  end;

  // ���.����
  if OD_Eolink.FieldByName('OBJTPCD').AsString = '��' then
  begin
    N21.Enabled := true;
    N4.Enabled := true
  end
  else
  begin
    N4.Enabled := false;
  end;

end;

procedure TFrmEolink.OD_eolxparAfterScroll(DataSet: TDataSet);
begin
  if (OD_eolxpar.FieldByName('VAL_TP').AsString = 'NM')
    or (OD_eolxpar.FieldByName('VAL_TP').AsString = 'BL') then
  begin
    OD_eolxpar.FieldByName('N1').ReadOnly := False;
    OD_eolxpar.FieldByName('S1').ReadOnly := True;
    OD_eolxpar.FieldByName('D1').ReadOnly := True;
  end
  else if OD_eolxpar.FieldByName('VAL_TP').AsString = 'ST' then
  begin
    OD_eolxpar.FieldByName('N1').ReadOnly := True;
    OD_eolxpar.FieldByName('S1').ReadOnly := False;
    OD_eolxpar.FieldByName('D1').ReadOnly := True;
  end
  else if OD_eolxpar.FieldByName('VAL_TP').AsString = 'DT' then
  begin
    OD_eolxpar.FieldByName('N1').ReadOnly := True;
    OD_eolxpar.FieldByName('S1').ReadOnly := True;
    OD_eolxpar.FieldByName('D1').ReadOnly := False;
  end

end;

procedure TFrmEolink.OD_eolxparAfterInsert(DataSet: TDataSet);
begin
  OD_eolxpar.FieldByName('FK_EOLINK').AsInteger :=
    OD_eolink.FieldByName('ID').AsInteger;
end;

procedure TFrmEolink.Eolink2Click(Sender: TObject);
begin
  // ����� �������� ������
  FrmMain.findRoot(OD_Eolink.FieldByName('id').asInteger,
    '�����������', true, '');
end;

procedure TFrmEolink.N4Click(Sender: TObject);
begin
  // ����� ��
  Application.CreateForm(TFrmPdoc, FrmPdoc);
  FrmPdoc.setFltById(OD_Eolink.FieldByName('ID').asInteger, 0, 0, 0);

end;

procedure TFrmEolink.OD_EolinkAfterQuery(Sender: TOracleDataSet);
begin
  // ������ �������� ���� �������
  isLoadAllRec := False;

end;

procedure TFrmEolink.FormCreate(Sender: TObject);
begin
  // ������ �������� ���� �������
  isLoadAllRec := False;
  toggleColumnsVisible();
end;

procedure TFrmEolink.Excel1Click(Sender: TObject);
begin
  FrmMain.expToExcel('�������', cxGrid1);
end;

procedure TFrmEolink.N6Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  // �� ��������! ���. 05.11.2019
  if Application.MessageBox('�������� ��� �������� �� �� ����?',
    '��������! ������� ��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) =
    IDYES then
  begin
    // �������� ��� �������� �� �� ����
    ret := DataModule2.OP_gis.CallIntegerFunction('withdraw_pd_by_house',
      [OD_Eolink.FieldByName('ID').AsInteger]);
    DataModule2.OracleSession1.Commit;
    chr := '���������� ��: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;
end;

procedure TFrmEolink.N7Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  // �� ��������! ���. 05.11.2019
  if Application.MessageBox('��������� ��� ����������� �� �� ����?',
    '��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    // ��������� ��� ����������� �� �� ����
    ret := DataModule2.OP_gis.CallIntegerFunction('insert_pd_by_house',
      [OD_Eolink.FieldByName('ID').AsInteger, null]);
    DataModule2.OracleSession1.Commit;
    chr := '���������� ��: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;

end;

procedure TFrmEolink.N10Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  if Application.MessageBox('�������� ��� �������� �� �� ��?',
    '��������! ������� ��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) =
    IDYES then
  begin
    // �������� ��� �������� �� �� �� (���)
    ret := DataModule2.OP_gis.CallIntegerFunction('withdraw_pd_by_uk',
      [OD_Eolink.FieldByName('ID').AsInteger]);
    DataModule2.OracleSession1.Commit;
    chr := '���������� ��: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;
end;

procedure TFrmEolink.N11Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  if Application.MessageBox('��������� ��� ����������� �� �� ��?',
    '��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    // ��������� ��� ����������� �� �� ��
    ret := DataModule2.OP_gis.CallIntegerFunction('insert_pd_by_uk',
      [OD_Eolink.FieldByName('ID').AsInteger]);
    DataModule2.OracleSession1.Commit;
    chr := '���������� ��: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;

end;

procedure TFrmEolink.N12Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  // �� ��������! ���. 05.11.2019
  if Application.MessageBox('������������ ������� �� �������� �� �� ����?',
    '��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    // ������������ ������� �� �������� �� �� ����
    ret := DataModule2.OP_gis.CallIntegerFunction('activate_task_by_house',
      [OD_Eolink.FieldByName('ID').AsInteger,
      'GIS_IMP_PAY_DOCS']);
    DataModule2.OracleSession1.Commit;
    chr := '���������� �������: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;

end;

procedure TFrmEolink.N13Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  if Application.MessageBox('������������ ������� �� �������� �� �� ��?',
    '��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    // ������������ ������� �� �������� �� �� ��
    ret := DataModule2.OP_gis.CallIntegerFunction('activate_task_by_uk',
      ['GIS_IMP_PAY_DOCS', OD_Eolink.FieldByName('ID').AsInteger]);
    DataModule2.OracleSession1.Commit;
    chr := '���������� �������: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;

end;

procedure TFrmEolink.N14Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  // �� ��������! ���. 05.11.2019
  if
    Application.MessageBox('������������ ������� �� �������� �� �� ���, �� ����?',
    '��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    // ������������ ������� �� �������� �� �� ��� �� ����
    ret := DataModule2.OP_gis.CallIntegerFunction('activate_task_by_house',
      [OD_Eolink.FieldByName('ID').AsInteger,
      'GIS_EXP_PAY_DOCS']);
    DataModule2.OracleSession1.Commit;
    chr := '���������� �������: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;

end;

procedure TFrmEolink.N15Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  if
    Application.MessageBox('������������ ������� �� �������� �� �� ���, �� ��?',
    '��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    // ������������ ������� �� �������� �� �� ��
    ret := DataModule2.OP_gis.CallIntegerFunction('activate_task_by_uk',
      [OD_Eolink.FieldByName('ID').AsInteger,
      'GIS_EXP_PAY_DOCS']);
    DataModule2.OracleSession1.Commit;
    chr := '���������� �������: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;

end;

procedure TFrmEolink.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col: TcxGridDBColumn;
  s: string;
begin
  // ���� ������
  col := cxGrid1DBTableView1.GetColumnByFieldName('STATUS');
  s := AViewInfo.GridRecord.DisplayTexts[col.Index];
  if s = '1' then
  begin
    // �������� ������
    //ACanvas.Brush.Color:= clRed;
    //ACanvas.Font.Color:= clBlack;
  end
  else
  begin
    // ���������� ������
     //ACanvas.Brush.Color:= $00E1E1E1;
    ACanvas.Font.Color := clGray;
  end;

  // �������� ������
  col := cxGrid1DBTableView1.GetColumnByFieldName('NAME');
  s := AViewInfo.GridRecord.DisplayTexts[col.Index];
  if s = '���' then
  begin
    // ���
    ACanvas.Font.Style := [fsBold];
  end

end;

procedure TFrmEolink.N16Click(Sender: TObject);
var
  res: Integer;
begin
  Application.CreateForm(TFrmSelReu, FrmSelReu);
  if FrmSelReu.ShowModal = mrOk then
  begin
    res := DataModule2.OP_gis.CallIntegerFunction('change_reu_by_house',
      [OD_Eolink.FieldByName('ID').AsInteger, FrmSelReu.reu]);
    if res <> 0 then
    begin
      Application.MessageBox('������ �������� ���� � ����� ��!', '��������!',
        MB_OK + MB_ICONERROR);
    end
    else
    begin
      DataModule2.OracleSession1.Commit;
      OD_Eolink.Refresh;
      Application.MessageBox('��� ������� ��������� � ����� ��!', '��������!',
        MB_OK + MB_ICONINFORMATION);
    end;

  end;

end;

procedure TFrmEolink.cxGrid1DBTableView1COMMCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Font.Color := clRed;
end;

procedure TFrmEolink.N17Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  if Application.MessageBox('��������� ��� ����������� �� �� ���?',
    '��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    // ��������� ��� ����������� �� �� ���
    ret := DataModule2.OP_gis.CallIntegerFunction('insert_pd_by_rso',
      [OD_Eolink.FieldByName('ID').AsInteger]);
    DataModule2.OracleSession1.Commit;
    chr := '���������� ��: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;
end;

procedure TFrmEolink.N19Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  if Application.MessageBox('������������ ������� �� �������� ��, �� ���?',
    '��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    // ������������ ������� �� �������� �� �� ��
    ret := DataModule2.OP_gis.CallIntegerFunction('activate_task_by_rkc',
      [OD_Eolink.FieldByName('ID').AsInteger,
      'GIS_IMP_PAY_DOCS']);
    DataModule2.OracleSession1.Commit;
    chr := '���������� �������: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;
end;

procedure TFrmEolink.N20Click(Sender: TObject);
var
  ret: Integer;
  chr: string;
begin
  if
    Application.MessageBox('������������ ������� �� �������� �� �� ���, �� ���?',
    '��������!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    // ������������ ������� �� �������� �� �� ���
    ret := DataModule2.OP_gis.CallIntegerFunction('activate_task_by_uk',
      [OD_Eolink.FieldByName('ID').AsInteger,
      'GIS_EXP_PAY_DOCS']);
    DataModule2.OracleSession1.Commit;
    chr := '���������� �������: ' + IntToStr(ret);
    Application.MessageBox(PChar(chr), '��������!', MB_OK +
      MB_ICONINFORMATION);
  end;
end;

procedure TFrmEolink.N21Click(Sender: TObject);
var
  foundId: Integer;
begin
  foundId := FrmMain.findRoot(OD_Eolink.FieldByName('ID').asInteger,
    '���', False, '');

  if foundId <> -1 then
  begin
    // ����� �� �� ����
    Application.CreateForm(TFrmPdoc, FrmPdoc);
    FrmPdoc.setFltById(0, 0, foundId, 1);
  end;

end;

procedure TFrmEolink.Action1Execute(Sender: TObject);
var
  foundId: Integer;
begin
  // ����� ������� Task �� ���� ������� �������
  foundId := FrmMain.findRoot(OD_Eolink.FieldByName('ID').asInteger,
    '���', False, '');
  Application.CreateForm(TFrmTask, FrmTask);
  FrmTask.setFltById(foundId);

end;

procedure TFrmEolink.Action2Execute(Sender: TObject);
begin
  // ����� �������� ������, ���� ��������� ���� lsk (��� ������� �� ���.�����),
  // �� ����� ���.����
  FrmMain.findRoot(OD_Eolink.FieldByName('ID').asInteger,
    '���', True, OD_Eolink.FieldByName('LSK').asString);
end;

procedure TFrmEolink.N22Click(Sender: TObject);
var
  id: Integer;
begin
  // ����� ������� Task �������
  id := OD_Eolink.FieldByName('ID').asInteger;
  Application.CreateForm(TFrmTask, FrmTask);
  FrmTask.setFltById(id);

end;

procedure TFrmEolink.N23Click(Sender: TObject);
var
  res: Integer;
begin
  Application.CreateForm(TFrmSelReu, FrmSelReu);
  if FrmSelReu.ShowModal = mrOk then
  begin
    res := DataModule2.OP_gis.CallIntegerFunction('change_reu_in_task_by_house',
      [OD_Eolink.FieldByName('ID').AsInteger, FrmSelReu.reu, 'GIS_EXP_METERS']);
    if res <> 0 then
    begin
      Application.MessageBox('������ �������� ������� �������� ��������� ���� � ����� ��(���)!', '��������!',
        MB_OK + MB_ICONERROR);
    end
    else
    begin
      DataModule2.OracleSession1.Commit;
      Application.MessageBox('������� �� �������� ���������, ������� ���������� � ����� ��(���)!', '��������!',
        MB_OK + MB_ICONINFORMATION);
    end;

  end;

end;

procedure TFrmEolink.ToolButton7Click(Sender: TObject);
begin
  toggleColumnsVisible();
end;

end.

