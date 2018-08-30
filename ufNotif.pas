unit ufNotif;

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
  StdCtrls, ComCtrls, ToolWin, Menus, ufPdoc;

type
  TFrmNotif = class(TForm)
    OD_Notif: TOracleDataSet;
    DS_Notif: TDataSource;
    Memo1: TMemo;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Edit1: TEdit;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    PopupMenu1: TPopupMenu;
    Eolink1: TMenuItem;
    Eolink2: TMenuItem;
    Eolink3: TMenuItem;
    N2: TMenuItem;
    INS1: TMenuItem;
    OD_NotifID: TFloatField;
    OD_NotifGUID: TStringField;
    OD_NotifUNIQNUM: TStringField;
    OD_NotifFK_PDOC: TFloatField;
    OD_NotifSUMMA: TFloatField;
    OD_NotifFK_L_PAY: TFloatField;
    OD_NotifDT: TDateTimeField;
    OD_NotifTGUID: TStringField;
    OD_NotifSTATUS: TFloatField;
    OD_NotifV: TFloatField;
    OD_NotifERR: TFloatField;
    OD_NotifDT_CRT: TDateTimeField;
    OD_NotifDT_UPD: TDateTimeField;
    OD_NotifRESULT: TStringField;
    OD_NotifFK_KWTP_MG: TFloatField;
    OD_NotifLSK: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn;
    cxGrid1DBTableView1GUID: TcxGridDBColumn;
    cxGrid1DBTableView1TGUID: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1V: TcxGridDBColumn;
    cxGrid1DBTableView1DT: TcxGridDBColumn;
    cxGrid1DBTableView1DT_CRT: TcxGridDBColumn;
    cxGrid1DBTableView1DT_UPD: TcxGridDBColumn;
    cxGrid1DBTableView1ERR: TcxGridDBColumn;
    cxGrid1DBTableView1RESULT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1FK_PDOC: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1FK_KWTP_MG: TcxGridDBColumn;
    N1: TMenuItem;
    N3: TMenuItem;
    Excel1: TMenuItem;
    procedure OD_NotifAfterFetchRecord(Sender: TOracleDataSet;
      FilterAccept: Boolean; var Action: TAfterFetchRecordAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure setFltById(id: Integer; id2: Integer);
    procedure Eolink1Click(Sender: TObject);
    procedure Eolink2Click(Sender: TObject);
    procedure Eolink3Click(Sender: TObject);
    procedure INS1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotif: TFrmNotif;
  loadRec: Integer;

implementation

uses DataModule, ufEolink, ufMain;

{$R *.dfm}

// фильтр по Id
procedure TFrmNotif.setFltById(id: Integer; id2: Integer);
begin
  // установить фильтр по одному Id (или не устанавливать, если 0)
  OD_Notif.SetVariable('FLTID', id);
  OD_Notif.SetVariable('FLTID2', id2);
  OD_Notif.Active:=false;
  OD_Notif.Active:=true;
  if LowerCase(DataModule2.OracleLogon1.Session.LogonUsername)<>'scott' then
  begin
    OD_Notif.ReadOnly:=true;
  end;
    // счетчик записей
  loadRec:=0;
end;

procedure TFrmNotif.OD_NotifAfterFetchRecord(Sender: TOracleDataSet;
  FilterAccept: Boolean; var Action: TAfterFetchRecordAction);
begin
  loadRec:=loadRec+1;
  if loadRec > 10000 then
  begin
    if Application.MessageBox('Загрузить еще?',
      'Вы загрузили свыше 10000 записей', MB_YESNO +
      MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
     Action:=afContinue;
     loadRec:=0;
    end
    else
    begin
     Action:=afStop;
    end;
  end;
end;

procedure TFrmNotif.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmNotif.ToolButton1Click(Sender: TObject);
begin
  OD_Notif.QBEMode:=True;

end;

procedure TFrmNotif.ToolButton2Click(Sender: TObject);
begin
  OD_Notif.ExecuteQBE;

end;

procedure TFrmNotif.ToolButton4Click(Sender: TObject);
begin
  // установить фильтр по id записей
  OD_Notif.SetVariable('IDSUBST', '('+Edit1.Text+')');
  OD_Notif.SetVariable('FLT', 1);
  OD_Notif.Active:=false;
  OD_Notif.Active:=true;

end;

procedure TFrmNotif.ToolButton5Click(Sender: TObject);
begin
  // снять фильтр по id записей
  OD_Notif.SetVariable('FLT', 0);
  OD_Notif.Active:=false;
  OD_Notif.Active:=true;

end;

procedure TFrmNotif.Eolink1Click(Sender: TObject);
begin
  // найти объект Eolink
  Application.CreateForm(TFrmEolink, FrmEolink);
  FrmEolink.setFltById(OD_Notif.FieldByName('FK_EOLINK').asInteger, 0);
end;

procedure TFrmNotif.Eolink2Click(Sender: TObject);
begin
  // найти корневую запись
  FrmMain.findRoot(OD_Notif.FieldByName('fk_eolink').asInteger,
                      'Дом', true);

end;

procedure TFrmNotif.Eolink3Click(Sender: TObject);
begin
  // найти корневую запись
  FrmMain.findRoot(OD_Notif.FieldByName('fk_eolink').asInteger,
                      'Организация', true);

end;

procedure TFrmNotif.INS1Click(Sender: TObject);
begin
  if OD_Notif.State <> dsEdit then
  OD_Notif.Edit;
  // действующий
  OD_Notif.FieldByName('V').AsInteger:=1;
  // статус - добавлен на загрузку
  OD_Notif.FieldByName('STATUS').AsInteger:=0;
  // убрать ошибку
  OD_Notif.FieldByName('ERR').AsInteger:=0;
  // почистить последний результат
  OD_Notif.FieldByName('RESULT').AsString:='';
  OD_Notif.Post;

end;

procedure TFrmNotif.N1Click(Sender: TObject);
begin
  // найти Извещение
  Application.CreateForm(TFrmPdoc, FrmPdoc);
  FrmPdoc.setFltById(0, OD_Notif.FieldByName('FK_PDOC').asInteger, 1);

end;

procedure TFrmNotif.Excel1Click(Sender: TObject);
begin
  FrmMain.expToExcel('Извещения', cxGrid1);
end;

end.
