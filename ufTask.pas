unit ufTask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, OracleData,
  ComCtrls, ToolWin, StdCtrls, Menus, cxDBLookupComboBox, cxCalendar,
  ExtCtrls, cxGridExportLink, dxDateRanges;

type
  TFrmTask = class(TForm)
    OD_Task: TOracleDataSet;
    DS_task: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    OD_TaskID: TFloatField;
    OD_TaskPARENT_ID: TFloatField;
    OD_TaskDEP_ID: TFloatField;
    OD_TaskFK_EOLINK: TFloatField;
    OD_TaskSTATE: TStringField;
    OD_TaskUNIQNUM: TStringField;
    OD_TaskCD: TStringField;
    OD_TaskERRACKCNT: TFloatField;
    OD_TaskPRIORITY: TFloatField;
    OD_TaskTRACE: TFloatField;
    OD_TaskFK_ACT: TFloatField;
    OD_TaskACT_NAME: TStringField;
    OD_TaskRESULT: TStringField;
    OD_TaskGUID: TStringField;
    OD_TaskTGUID: TStringField;
    OD_TaskFK_USER: TFloatField;
    OD_TaskDT_CRT: TDateTimeField;
    OD_TaskDT_UPD: TDateTimeField;
    OD_TaskCOMM: TStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1PARENT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1DEP_ID: TcxGridDBColumn;
    cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn;
    cxGrid1DBTableView1STATE: TcxGridDBColumn;
    cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1ERRACKCNT: TcxGridDBColumn;
    cxGrid1DBTableView1PRIORITY: TcxGridDBColumn;
    cxGrid1DBTableView1TRACE: TcxGridDBColumn;
    cxGrid1DBTableView1FK_ACT: TcxGridDBColumn;
    cxGrid1DBTableView1ACT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1RESULT: TcxGridDBColumn;
    cxGrid1DBTableView1GUID: TcxGridDBColumn;
    cxGrid1DBTableView1TGUID: TcxGridDBColumn;
    cxGrid1DBTableView1FK_USER: TcxGridDBColumn;
    cxGrid1DBTableView1DT_CRT: TcxGridDBColumn;
    cxGrid1DBTableView1DT_UPD: TcxGridDBColumn;
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
    OD_TaskEOLTP_NAME: TStringField;
    cxGrid1DBTableView1EOLTPNAME: TcxGridDBColumn;
    PopupMenu2: TPopupMenu;
    Crone1: TMenuItem;
    INS1: TMenuItem;
    STP1: TMenuItem;
    ACK1: TMenuItem;
    RPT1: TMenuItem;
    N1: TMenuItem;
    Eolink2: TMenuItem;
    Eolink3: TMenuItem;
    N2: TMenuItem;
    OD_TaskOBJ_ADR: TStringField;
    cxGrid1DBTableView1OBJ_ADR: TcxGridDBColumn;
    N3: TMenuItem;
    Excel1: TMenuItem;
    OD_TaskFK_PROC_UK: TFloatField;
    cxGrid1DBTableView1FK_PROC_UK: TcxGridDBColumn;
    OD_TaskDT_NEXTSTART: TDateTimeField;
    cxGrid1DBTableView1DT_NEXTSTART: TcxGridDBColumn;
    OD_TaskLAG_NEXTSTART: TFloatField;
    cxGrid1DBTableView1LAG_NEXTSTART: TcxGridDBColumn;
    OD_TaskNAME_REU: TStringField;
    cxGrid1DBTableView1NAME_REU: TcxGridDBColumn;
    OD_TaskID_FROM: TFloatField;
    OD_TaskID_TO: TFloatField;
    cxGrid1DBTableView1ID_FROM: TcxGridDBColumn;
    cxGrid1DBTableView1ID_TO: TcxGridDBColumn;
    OD_TaskFK_EOLINK_LAST: TFloatField;
    cxGrid1DBTableView1FK_EOLINK_LAST: TcxGridDBColumn;
    OD_TaskEXISTS_TASKXTASK: TStringField;
    cxGrid1DBTableView1EXISTS_TASKXTASK: TcxGridDBColumn;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure Eolink1Click(Sender: TObject);
    procedure OD_taskxparAfterScroll(DataSet: TDataSet);
    procedure OD_taskxparAfterInsert(DataSet: TDataSet);
    procedure Crone1Click(Sender: TObject);
    procedure INS1Click(Sender: TObject);
    procedure STP1Click(Sender: TObject);
    procedure ACK1Click(Sender: TObject);
    procedure RPT1Click(Sender: TObject);
    procedure OD_TaskAfterFetchRecord(Sender: TOracleDataSet;
      FilterAccept: Boolean; var Action: TAfterFetchRecordAction);
    procedure N1Click(Sender: TObject);
    procedure Eolink3Click(Sender: TObject);
    procedure Eolink2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OD_TaskAfterQuery(Sender: TOracleDataSet);
    procedure Excel1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ToolButton7Click(Sender: TObject);
    procedure toggleColumnsVisible();
  private
    { Private declarations }
  public
    procedure setFltById(id: Integer);
    procedure changeState(State: string);
  end;

var
  FrmTask: TFrmTask;
  loadRec: Integer;
  isLoadAllRec: Boolean;
  isColumnsVisible: Boolean = true;

implementation

uses ufEolink, DataModule, ufCrone, ufMain;

{$R *.dfm}

// ������ �� Id

procedure TFrmTask.setFltById(id: Integer);
begin
  // ���������� ������ �� ������ Id (��� �� �������������, ���� 0)
  OD_Task.SetVariable('FLTID', id);
  OD_Task.Active := false;
  OD_Task.Active := true;
  {  if LowerCase(DataModule2.OracleLogon1.Session.LogonUsername)<>'scott' then
    begin
      OD_Task.ReadOnly:=true;
    end;}
//  OD_taskxpar.Active := true;
  // ������� �������
  loadRec := 0;
end;

procedure TFrmTask.OD_TaskAfterFetchRecord(Sender: TOracleDataSet;
  FilterAccept: Boolean; var Action: TAfterFetchRecordAction);
begin
  loadRec := loadRec + 1;
  if loadRec > 10000 then
  begin
    if (isLoadAllRec) or (Application.MessageBox('��������� ���?',
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

procedure TFrmTask.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTask.ToolButton1Click(Sender: TObject);
begin
  OD_Task.QBEMode := True;
end;

procedure TFrmTask.ToolButton2Click(Sender: TObject);
begin
  OD_Task.ExecuteQBE;
end;

procedure TFrmTask.ToolButton4Click(Sender: TObject);
begin
  // ���������� ������ �� id �������
  OD_Task.SetVariable('IDSUBST', '(' + Edit1.Text + ')');
  OD_Task.SetVariable('FLT', 1);
  OD_Task.Active := false;
  OD_Task.Active := true;
end;

procedure TFrmTask.ToolButton5Click(Sender: TObject);
begin
  // ����� ������ �� id �������
  OD_Task.SetVariable('FLT', 0);
  OD_Task.Active := false;
  OD_Task.Active := true;

end;

procedure TFrmTask.Eolink1Click(Sender: TObject);
begin
  // ����� ������ Eolink
  Application.CreateForm(TFrmEolink, FrmEolink);
  FrmEolink.setFltById(OD_Task.FieldByName('FK_EOLINK').asInteger, 0);
end;

procedure TFrmTask.OD_taskxparAfterScroll(DataSet: TDataSet);
begin
{  if (OD_taskxpar.FieldByName('VAL_TP').AsString = 'NM')
    or (OD_taskxpar.FieldByName('VAL_TP').AsString = 'BL') then
  begin
    OD_taskxpar.FieldByName('N1').ReadOnly := False;
    OD_taskxpar.FieldByName('S1').ReadOnly := True;
    OD_taskxpar.FieldByName('D1').ReadOnly := True;
    Crone1.Enabled := false;
  end
  else if OD_taskxpar.FieldByName('VAL_TP').AsString = 'ST' then
  begin
    OD_taskxpar.FieldByName('N1').ReadOnly := True;
    OD_taskxpar.FieldByName('S1').ReadOnly := False;
    OD_taskxpar.FieldByName('D1').ReadOnly := True;
    Crone1.Enabled := true;
  end
  else if OD_taskxpar.FieldByName('VAL_TP').AsString = 'DT' then
  begin
    OD_taskxpar.FieldByName('N1').ReadOnly := True;
    OD_taskxpar.FieldByName('S1').ReadOnly := True;
    OD_taskxpar.FieldByName('D1').ReadOnly := False;
    Crone1.Enabled := false;
  end
 }
end;

procedure TFrmTask.OD_taskxparAfterInsert(DataSet: TDataSet);
begin
//  OD_taskxpar.FieldByName('FK_TASK').AsInteger :=
//    OD_task.FieldByName('ID').AsInteger;
end;

procedure TFrmTask.Crone1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCrone, FrmCrone);
end;

procedure TFrmTask.changeState(State: string);
begin
  if OD_Task.State <> dsEdit then
    OD_Task.Edit;
  OD_Task.FieldByName('STATE').AsString := State;
  OD_Task.Post;
end;

procedure TFrmTask.INS1Click(Sender: TObject);
begin
  changeState('INS');
end;

procedure TFrmTask.STP1Click(Sender: TObject);
begin
  changeState('STP');
end;

procedure TFrmTask.ACK1Click(Sender: TObject);
begin
  changeState('ACK');
end;

procedure TFrmTask.RPT1Click(Sender: TObject);
begin
  changeState('RPT');
end;

procedure TFrmTask.N1Click(Sender: TObject);
begin
  // ����� �������� �������� Eolink
  Application.CreateForm(TFrmEolink, FrmEolink);
  FrmEolink.setFltById(OD_Task.FieldByName('FK_EOLINK').asInteger, 2);

end;

procedure TFrmTask.Eolink3Click(Sender: TObject);
begin
  // ����� �������� ������
  FrmMain.findRoot(OD_Task.FieldByName('fk_eolink').asInteger,
    '�����������', true, '');

end;

procedure TFrmTask.Eolink2Click(Sender: TObject);
begin
  // ����� �������� ������
  FrmMain.findRoot(OD_Task.FieldByName('fk_eolink').asInteger,
    '���', true, '');

end;

procedure TFrmTask.FormCreate(Sender: TObject);
begin
  // ������ �������� ���� �������
  isLoadAllRec := False;
  isColumnsVisible := True;
  toggleColumnsVisible();
end;

procedure TFrmTask.OD_TaskAfterQuery(Sender: TOracleDataSet);
begin
  // ������ �������� ���� �������
  isLoadAllRec := False;
end;

procedure TFrmTask.Excel1Click(Sender: TObject);
begin
  FrmMain.expToExcel('�������', cxGrid1);
end;

procedure TFrmTask.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col: TcxGridDBColumn;
  s: string;
begin
  // ���� ������
  col := cxGrid1DBTableView1.GetColumnByFieldName('STATE');
  s := AViewInfo.GridRecord.DisplayTexts[col.Index];
  if (s = 'ERR') or (s = 'ERS') then
  begin
    // ������
    ACanvas.Font.Color := clRed;
  end
  else if (s = 'INS') then
  begin
    // ��������� � ��������
    ACanvas.Font.Color := clBlue;
  end
  else if (s = 'ACK') then
  begin
    // �������� ������
    ACanvas.Font.Color := clGreen;
  end
  else
  begin

  end;
end;

procedure TFrmTask.ToolButton7Click(Sender: TObject);
begin
  toggleColumnsVisible();
end;

procedure TFrmTask.toggleColumnsVisible();
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

  col := cxGrid1DBTableView1.GetColumnByFieldName('UNIQNUM');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('ERRACKCNT');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('GUID');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('TGUID');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('FK_USER');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('EOLTP_NAME');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('OBJ_ADR');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('DT_NEXTSTART');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('LAG_NEXTSTART');
  //col.Visible := isColumnsVisible;
  //col := cxGrid1DBTableView1.GetColumnByFieldName('NAME_REU');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('ID_FROM');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('ID_TO');
  col.Visible := isColumnsVisible;
  col := cxGrid1DBTableView1.GetColumnByFieldName('FK_EOLINK_LAST');
  col.Visible := isColumnsVisible;


end;

end.

