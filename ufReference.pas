unit ufReference;

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
  ExtCtrls, DataModule, StdCtrls;

type
  TFrmReference = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    DS_ListTp: TDataSource;
    OD_ListTp: TOracleDataSet;
    OD_ListTpID: TFloatField;
    OD_ListTpCD: TStringField;
    OD_ListTpNAME: TStringField;
    OD_ListTpGRP: TStringField;
    OD_ListTpFK_EXT: TFloatField;
    OD_ListTpFK_EOLINK: TFloatField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1GRP: TcxGridDBColumn;
    cxGrid1DBTableView1FK_EXT: TcxGridDBColumn;
    cxGrid1DBTableView1FK_EOLINK: TcxGridDBColumn;
    Splitter1: TSplitter;
    OD_list: TOracleDataSet;
    Ds_List: TDataSource;
    OD_listID: TFloatField;
    OD_listPARENT_ID: TFloatField;
    OD_listFK_LISTTP: TFloatField;
    OD_listFK_EXT: TFloatField;
    OD_listNPP: TFloatField;
    OD_listGUID: TStringField;
    OD_listACTUAL: TFloatField;
    OD_listNAME: TStringField;
    OD_listS1: TStringField;
    OD_ListTpNAME_ORG: TStringField;
    cxGrid1DBTableView1NAME_ORG: TcxGridDBColumn;
    OD_listTP2: TFloatField;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1PARENT_ID: TcxGridDBColumn;
    cxGridDBTableView1FK_LISTTP: TcxGridDBColumn;
    cxGridDBTableView1FK_EXT: TcxGridDBColumn;
    cxGridDBTableView1CD: TcxGridDBColumn;
    cxGridDBTableView1NPP: TcxGridDBColumn;
    cxGridDBTableView1GUID: TcxGridDBColumn;
    cxGridDBTableView1ACTUAL: TcxGridDBColumn;
    cxGridDBTableView1NAME: TcxGridDBColumn;
    cxGridDBTableView1S1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Memo1: TMemo;
    OD_listPARENT_ID2: TFloatField;
    OD_listPARENT_ID3: TFloatField;
    cxGridDBTableView1PARENT_ID2: TcxGridDBColumn;
    cxGridDBTableView1PARENT_ID3: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReference: TFrmReference;

implementation

{$R *.dfm}

procedure TFrmReference.FormCreate(Sender: TObject);
begin
  OD_ListTp.Active:=True;
  OD_List.Active:=True;
  // права доступа
  if LowerCase(DataModule2.OracleLogon1.Session.LogonUsername)<>'scott' then
  begin
    OD_List.ReadOnly:=true;
    OD_ListTp.ReadOnly:=true;
  end;
end;

procedure TFrmReference.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
