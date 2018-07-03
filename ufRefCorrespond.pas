unit ufRefCorrespond;

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
  cxDBData, OracleData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ExtCtrls, cxDBLookupComboBox;

type
  TFrmRefCorrespond = class(TForm)
    OD_ServGis: TOracleDataSet;
    DS_ServGis: TDataSource;
    OD_ServGisID: TFloatField;
    OD_ServGisFK_SERV: TFloatField;
    OD_ServGisFK_USL: TStringField;
    OD_ServGisFK_LIST: TFloatField;
    OD_ServGisGRP: TFloatField;
    OD_ServGisFK_EOLINK: TFloatField;
    OD_List: TOracleDataSet;
    DS_List: TDataSource;
    OD_Eolink: TOracleDataSet;
    DS_eolink: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1FK_SERV: TcxGridDBColumn;
    cxGrid1DBTableView1FK_USL: TcxGridDBColumn;
    cxGrid1DBTableView1FK_LIST: TcxGridDBColumn;
    cxGrid1DBTableView1GRP: TcxGridDBColumn;
    cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    Splitter1: TSplitter;
    OD_ServGisLKUPLIST: TIntegerField;
    cxGrid1DBTableView1LKUPLIST: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRefCorrespond: TFrmRefCorrespond;

implementation

{$R *.dfm}

procedure TFrmRefCorrespond.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmRefCorrespond.FormCreate(Sender: TObject);
begin
  OD_Eolink.Active:=true;
  OD_ServGis.Active:=true;
  OD_List.Active:=true;
end;

end.
