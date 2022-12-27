unit ufMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ufEolink, ufTask, ufPdoc, ufReference, ufRefCorrespond,
  ImgList, cxGrid, cxGridExportLink, OracleData, DB, fcxControl, fcxZone,
  fcxCustomGrid, fcxCubeGrid, fcxDataSource, fcxComponent, fcxCube,
  fcxSliceGridToolbar, ToolWin, ComCtrls, fcxCustomToolbar, fcxCubeGridToolBar,
  fcxSliceGrid, fcxSlice, ExtCtrls, System.ImageList, Vcl.StdCtrls, WUpdate,
  WUpdateWiz;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    N1: TMenuItem;
    Eolink1: TMenuItem;
    ImageList1: TImageList;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Pdoc1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Ver1011: TMenuItem;
    N10: TMenuItem;
    WebUpdate1: TWebUpdate;
    Button1: TButton;
    WebUpdateWizard1: TWebUpdateWizard;
    Button2: TButton;
    procedure N1Click(Sender: TObject);
    procedure Eolink1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Pdoc1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure expToExcel(fname: string; cxGrid1: TcxGrid);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private    { Private declarations }
  public
    function findRoot(id: Integer; // Id элемента
      tp: string;         // Тип объекта для поиска
      isCreateFrmEolink: Boolean; // создавать ли форму Eolink или вернуть id
      pLsk: String // найти лиц.счет, если указано
    ): Integer;
  end;

var
  FrmMain: TFrmMain;


implementation

uses
  DataModule, ufNotif, ufErrStat, uRefDocTpCorrespond;

{$R *.dfm}

procedure TFrmMain.N1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmEolink, FrmEolink);
  FrmEolink.setFltById(0, 3);
end;

procedure TFrmMain.Button1Click(Sender: TObject);
begin
  if WebUpdate1.NewVersionAvailable() then
  begin
    WebUpdate1.DoUpdate;
  end;
end;

procedure TFrmMain.Button2Click(Sender: TObject);
begin
WebUpdateWizard1.Execute(true);
end;

procedure TFrmMain.Eolink1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmTask, FrmTask);
  FrmTask.setFltById(0);
end;

procedure TFrmMain.N3Click(Sender: TObject);
begin
  Application.CreateForm(TFrmReference, FrmReference);
end;

procedure TFrmMain.N4Click(Sender: TObject);
begin
  Application.CreateForm(TFrmRefCorrespond, FrmRefCorrespond);

end;

// найти корневой объект
function TFrmMain.findRoot(id: Integer; // Id элемента
  tp: string;         // Тип объекта для поиска
  isCreateFrmEolink: Boolean; // создавать ли форму Eolink или вернуть id
  pLsk: String // найти лиц.счет, если указано
): Integer;
var
  foundId: Integer;
  str: string;
begin
  foundId := DataModule2.OP_gis.CallIntegerFunction('get_root_eolink', [id, tp]);
  if foundId <> 0 then
  begin
    // найти иерархию объектов Eolink
    if isCreateFrmEolink then
    begin
      Application.CreateForm(TFrmEolink, FrmEolink);
      FrmEolink.setFltById(foundId, 2);
      if pLsk <> '' then
      begin
        FrmEolink.OD_Eolink.SearchRecord('lsk', pLsk, [srFromBeginning]);
      end;
    end
    else
    begin
      Result := foundId;
      exit;
    end;
  end
  else
  begin
    str := 'Объект с типом ' + tp + ' не найден!';
    Application.MessageBox(PChar(str), 'Внимание!', MB_OK + MB_ICONSTOP);
  end;
  Result := -1;
end;

procedure TFrmMain.N6Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMain.Pdoc1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPdoc, FrmPdoc);
  FrmPdoc.setFltById(0, 0, 0, 1);
end;

procedure TFrmMain.N7Click(Sender: TObject);
begin
  Application.CreateForm(TFrmNotif, FrmNotif);
  FrmNotif.setFltById(0, 0);

end;

procedure TFrmMain.expToExcel(fname: string; cxGrid1: TcxGrid);
var
  dir, str: string;
begin
  dir := GetCurrentDir;
  ExportGridToExcel(fname, cxGrid1, false, true, true, 'xls');
  str := 'Сохранено в ' + dir + '\' + fname + '.xls';
  Application.MessageBox(PChar(str), 'Внимание!', MB_OK + MB_ICONINFORMATION);
end;

procedure TFrmMain.N8Click(Sender: TObject);
var
  i: Word;
begin
  // закрыть все MDI окна
  try
    for i := 0 to MDIChildCount - 1 do
      MDIChildren[i].Close;
  except

  end;
end;

procedure TFrmMain.N9Click(Sender: TObject);
begin
  Application.CreateForm(TFrmErrStat, FrmErrStat);
end;

procedure TFrmMain.N10Click(Sender: TObject);
begin
  Application.CreateForm(TFrmRefDocTpCorrespond, FrmRefDocTpCorrespond);
end;

end.

