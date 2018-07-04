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
  ComCtrls, ToolWin, StdCtrls, Menus;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure Eolink1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure setFltById(id: Integer);
  end;

var
  FrmTask: TFrmTask;

implementation

uses ufEolink, DataModule;

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
  end
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
  FrmEolink.setFltById(OD_Task.FieldByName('FK_EOLINK').asInteger);
end;

end.
