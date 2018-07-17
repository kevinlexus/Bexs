unit DataModule;

interface

uses
  SysUtils, Classes, Oracle, DB, OracleData;

type
  TDataModule2 = class(TDataModule)
    OracleSession1: TOracleSession;
    OracleLogon1: TOracleLogon;
    OD_par: TOracleDataSet;
    DS_par: TDataSource;
    OD_crone: TOracleDataSet;
    DS_crone: TDataSource;
    OP_gis: TOraclePackage;
    procedure OracleSession1AfterLogOn(Sender: TOracleSession);
  private
    { Private declarations }
  public
  end;

var
  DataModule2: TDataModule2;

implementation

uses ufEolink;

{$R *.dfm}

procedure TDataModule2.OracleSession1AfterLogOn(Sender: TOracleSession);
begin
  OD_par.Active:=true;
  OD_crone.Active:=true;
end;

end.
