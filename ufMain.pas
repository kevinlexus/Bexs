unit ufMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ufEolink, ufTask, ufPdoc, ufReference, ufRefCorrespond,
  ImgList, cxGrid, cxGridExportLink;

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
    procedure N1Click(Sender: TObject);
    procedure Eolink1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Pdoc1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure expToExcel(fname: string; cxGrid1: TcxGrid);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure findRoot(parentId: Integer; // Id ������� ��������
                       tp: String         // ��� ������� ��� ������
                       );
  end;

var
  FrmMain: TFrmMain;

implementation

uses DataModule, ufNotif;

{$R *.dfm}

procedure TFrmMain.N1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmEolink, FrmEolink);
   FrmEolink.setFltById(0, 3);
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

// ����� �������� ������
procedure TFrmMain.findRoot(parentId: Integer; // Id ������� ��������
                   tp: String         // ��� ������� ��� ������
                   );
var
  id: Integer;
  str: string;
begin
  id:=DataModule2.OP_gis.CallIntegerFunction('get_root_eolink',
      [parentId, tp]);
  if id <> 0 then
  begin
    // ����� �������� �������� Eolink
    Application.CreateForm(TFrmEolink, FrmEolink);
    FrmEolink.setFltById(id, 2);
  end
  else
  begin
    str:='������ � ����� '+tp+' �� ������!';
    Application.MessageBox(PChar(str), '��������!',
      MB_OK + MB_ICONSTOP);
  end;
end;

procedure TFrmMain.N6Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMain.Pdoc1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmPdoc, FrmPdoc);
   FrmPdoc.setFltById(0,0);
end;

procedure TFrmMain.N7Click(Sender: TObject);
begin
   Application.CreateForm(TFrmNotif, FrmNotif);
   FrmNotif.setFltById(0,0);

end;

procedure TFrmMain.expToExcel(fname: string; cxGrid1: TcxGrid);
 var
   dir, str: string;
begin
  dir := GetCurrentDir;
  ExportGridToExcel(fname, cxGrid1, false, true, true, 'xls');
  str:='��������� � '+dir+'\'+fname+'.xls';
  Application.MessageBox(PChar(str), '��������!', MB_OK +
    MB_ICONINFORMATION);
end;

procedure TFrmMain.N8Click(Sender: TObject);
var
  i : Word;
begin
  // ������� ��� MDI ����
  try
   for i := 0 to MDIChildCount - 1 do MDIChildren[i].Close;
  except

  end;
end;

end.
