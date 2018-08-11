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
  ExtCtrls, cxGridExportLink;

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
    OD_taskxpar: TOracleDataSet;
    OD_taskxparID: TFloatField;
    OD_taskxparFK_PAR: TFloatField;
    OD_taskxparN1: TFloatField;
    OD_taskxparS1: TStringField;
    OD_taskxparD1: TDateTimeField;
    OD_taskxparVAL_TP: TStringField;
    DS_taskxpar: TDataSource;
    Splitter1: TSplitter;
    OD_taskxparFK_TASK: TFloatField;
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
  private
    { Private declarations }
  public
    procedure setFltById(id: Integer);
    procedure changeState(State: String);
  end;

var
  FrmTask: TFrmTask;
  loadRec: Integer;
  isLoadAllRec: Boolean;

implementation

uses ufEolink, DataModule, ufCrone, ufMain;

{$R *.dfm}

// фильтр по Id
procedure TFrmTask.setFltById(id: Integer);
begin
  // установить фильтр по одному Id (или не устанавливать, если 0)
  OD_Task.SetVariable('FLTID', id);
  OD_Task.Active:=false;
  OD_Task.Active:=true;
  if LowerCase(DataModule2.OracleLogon1.Session.LogonUsername)<>'scott' then
  begin
    OD_Task.ReadOnly:=true;
  end;
  OD_taskxpar.Active:=true;
    // счетчик записей
  loadRec:=0;
end;

procedure TFrmTask.OD_TaskAfterFetchRecord(Sender: TOracleDataSet;
  FilterAccept: Boolean; var Action: TAfterFetchRecordAction);
begin
  loadRec:=loadRec+1;
  if loadRec > 10000 then
  begin
    if (isLoadAllRec) or (Application.MessageBox('Загрузить еще?',
      'Вы загрузили свыше 10000 записей', MB_YESNO +
      MB_ICONQUESTION + MB_TOPMOST) = IDYES) then
    begin
     Action:=afContinue;
     loadRec:=0;
     isLoadAllRec:=True;
    end                                           
    else
    begin
     Action:=afStop;
     isLoadAllRec:=False;
    end;
  end;

end;

procedure TFrmTask.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmTask.ToolButton1Click(Sender: TObject);
begin
  OD_Task.QBEMode:=True;
end;

procedure TFrmTask.ToolButton2Click(Sender: TObject);
begin
  OD_Task.ExecuteQBE;
end;

procedure TFrmTask.ToolButton4Click(Sender: TObject);
begin
  // установить фильтр по id записей
  OD_Task.SetVariable('IDSUBST', '('+Edit1.Text+')');
  OD_Task.SetVariable('FLT', 1);
  OD_Task.Active:=false;
  OD_Task.Active:=true;
end;

procedure TFrmTask.ToolButton5Click(Sender: TObject);
begin
  // снять фильтр по id записей
  OD_Task.SetVariable('FLT', 0);
  OD_Task.Active:=false;
  OD_Task.Active:=true;

end;

procedure TFrmTask.Eolink1Click(Sender: TObject);
begin
  // найти объект Eolink
  Application.CreateForm(TFrmEolink, FrmEolink);
  FrmEolink.setFltById(OD_Task.FieldByName('FK_EOLINK').asInteger, 0);
end;

procedure TFrmTask.OD_taskxparAfterScroll(DataSet: TDataSet);
begin
  if (OD_taskxpar.FieldByName('VAL_TP').AsString='NM')
      or (OD_taskxpar.FieldByName('VAL_TP').AsString='BL') then
  begin
      OD_taskxpar.FieldByName('N1').ReadOnly:=False;
      OD_taskxpar.FieldByName('S1').ReadOnly:=True;
      OD_taskxpar.FieldByName('D1').ReadOnly:=True;
      Crone1.Enabled:=false;
  end
  else if OD_taskxpar.FieldByName('VAL_TP').AsString='ST' then
  begin
      OD_taskxpar.FieldByName('N1').ReadOnly:=True;
      OD_taskxpar.FieldByName('S1').ReadOnly:=False;
      OD_taskxpar.FieldByName('D1').ReadOnly:=True;
      Crone1.Enabled:=true;
  end
  else if OD_taskxpar.FieldByName('VAL_TP').AsString='DT' then
  begin
      OD_taskxpar.FieldByName('N1').ReadOnly:=True;
      OD_taskxpar.FieldByName('S1').ReadOnly:=True;
      OD_taskxpar.FieldByName('D1').ReadOnly:=False;
      Crone1.Enabled:=false;
  end

end;

procedure TFrmTask.OD_taskxparAfterInsert(DataSet: TDataSet);
begin
  OD_taskxpar.FieldByName('FK_TASK').AsInteger:=
    OD_task.FieldByName('ID').AsInteger;
end;

procedure TFrmTask.Crone1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCrone, FrmCrone);
end;

procedure TFrmTask.changeState(State: String);
begin
  if OD_Task.State <> dsEdit then
  OD_Task.Edit;
  OD_Task.FieldByName('STATE').AsString:=State;
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
  // найти иерархию объектов Eolink
  Application.CreateForm(TFrmEolink, FrmEolink);
  FrmEolink.setFltById(OD_Task.FieldByName('FK_EOLINK').asInteger, 2);

end;

procedure TFrmTask.Eolink3Click(Sender: TObject);
begin
  // найти корневую запись
  FrmMain.findRoot(OD_Task.FieldByName('fk_eolink').asInteger,
                      'Организация');

end;

procedure TFrmTask.Eolink2Click(Sender: TObject);
begin
  // найти корневую запись
  FrmMain.findRoot(OD_Task.FieldByName('fk_eolink').asInteger,
                      'Дом');

end;

procedure TFrmTask.FormCreate(Sender: TObject);
begin
  // запрет выгрузки всех записей
  isLoadAllRec:=False;
end;

procedure TFrmTask.OD_TaskAfterQuery(Sender: TOracleDataSet);
begin
  // запрет выгрузки всех записей
  isLoadAllRec:=False;
end;

procedure TFrmTask.Excel1Click(Sender: TObject);
begin
  FrmMain.expToExcel('Задания', cxGrid1);
end;

end.
