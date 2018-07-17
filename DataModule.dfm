object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 1355
  Top = 174
  Height = 477
  Width = 391
  object OracleSession1: TOracleSession
    AfterLogOn = OracleSession1AfterLogOn
    DesignConnection = True
    LogonUsername = 'scott'
    LogonPassword = 'monemyro'
    LogonDatabase = 'ORCL'
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
  object OD_par: TOracleDataSet
    SQL.Strings = (
      'select t.* from ORALV.U_HFPAR t'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000028000000020000004944010000000000020000004344010000000000
      07000000464B5F554E49540100000000000600000056414C5F54500100000000
      0007000000444154415F5450010000000000040000004E414D45010000000000
      09000000504152454E545F4944010000000000030000004E5050010000000000
      0700000049535F5041544801000000000004000000434F4D4D01000000000007
      000000564945575F4E4D010000000000080000005441424C455F4E4D01000000
      00000700000053514C5F54585401000000000001000000560100000000000B00
      000049535F4C4953544E414D450100000000000900000053514C5F5458545F31
      0100000000000900000043445F44454C4554450100000000000700000053514C
      5F5041520100000000000800000053514C5F5041523201000000000003000000
      4344320100000000000800000049535F41444449540100000000000C00000041
      444449545F4C4F575F43440100000000000D00000041444449545F484947485F
      43440100000000000700000043445F4B4152540100000000000A000000464B5F
      414444525F545001000000000002000000533401000000000003000000414C47
      0100000000000B0000004846505F424153455F43440100000000000600000049
      535F4F4E450100000000000A00000049535F4454314E554C4C0100000000000A
      00000049535F4454324E554C4C01000000000003000000494D50010000000000
      05000000434F4D4D32010000000000080000004E414D455F5052460100000000
      000B00000049535F434F4E54494E55450100000000000A00000049535F524550
      4C4153450100000000000A00000053514C5F5458545F45310100000000000400
      00005441475301000000000007000000464B5F55534552010000000000030000
      00445446010000000000}
    Session = OracleSession1
    Left = 40
    Top = 88
  end
  object DS_par: TDataSource
    DataSet = OD_par
    Left = 80
    Top = 88
  end
  object OD_crone: TOracleDataSet
    SQL.Strings = (
      'select t.* from EXS.CRONE t'
      'order by t.id')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000300000002000000494401000000000004000000434F4D4D01000000
      00000400000045585052010000000000}
    Session = OracleSession1
    Active = True
    Left = 40
    Top = 144
  end
  object DS_crone: TDataSource
    DataSet = OD_crone
    Left = 80
    Top = 144
  end
  object OP_gis: TOraclePackage
    Session = OracleSession1
    PackageName = 'exs.p_gis'
    Left = 40
    Top = 200
  end
end
