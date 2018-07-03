unit ufMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ufEolink, ufTask, ImgList;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    N1: TMenuItem;
    Eolink1: TMenuItem;
    ImageList1: TImageList;
    procedure N1Click(Sender: TObject);
    procedure Eolink1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.N1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmEolink, FrmEolink);
   FrmEolink.setFltById(0);
end;

procedure TFrmMain.Eolink1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmTask, FrmTask);
end;

end.
