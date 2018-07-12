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
    procedure OracleSession1AfterLogOn(Sender: TOracleSession);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

procedure TDataModule2.OracleSession1AfterLogOn(Sender: TOracleSession);
begin
  OD_par.Active:=true;
  OD_crone.Active:=true;
end;

end.
