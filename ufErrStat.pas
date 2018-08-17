unit ufErrStat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OracleData, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Menus;

type
  TFrmErrStat = class(TForm)
    OD_menu: TOracleDataSet;
    DS_menu: TDataSource;
    Panel1: TPanel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    OD_data: TOracleDataSet;
    DS_data: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmErrStat: TFrmErrStat;

implementation

uses ufMain;

{$R *.dfm}

procedure TFrmErrStat.FormCreate(Sender: TObject);
begin
  OD_menu.Active:=true;
end;

procedure TFrmErrStat.cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
 var a,i: Integer;
     itm: TObject ;
begin
  OD_data.SetVariable('P_ID', cxLookupComboBox1.EditValue);
  OD_data.SetVariable('P_PERIOD', Edit1.Text);
  OD_data.Active:=false;
  OD_data.Active:=true;
  i:=cxGrid1DBTableView1.ColumnCount-1;
  a:=0;
  while a<=i do
  begin
    cxGrid1DBTableView1.Columns[0].Free;
    a:=a+1;
  end;
  // создать все поля
  cxGrid1DBTableView1.DataController.CreateAllItems(true);
end;

procedure TFrmErrStat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmErrStat.Excel1Click(Sender: TObject);
begin
  FrmMain.expToExcel('Контроль', cxGrid1);
end;

end.
