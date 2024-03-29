unit ufPdoc;

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
  StdCtrls, ComCtrls, ToolWin, Menus, cxCheckBox, ufTask, cxContainer,
  dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, dxDateRanges;

type
  TFrmPdoc = class(TForm)
    OD_Pdoc: TOracleDataSet;
    DS_pdoc: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    OD_PdocID: TFloatField;
    OD_PdocGUID: TStringField;
    OD_PdocCD: TStringField;
    OD_PdocUNIQNUM: TStringField;
    OD_PdocFK_EOLINK: TFloatField;
    OD_PdocTGUID: TStringField;
    OD_PdocSTATUS: TFloatField;
    OD_PdocV: TFloatField;
    OD_PdocDT: TDateTimeField;
    OD_PdocERR: TFloatField;
    OD_PdocDT_CRT: TDateTimeField;
    OD_PdocDT_UPD: TDateTimeField;
    OD_PdocRESULT: TStringField;
    OD_PdocLSK: TStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1GUID: TcxGridDBColumn;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1UNIQNUM: TcxGridDBColumn;
    cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn;
    cxGrid1DBTableView1TGUID: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1V: TcxGridDBColumn;
    cxGrid1DBTableView1DT: TcxGridDBColumn;
    cxGrid1DBTableView1ERR: TcxGridDBColumn;
    cxGrid1DBTableView1DT_CRT: TcxGridDBColumn;
    cxGrid1DBTableView1DT_UPD: TcxGridDBColumn;
    cxGrid1DBTableView1RESULT: TcxGridDBColumn;
    cxGrid1DBTableView1LSK: TcxGridDBColumn;
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
    N1: TMenuItem;
    N3: TMenuItem;
    Excel1: TMenuItem;
    OD_PdocUK: TStringField;
    OD_PdocSTREET: TStringField;
    OD_PdocND: TStringField;
    OD_PdocENTRY: TFloatField;
    OD_PdocKW: TStringField;
    cxGrid1DBTableView1UK: TcxGridDBColumn;
    cxGrid1DBTableView1STREET: TcxGridDBColumn;
    cxGrid1DBTableView1ND: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRY: TcxGridDBColumn;
    cxGrid1DBTableView1KW: TcxGridDBColumn;
    OD_PdocCOMM: TStringField;
    cxGrid1DBTableView1COMM: TcxGridDBColumn;
    OD_PdocSUMMA_IN: TFloatField;
    OD_PdocPENYA_IN: TFloatField;
    OD_PdocSUMMA_OUT: TFloatField;
    OD_PdocPENYA_OUT: TFloatField;
    cxGrid1DBTableView1SUMMA_IN: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_IN: TcxGridDBColumn;
    cxGrid1DBTableView1SUMMA_OUT: TcxGridDBColumn;
    cxGrid1DBTableView1PENYA_OUT: TcxGridDBColumn;
    CheckBox1: TCheckBox;
    ask1: TMenuItem;
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
    ToolButton6: TToolButton;
    procedure OD_PdocAfterFetchRecord(Sender: TOracleDataSet;
      FilterAccept: Boolean; var Action: TAfterFetchRecordAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure setFltById(id, id2, id3, flt2: Integer);
    procedure Eolink1Click(Sender: TObject);
    procedure Eolink2Click(Sender: TObject);
    procedure Eolink3Click(Sender: TObject);
    procedure INS1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ask1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPdoc: TFrmPdoc;
  loadRec: Integer;

implementation

uses DataModule, ufEolink, ufMain, ufNotif;

{$R *.dfm}

// ������ �� Id

procedure TFrmPdoc.setFltById(id, id2, id3, flt2: Integer);
begin
  // ���������� ������ �� ������ Id (��� �� �������������, ���� 0)
{  OD_Pdoc.SetVariable('FLTID', id);
  OD_Pdoc.SetVariable('FLTID2', id2);
  OD_Pdoc.SetVariable('FLTID3', id3);
  OD_Pdoc.SetVariable('FLT2', flt2);
  }

  if (id <> 0) then
    OD_Pdoc.SetVariable('SUBSTEXP2', 'and t.fk_eolink=' + IntToStr(id))
  else
    OD_Pdoc.SetVariable('SUBSTEXP2', '');

  if (id2 <> 0) then
    OD_Pdoc.SetVariable('SUBSTEXP3', 'and t.id=' + IntToStr(id2))
  else
    OD_Pdoc.SetVariable('SUBSTEXP3', '');

  if (id3 <> 0) then
  begin
    OD_Pdoc.SetVariable('SUBSTEXP4', 'and coalesce(h.id,h2.id,h3.id)=' + IntToStr(id3));
    //OD_Pdoc.SetVariable('SUBSTEXP6', 'and h2.id=' + IntToStr(id3));
  end
  else
  begin
    OD_Pdoc.SetVariable('SUBSTEXP4', '');
    //OD_Pdoc.SetVariable('SUBSTEXP6', '');
  end;

  if (flt2 <> 0) then
    OD_Pdoc.SetVariable('SUBSTEXP5', 'and t.v=1')
  else
    OD_Pdoc.SetVariable('SUBSTEXP5', '');

  OD_Pdoc.Active := false;
  OD_Pdoc.Active := true;
  {  if LowerCase(DataModule2.OracleLogon1.Session.LogonUsername)<>'scott' then
    begin
      OD_Pdoc.ReadOnly:=true;
    end;}
      // ������� �������
  loadRec := 0;
end;

procedure TFrmPdoc.OD_PdocAfterFetchRecord(Sender: TOracleDataSet;
  FilterAccept: Boolean; var Action: TAfterFetchRecordAction);
begin
  loadRec := loadRec + 1;
  if loadRec > 10000 then
  begin
    if Application.MessageBox('��������� ���?',
      '�� ��������� ����� 1000 �������', MB_YESNO +
      MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
      Action := afContinue;
      loadRec := 0;
    end
    else
    begin
      Action := afStop;
    end;
  end;
end;

procedure TFrmPdoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPdoc.ToolButton1Click(Sender: TObject);
begin
  OD_Pdoc.QBEMode := True;

end;

procedure TFrmPdoc.ToolButton2Click(Sender: TObject);
begin
  OD_Pdoc.ExecuteQBE;

end;

procedure TFrmPdoc.ToolButton4Click(Sender: TObject);
begin
  // ���������� ������ �� id �������
  if Edit1.Text <> '' then
  begin
    OD_Pdoc.SetVariable('SUBSTEXP1', 'and t.id in (' + Edit1.Text+')');
    OD_Pdoc.Active := false;
    OD_Pdoc.Active := true;
  end
  else
    OD_Pdoc.SetVariable('SUBSTEXP1', '');

end;

procedure TFrmPdoc.ToolButton5Click(Sender: TObject);
begin
  // ����� ������ �� id �������
  //OD_Pdoc.SetVariable('FLT', 0);
  OD_Pdoc.SetVariable('SUBSTEXP1', '');
  OD_Pdoc.Active := false;
  OD_Pdoc.Active := true;

end;

procedure TFrmPdoc.Eolink1Click(Sender: TObject);
begin
  // ����� ������ Eolink
  Application.CreateForm(TFrmEolink, FrmEolink);
  FrmEolink.setFltById(OD_Pdoc.FieldByName('FK_EOLINK').asInteger, 0);
end;

procedure TFrmPdoc.Eolink2Click(Sender: TObject);
begin
  // ����� �������� ������
  FrmMain.findRoot(OD_Pdoc.FieldByName('FK_EOLINK').asInteger,
    '���', True, OD_Pdoc.FieldByName('LSK').asString);

end;

procedure TFrmPdoc.Eolink3Click(Sender: TObject);
begin
  // ����� �������� ������
  FrmMain.findRoot(OD_Pdoc.FieldByName('fk_eolink').asInteger,
    '�����������', true, null);

end;

procedure TFrmPdoc.INS1Click(Sender: TObject);
begin
  if OD_Pdoc.State <> dsEdit then
    OD_Pdoc.Edit;
  // �����������
  OD_Pdoc.FieldByName('V').AsInteger := 1;
  // ������ - �������� �� ��������
  OD_Pdoc.FieldByName('STATUS').AsInteger := 0;
  // ������ ������
  OD_Pdoc.FieldByName('ERR').AsInteger := 0;
  // ��������� ��������� ���������
  OD_Pdoc.FieldByName('RESULT').AsString := '';
  OD_Pdoc.Post;

end;

procedure TFrmPdoc.N1Click(Sender: TObject);
begin
  // ����� ���������
  Application.CreateForm(TFrmNotif, FrmNotif);
  FrmNotif.setFltById(0, OD_Pdoc.FieldByName('ID').asInteger);

end;

procedure TFrmPdoc.Excel1Click(Sender: TObject);
begin
  FrmMain.expToExcel('���������_���������', cxGrid1);
end;

procedure TFrmPdoc.cxGrid1DBTableView1CustomDrawCell(
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
end;

procedure TFrmPdoc.ask1Click(Sender: TObject);
var
  id: Integer;
begin
  // ����� �������� ������
  id := FrmMain.findRoot(OD_Pdoc.FieldByName('FK_EOLINK').asInteger,
    '���', false, '');
  // ����� ������� Task
  Application.CreateForm(TFrmTask, FrmTask);
  FrmTask.setFltById(id);
end;

procedure TFrmPdoc.ToolButton6Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    OD_Pdoc.SetVariable('SUBSTEXP5', 'and t.v=1')
  else
    OD_Pdoc.SetVariable('SUBSTEXP5', '');
  if cxDateEdit1.Text <> '' then
    OD_Pdoc.SetVariable('SUBSTEXP7', 'and t.dt=to_date('''+cxDateEdit1.Text+''', ''DD.MM.YYYY'')')
  else
    OD_Pdoc.SetVariable('SUBSTEXP7', '');

{  if CheckBox1.Checked then
    OD_Pdoc.SetVariable('FLT2', 1)
  else
    OD_Pdoc.SetVariable('FLT2', 0);
 }
{  if cxDateEdit1.Text = '' then
    OD_Pdoc.SetVariable('P_DT', null)
  else
    OD_Pdoc.SetVariable('P_DT', cxDateEdit1.Date);
    }
  OD_Pdoc.Active := false;
  OD_Pdoc.Active := true;
end;

end.

