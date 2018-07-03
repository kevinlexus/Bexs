program Bexs;

uses
  OracleMonitor,
  Forms,
  ufMain in 'ufMain.pas' {FrmMain},
  DataModule in 'DataModule.pas' {DataModule2: TDataModule},
  ufEolink in 'ufEolink.pas' {FrmEolink},
  ufTask in 'ufTask.pas' {FrmTask},
  ufReference in 'ufReference.pas' {FrmReference},
  ufRefCorrespond in 'ufRefCorrespond.pas' {FrmRefCorrespond};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule2, DataModule2);
  DataModule2.OracleLogon1.Execute;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
