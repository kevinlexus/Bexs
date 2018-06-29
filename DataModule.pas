unit DataModule;

interface

uses
  SysUtils, Classes, Oracle;

type
  TDataModule2 = class(TDataModule)
    OracleSession1: TOracleSession;
    OracleLogon1: TOracleLogon;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
