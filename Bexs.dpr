program Bexs;

uses
  OracleMonitor,
  Forms,
  ufMain in 'ufMain.pas' {FrmMain},
  DataModule in 'DataModule.pas' {DataModule2: TDataModule},
  ufEolink in 'ufEolink.pas' {FrmEolink},
  ufTask in 'ufTask.pas' {FrmTask},
  ufReference in 'ufReference.pas' {FrmReference},
  ufRefCorrespond in 'ufRefCorrespond.pas' {FrmRefCorrespond},
  ufCrone in 'ufCrone.pas' {FrmCrone},
  ufPdoc in 'ufPdoc.pas' {FrmPdoc},
  ufNotif in 'ufNotif.pas' {FrmNotif},
  ufErrStat in 'ufErrStat.pas' {FrmErrStat},
  u_frmSelReu in 'u_frmSelReu.pas' {FrmSelReu},
  uRefDocTpCorrespond in 'uRefDocTpCorrespond.pas' {FrmRefDocTpCorrespond};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule2, DataModule2);
  if not DataModule2.OracleLogon1.Execute then
    Application.Terminate;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
