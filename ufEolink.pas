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
  StdCtrls, ComCtrls, ToolWin, Menus, ufTask, Oracle, ExtCtrls,
  cxDBLookupComboBox, cxCalendar;

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
    cxGrid1DBTableView1APP_TP: TcxGridDBColumn;
    cxGrid1DBTableView1FK_KLSK_OBJ: TcxGridDBColumn;
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
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Splitter1: TSplitter;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1FK_PAR: TcxGridDBColumn;
    cxGridDBTableView1N1: TcxGridDBColumn;
    cxGridDBTableView1S1: TcxGridDBColumn;
    cxGridDBTableView1D1: TcxGridDBColumn;
    OD_eolxparID: TFloatField;
    OD_eolxparFK_EOLINK: TFloatField;
    OD_eolxparFK_PAR: TFloatField;
    OD_eolxparN1: TFloatField;
    OD_eolxparS1: TStringField;
    OD_eolxparD1: TDateTimeField;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    OD_eolxparVAL_TP: TStringField;
    OD_EolinkLSK: TStringField;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OD_EolinkAfterFetchRecord(Sender: TOracleDataSet;
      FilterAccept: Boolean; var Action: TAfterFetchRecordAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure Eolink1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure OD_EolinkAfterScroll(DataSet: TDataSet);
    procedure OD_eolxparAfterScroll(DataSet: TDataSet);
    procedure OD_eolxparAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure setFltById(id: Integer; tp: Integer);
  end;

var
  FrmEolink: TFrmEolink;
  loadRec: Integer;

implementation

uses DataModule;

{$R *.dfm}

// настроить главный датасет
procedure TFrmEolink.setFltById(id: Integer; tp: Integer);
begin
  if tp=0 then
  begin
    // фильтр по одному Id
    OD_Eolink.SetVariable('TP', 0);
    // фильтр по одному Id
    OD_Eolink.SetVariable('FLTID', id);
    OD_Eolink.SetVariable('IDSUBST', '(0)');
    // connect by - убрать
    OD_Eolink.SetVariable('SUBSTEXP1', '');
    // where
    //OD_Eolink.SetVariable('SUBSTEXP1', 'where ('+IntToStr(:flt)+'=0 or t.id in '+IntToStr(:flt)+') and (:fltId=0 or t.id=:fltId)');
    // order by
    OD_Eolink.SetVariable('SUBSTEXP2', 'order by t.id, t.parent_id, s.name, ltrim(t.nd,''0''), ltrim(t.kw,''0'')');
  end
  else if tp=1 then
  begin
    // фильтр по нескольким Id
    OD_Eolink.SetVariable('TP', 1);
    OD_Eolink.SetVariable('IDSUBST', '('+Edit1.Text+')');
    // connect by - убрать
    OD_Eolink.SetVariable('SUBSTEXP1', '');
    OD_Eolink.SetVariable('SUBSTEXP2', 'order by t.id, t.parent_id, s.name, ltrim(t.nd,''0''), ltrim(t.kw,''0'')');
  end
  else if tp=3 then
  begin
    // снять фильтр по нескольким Id
    OD_Eolink.SetVariable('TP', -1);
    OD_Eolink.SetVariable('IDSUBST', '(0)');
    // connect by - убрать
    OD_Eolink.SetVariable('SUBSTEXP1', '');
    OD_Eolink.SetVariable('SUBSTEXP2', 'order by t.id, t.parent_id, s.name, ltrim(t.nd,''0''), ltrim(t.kw,''0'')');
  end
  else
  begin
    // фильтр дерево, начиная с Id
    OD_Eolink.SetVariable('TP', 2);
    OD_Eolink.SetVariable('IDSUBST', '(0)');
    OD_Eolink.SetVariable('SUBSTEXP1', 'start with t.id='+IntToStr(id)+' connect by prior t.id=t.parent_id');
    // order by - убрать
    OD_Eolink.SetVariable('SUBSTEXP2', '');
  end;

  OD_Eolink.Active:=false;
  OD_Eolink.Active:=true;
  // права доступа
  if LowerCase(DataModule2.OracleLogon1.Session.LogonUsername)<>'scott' then
  begin
    OD_Eolink.ReadOnly:=true;
  end;
  OD_eolxpar.Active:=true;
  // счетчик записей
  loadRec:=0;
end;

procedure TFrmEolink.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmEolink.OD_EolinkAfterFetchRecord(Sender: TOracleDataSet;
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

procedure TFrmEolink.ToolButton1Click(Sender: TObject);
begin
  OD_Eolink.QBEMode:=True;
end;

procedure TFrmEolink.ToolButton2Click(Sender: TObject);
begin
  OD_Eolink.ExecuteQBE;
end;

procedure TFrmEolink.ToolButton4Click(Sender: TObject);
begin
  // установить фильтр по списку id записей
  setFltById(0, 1);
end;

procedure TFrmEolink.ToolButton5Click(Sender: TObject);
begin
  // снять фильтр по id записей
  setFltById(0, 3);
end;

procedure TFrmEolink.Eolink1Click(Sender: TObject);
begin
  // найти задания Task
  Application.CreateForm(TFrmTask, FrmTask);
  FrmTask.setFltById(OD_Eolink.FieldByName('ID').asInteger);
end;

procedure TFrmEolink.N1Click(Sender: TObject);
begin
  if Application.MessageBox('В данную организацию будут добавлены недостающие дома из справочника обмена с ГИС ЖКХ',
    'Внимание!', MB_OKCANCEL + MB_ICONWARNING) = IDOK then
  begin
    // добавить к организации недостающие дома с guid
    // из справочника для обмена с ГИС
    OQ_add_house.SetVariable('REU', OD_Eolink.FieldByName('REU').AsString);
    OQ_add_house.SetVariable('FK_EOLINK', OD_Eolink.FieldByName('ID').AsInteger);
    OQ_add_house.Execute;
    OD_Eolink.Active:=false;
    OD_Eolink.Active:=true;
  end;
end;

procedure TFrmEolink.PopupMenu1Popup(Sender: TObject);
begin
  // погасить добавление домов, если не организация
  if OD_Eolink.FieldByName('FK_OBJTP').AsInteger <> 1 then
      N1.Enabled:=false
  else
      N1.Enabled:=True;

end;

procedure TFrmEolink.OD_EolinkAfterScroll(DataSet: TDataSet);
begin
  if OD_Eolink.FieldByName('FK_OBJTP').AsInteger=1 then
     N1.Enabled:=true
  else
     N1.Enabled:=false;


end;

procedure TFrmEolink.OD_eolxparAfterScroll(DataSet: TDataSet);
begin
  if (OD_eolxpar.FieldByName('VAL_TP').AsString='NM')
      or (OD_eolxpar.FieldByName('VAL_TP').AsString='BL') then
  begin
      OD_eolxpar.FieldByName('N1').ReadOnly:=False;
      OD_eolxpar.FieldByName('S1').ReadOnly:=True;
      OD_eolxpar.FieldByName('D1').ReadOnly:=True;
  end
  else if OD_eolxpar.FieldByName('VAL_TP').AsString='ST' then
  begin
      OD_eolxpar.FieldByName('N1').ReadOnly:=True;
      OD_eolxpar.FieldByName('S1').ReadOnly:=False;
      OD_eolxpar.FieldByName('D1').ReadOnly:=True;
  end
  else if OD_eolxpar.FieldByName('VAL_TP').AsString='DT' then
  begin
      OD_eolxpar.FieldByName('N1').ReadOnly:=True;
      OD_eolxpar.FieldByName('S1').ReadOnly:=True;
      OD_eolxpar.FieldByName('D1').ReadOnly:=False;
  end

end;

procedure TFrmEolink.OD_eolxparAfterInsert(DataSet: TDataSet);
begin
  OD_eolxpar.FieldByName('FK_EOLINK').AsInteger:=
    OD_eolink.FieldByName('ID').AsInteger;
end;

end.
