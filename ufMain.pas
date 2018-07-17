unit ufMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ufEolink, ufTask, ufReference, ufRefCorrespond, ImgList;

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
    procedure N1Click(Sender: TObject);
    procedure Eolink1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure findRoot(parentId: Integer; // Id первого родителя
                       tp: String         // Тип объекта для поиска
                       );
  end;

var
  FrmMain: TFrmMain;

implementation

uses DataModule;

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

// найти корневой объект
procedure TFrmMain.findRoot(parentId: Integer; // Id первого родителя
                   tp: String         // Тип объекта для поиска
                   );
var
  id: Integer;
begin
  id:=DataModule2.OP_gis.CallIntegerFunction('get_root_eolink',
      [parentId, tp]);
  if id <> 0 then
  begin
    // найти иерархию объектов Eolink
    Application.CreateForm(TFrmEolink, FrmEolink);
    FrmEolink.setFltById(id, 2);
  end
  else
  begin
    Application.MessageBox('Объект с типом "+PChar(tp)+" не найден!', 'Внимание!',
      MB_OK + MB_ICONSTOP);
  end;
end;

procedure TFrmMain.N6Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
