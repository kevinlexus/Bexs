unit ufDataModuleOlap;

interface

uses
  SysUtils, Classes, DB, OracleData, MemTableDataEh, MemTableEh,
  DataDriverEh, DBAccess, Uni, MemDS, DASQLMonitor, UniSQLMonitor, Utils;

type
  TDM_Olap = class(TDataModule)
    DS_spr_params: TDataSource;
    OD_oper: TOracleDataSet;
    DS_oper: TDataSource;
    OD_org: TOracleDataSet;
    DS_org: TDataSource;
    DS_mg1: TDataSource;
    DS_mg2: TDataSource;
    OD_org_olap: TOracleDataSet;
    OD_spul_olap: TOracleDataSet;
    OD_empty: TOracleDataSet;
    OD_usl_olap: TOracleDataSet;
    OD_lsk_tp_olap: TOracleDataSet;
    OD_trest_olap: TOracleDataSet;
    OD_org2_olap: TOracleDataSet;
    OD_reu_olap: TOracleDataSet;
    OD_status_olap: TOracleDataSet;
    OD_sch_olap: TOracleDataSet;
    OD_psch_olap: TOracleDataSet;
    DS_detail: TDataSource;
    OD_mg1: TOracleDataSet;
    OD_mg2: TOracleDataSet;
    DS_c_kart_pr: TDataSource;
    DS_nabor_lsk: TDataSource;
    OD_dat2: TOracleDataSet;
    OD_dat1: TOracleDataSet;
    OD_level: TOracleDataSet;
    OD_levelNAME: TStringField;
    OD_levelLEVEL_ID: TFloatField;
    OD_uslm_olap: TOracleDataSet;
    DataSetDriverEh2: TDataSetDriverEh;
    MemTableEh2: TMemTableEh;
    DS_tree_objects: TDataSource;
    Uni_Data: TUniQuery;
    UniSQLMonitor1: TUniSQLMonitor;
    Uni_tree_objects: TUniQuery;
    Uni_spr_params: TUniQuery;
    Uni_nabor_lsk: TUniQuery;
    Uni_c_kart_pr: TUniQuery;
    Uni_detail: TUniQuery;
    DS_data: TDataSource;
    procedure MemTableEh2AfterScroll(DataSet: TDataSet);
    procedure MemTableEh2SetFieldValue(MemTable: TCustomMemTableEh;
      Field: TField; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Olap: TDM_Olap;

implementation

uses Unit_tree_objects;

{$R *.dfm}

procedure TDM_Olap.MemTableEh2AfterScroll(DataSet: TDataSet);
var
  str_: String;
begin
  if FF('Form_tree_objects', 0) = 1 then
  begin
    if (Form_tree_objects.can_detail_ = 1) then
    begin
    str_:=Form_tree_objects.wwDBLookupCombo2.LookupValue;
    with OD_level do
    begin
    Active:=false;
    SetVariable('id',
      MemTableEh2.FieldByName('OBJ_LEVEL').AsInteger);
    Active:=true;
    SearchRecord('level_id', StrToInt(str_),
      [srFromBeginning]);
    Form_tree_objects.wwDBLookupCombo2.LookupValue:=
       FieldByName('level_id').AsString;
    end;
    end;
  end;

end;

procedure TDM_Olap.MemTableEh2SetFieldValue(MemTable: TCustomMemTableEh;
  Field: TField; var Value: Variant);
begin
  if Form_tree_objects.flag_ = 0 then
  begin
  Form_tree_objects.flag_:=1;
    //Обновить само значение в поле
    MemTableEh2.FieldByName('sel').AsInteger:=VarToInt(Value);
    if Form_tree_objects.sel_many_ <> 0 then
    begin
      //Обновить значения в дочерних объектах
      Form_tree_objects.sel_tree_obj(MemTableEh2.TreeNode, VarToInt(Value));
    end
    else
    begin
      //Обновить значения в во всех объектах (деселект всех)
      Form_tree_objects.desel_all_obj(MemTableEh2, MemTableEh2.FieldByName('id').AsInteger);
    end;
    Form_tree_objects.DBGridEh1.Refresh;
  Form_tree_objects.flag_:=0;
  end;

end;

end.
