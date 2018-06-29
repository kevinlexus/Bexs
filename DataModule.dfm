object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 1291
  Top = 193
  Height = 150
  Width = 215
  object OracleSession1: TOracleSession
    DesignConnection = True
    LogonUsername = 'lev'
    LogonPassword = 'testtest1'
    LogonDatabase = 'RKCDB'
    Connected = True
    Left = 40
    Top = 24
  end
  object OracleLogon1: TOracleLogon
    Session = OracleSession1
    Retries = 10
    Options = [ldAuto, ldDatabase, ldLogonHistory]
    HistoryRegSection = 'BEXS'
    HistoryWithPassword = True
    Left = 120
    Top = 24
  end
end
