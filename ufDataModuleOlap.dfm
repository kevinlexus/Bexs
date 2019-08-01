object DM_Olap: TDM_Olap
  OldCreateOrder = False
  Left = 1095
  Top = 223
  Height = 810
  Width = 686
  object DS_spr_params: TDataSource
    DataSet = Uni_spr_params
    Left = 97
    Top = 240
  end
  object OD_oper: TOracleDataSet
    SQL.Strings = (
      'select oper, oper||'#39' '#39'||naim as name from scott.oper t'
      'order by t.naim')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000004F504552010000000000040000004E414D450100
      00000000}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 264
  end
  object DS_oper: TDataSource
    DataSet = OD_oper
    Left = 168
    Top = 264
  end
  object OD_org: TOracleDataSet
    SQL.Strings = (
      
        'select t.kod, to_char(t.kod)||'#39' '#39'||t.name as name from scott.spr' +
        'org t'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000004E414D45010000000000030000004B4F44010000
      000000}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 296
  end
  object DS_org: TDataSource
    DataSet = OD_org
    Left = 168
    Top = 296
  end
  object DS_mg1: TDataSource
    DataSet = OD_mg1
    Left = 232
    Top = 288
  end
  object DS_mg2: TDataSource
    DataSet = OD_mg2
    Left = 264
    Top = 288
  end
  object OD_org_olap: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, to_char(t.id)||'#39' '#39'||t.name as name from scott.t_org' +
        ' t'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000004E414D4501000000000002000000494401000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 312
  end
  object OD_spul_olap: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.name'
      ' from scott.spul t')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 360
    Top = 312
  end
  object OD_empty: TOracleDataSet
    SQL.Strings = (
      'select 1 as x, 1 as y from dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {040000000200000001000000580100000000000100000059010000000000}
    Session = DataModule1.OracleSession1
    Left = 256
    Top = 328
  end
  object OD_usl_olap: TOracleDataSet
    SQL.Strings = (
      
        'select u.usl, u.usl||'#39' '#39'||TRIM(u.nm)||DECODE(u.ed_izm,NULL,'#39#39','#39' ' +
        '('#39'||TRIM(u.ed_izm)||'#39')'#39') as nm'
      ' from scott.usl u'
      'union all'
      
        'select '#39'000'#39' as usl, '#39#1048#1090#1086#1075#1086', '#1073#1077#1079' '#1088#1072#1079#1073#1080#1074#1082#1080' '#1085#1072' '#1091#1089#1083#1091#1075#1080#39' as nm from ' +
        'dual'
      'order by nm')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      04000000020000000300000055534C010000000000020000004E4D0100000000
      00}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 568
  end
  object OD_lsk_tp_olap: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.name'
      ' from scott.v_lsk_tp t'
      'union all'
      'select 0 as id, '#39#1053#1077' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086#39' as name from dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 360
    Top = 344
  end
  object OD_trest_olap: TOracleDataSet
    SQL.Strings = (
      'select t.trest, t.name as name_tr'
      'from scott.t_org t where t.trest is not null')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000050000005452455354010000000000070000004E414D455F
      5452010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 376
  end
  object OD_org2_olap: TOracleDataSet
    SQL.Strings = (
      
        'select t.id, to_char(t.id)||'#39' '#39'||t.name as name from scott.t_org' +
        ' t'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000004E414D4501000000000002000000494401000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 360
    Top = 376
  end
  object OD_reu_olap: TOracleDataSet
    SQL.Strings = (
      'select t.reu, t.name as name_reu'
      'from scott.t_org t where t.reu is not null')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000524555010000000000080000004E414D455F5245
      55010000000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 408
  end
  object OD_status_olap: TOracleDataSet
    SQL.Strings = (
      'select t.id, t.name'
      'from scott.status t'
      'order by t.name')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 440
  end
  object OD_sch_olap: TOracleDataSet
    SQL.Strings = (
      'select 0 as id, '#39#1053#1086#1088#1084#1072#1090#1080#1074#39' as name from dual'
      'union all'
      'select 1 as id, '#39#1057#1095#1077#1090#1095#1080#1082#39' as name from dual'
      'union all'
      'select -1 as id, '#39#1053#1077#1090#39' as name from dual')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 472
  end
  object OD_psch_olap: TOracleDataSet
    SQL.Strings = (
      'select 0 as id, '#39#1054#1090#1082#1088#1099#1090#1099#1077' '#1051'/'#1057#39' as name from dual'
      'union all'
      'select 1 as id, '#39#1047#1072#1082#1088#1099#1090#1099#1077' '#1051'/'#1057#39' as name from dual'
      'union all'
      'select 2 as id, '#39#1057#1090#1072#1088#1099#1081' '#1092#1086#1085#1076#39' as name from dual'
      '')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004944010000000000040000004E414D4501000000
      0000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 504
  end
  object DS_detail: TDataSource
    Left = 80
    Top = 656
  end
  object OD_mg1: TOracleDataSet
    SQL.Strings = (
      
        'select t.mg, scott.utils.MONTH_NAME1(substr(t.mg,5,2))||'#39' '#39'||sub' +
        'str(mg,1,4)||'#39' '#1075'.'#39' as mg1,'
      
        ' scott.utils.MONTH_NAME(substr(t.mg,5,2))||'#39' '#39'||substr(mg,1,4)||' +
        #39' '#1075'.'#39' as mg2'
      
        'from scott.v_period_reports t where t.id=:id_ and t.mg is not nu' +
        'll'
      'order by t.mg desc'
      '')
    Optimize = False
    Variables.Data = {
      0300000001000000040000003A49445F03000000040000000400000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000003000000020000004D47010000000000030000004D47310100000000
      00030000004D4732010000000000}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 448
  end
  object OD_mg2: TOracleDataSet
    SQL.Strings = (
      
        'select t.mg, scott.utils.MONTH_NAME(substr(t.mg,5,2))||'#39' '#39'||subs' +
        'tr(mg,1,4)||'#39' '#1075'.'#39' as mg1 '
      
        'from scott.v_period_reports t where t.id=:id_ and t.mg is not nu' +
        'll'
      'order by t.mg desc'
      '')
    Optimize = False
    Variables.Data = {
      0300000001000000040000003A49445F03000000040000000400000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Left = 168
    Top = 448
  end
  object DS_c_kart_pr: TDataSource
    Left = 80
    Top = 600
  end
  object DS_nabor_lsk: TDataSource
    DataSet = Uni_nabor_lsk
    Left = 80
    Top = 544
  end
  object OD_dat2: TOracleDataSet
    SQL.Strings = (
      'select t.dat as mg, t.dat as mg1 '
      
        'from scott.v_period_reports t where t.id=:id_ and t.dat is not n' +
        'ull'
      'order by t.dat desc'
      ''
      '')
    Optimize = False
    Variables.Data = {
      0300000001000000040000003A49445F03000000040000000400000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Left = 168
    Top = 480
  end
  object OD_dat1: TOracleDataSet
    SQL.Strings = (
      'select t.dat as mg, t.dat as mg1'
      
        'from scott.v_period_reports t where t.id=:id_ and t.dat is not n' +
        'ull'
      'order by t.dat desc'
      '')
    Optimize = False
    Variables.Data = {
      0300000001000000040000003A49445F03000000040000000400000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000020000004D47010000000000030000004D47310100000000
      00}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 480
  end
  object OD_level: TOracleDataSet
    SQL.Strings = (
      'select * from ('
      'select 0 as level_id, '#39#1060#1086#1085#1076#39' as name from dual'
      'union all'
      'select 1, '#39#1046#1069#1054#39' as name from dual'
      'union all'
      'select 2, '#39#1044#1086#1084#39' as name from dual'
      'union all'
      'select 3, '#39#1050#1074#1072#1088#1090#1080#1088#1072#39' as name from dual'
      ') where level_id between :id and :max_level')
    Optimize = False
    Variables.Data = {
      0300000002000000030000003A49440300000000000000000000000A0000003A
      4D41585F4C4556454C030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000005000000020000004944010000000000040000004E414D4501000000
      000009000000464B5F5245505F4944010000000000080000004C4556454C5F49
      4401000000000007000000584D4C54455854000000000000}
    Session = DataModule1.OracleSession1
    Left = 136
    Top = 416
    object OD_levelNAME: TStringField
      DisplayWidth = 8
      FieldName = 'NAME'
      Size = 8
    end
    object OD_levelLEVEL_ID: TFloatField
      FieldName = 'LEVEL_ID'
      Required = True
    end
  end
  object OD_uslm_olap: TOracleDataSet
    SQL.Strings = (
      
        'select distinct u.uslm, u.uslm||'#39' '#39'||TRIM(u.nm1)||DECODE(u.ed_iz' +
        'm,NULL,'#39#39','#39' ('#39'||TRIM(u.ed_izm)||'#39')'#39') as nm1'
      ' from scott.usl u where u.usl_norm=0'
      'union all'
      
        'select '#39'000'#39' as uslm, '#39#1048#1090#1086#1075#1086', '#1073#1077#1079' '#1088#1072#1079#1073#1080#1074#1082#1080' '#1085#1072' '#1091#1089#1083#1091#1075#1080#39' as nm1 fro' +
        'm dual'
      'order by nm1')
    Optimize = False
    QBEDefinition.QBEFieldDefs = {
      0400000002000000030000004E4D310100000000000400000055534C4D010000
      000000}
    Session = DataModule1.OracleSession1
    Active = True
    Left = 328
    Top = 616
  end
  object DataSetDriverEh2: TDataSetDriverEh
    ProviderDataSet = Uni_tree_objects
    Left = 30
    Top = 136
  end
  object MemTableEh2: TMemTableEh
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'MAIN_ID'
        DataType = ftFloat
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REU'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'KUL'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ND'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TREST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'STREET'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ND1'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NAME_TR'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'SEL'
        DataType = ftFloat
      end
      item
        Name = 'OBJ_LEVEL'
        DataType = ftFloat
      end
      item
        Name = 'BANK_CD'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'FK_HOUSE'
        DataType = ftFloat
      end
      item
        Name = 'HOUSE_MG'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EXIST1'
        DataType = ftFloat
      end>
    FetchAllOnOpen = True
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'id'
      end
      item
        Name = 'idx2'
        Fields = 'main_id'
      end>
    Params = <>
    DataDriver = DataSetDriverEh2
    StoreDefs = True
    TreeList.Active = True
    TreeList.KeyFieldName = 'id'
    TreeList.RefParentFieldName = 'main_id'
    AfterScroll = MemTableEh2AfterScroll
    OnSetFieldValue = MemTableEh2SetFieldValue
    Left = 94
    Top = 136
  end
  object DS_tree_objects: TDataSource
    DataSet = MemTableEh2
    Left = 144
    Top = 136
  end
  object Uni_Data: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'begin'
      
        '  scott.stat.rep_stat(:reu_, :kul_, :nd_, :trest_, :mg_, :mg1_, ' +
        ':dat_, :dat1_, '
      
        '    :var_, :det_, :org_, :oper_, :cd_, :spk_id_, :p_house, :p_ou' +
        't_tp, :prep_refcursor);'
      'end;')
    Constraints = <>
    Left = 32
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'reu_'
        ParamType = ptInput
        Value = 'xx'
      end
      item
        DataType = ftString
        Name = 'kul_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nd_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'trest_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'mg_'
        ParamType = ptInput
        Value = '201404'
      end
      item
        DataType = ftString
        Name = 'mg1_'
        ParamType = ptInput
        Value = '201404'
      end
      item
        DataType = ftDate
        Name = 'dat_'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dat1_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'var_'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'det_'
        ParamType = ptInput
        Value = 3
      end
      item
        DataType = ftInteger
        Name = 'org_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'oper_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cd_'
        ParamType = ptInput
        Value = '13'
      end
      item
        DataType = ftInteger
        Name = 'spk_id_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_house'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_out_tp'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'prep_refcursor'
        Value = ''
      end>
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 584
    Top = 32
  end
  object Uni_tree_objects: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'select t.rowid, t.sel, t.id as id, t.main_id as main_id,'
      '       decode(t.obj_level,'
      '               0,'
      '               '#39' '#1043#1086#1088#1086#1076#39','
      '               1,'
      '               v.name_tr,'
      '               2,'
      '               s.reu||'#39'-'#39'||s.name,'
      '               p.name||'#39', '#39'||ltrim(t.nd, '#39'0'#39')) as name,'
      '       decode(t.obj_level, 3,'
      #39#1089' '#39'||'
      
        '       case when t.mg1 <> '#39'999999'#39' then substr(t.mg1,5,2)||'#39'.'#39'||' +
        'substr(t.mg1,3,2)||'#39#1075'. '#1087#1086' '#39' '
      '        else '#39'- '#1087#1086' '#39
      '        end ||'
      
        '       case when t.mg2 <> '#39'999999'#39' then substr(t.mg2,5,2)||'#39'.'#39'||' +
        'substr(t.mg2,3,2)||'#39#1075'.'#39
      '        else '#39'-'#39
      '        end, null)'
      ' as house_mg,'
      ' case when t.obj_level=3 and t.mg2 = '#39'999999'#39' then 71'
      '         when t.obj_level=3 and t.mg2<>'#39'999999'#39' then 72'
      '     else -1 end as exist1,'
      ' t.trest, t.reu,'
      '       t.kul, t.nd, upper(ltrim(t.nd, '#39'0'#39')) as nd1, t.obj_level,'
      '       upper(p.name) as street,'
      '       upper(s.name) as name_tr,'
      '       s.bank_cd,'
      '       t.fk_house'
      '  from scott.tree_objects t,'
      '        scott.t_org s,'
      
        '       (select distinct trest, name_tr from scott.s_reu_trest) v' +
        ','
      '       scott.spul p'
      ' where t.reu = s.reu(+)'
      '   and t.trest = v.trest(+)'
      '   and t.kul = p.id(+)'
      '   and t.fk_user=USERENV('#39'sessionid'#39')'
      
        '   and (t.obj_level<>3 or  t.obj_level=3 and :set_psch=1 and t.p' +
        'sch<>1 or :set_psch <> 1'
      '   )'
      ' order by t.obj_level,'
      '          decode(t.obj_level,'
      '                  0,'
      '                  '#39' '#1043#1086#1088#1086#1076#39','
      '                  1,'
      '                  v.name_tr,'
      '                  2,'
      '                   s.reu||'#39'-'#39'||s.name,'
      
        '                  p.name || '#39', '#39' || scott.utils.f_order(t.nd, 6)' +
        '), t.reu, p.name, t.nd, t.mg1')
    Options.AutoPrepare = True
    Constraints = <>
    Left = 32
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'set_psch'
        ParamType = ptInput
      end>
  end
  object Uni_spr_params: TUniQuery
    UpdatingTable = 'SCOTT.SPR_PAR_SES'
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      'select p.id, t.name as gr_name, p.name as parname, p.cdtp,case'
      '         when p.cdtp = 0 then'
      '          to_char(p.parn1)'
      '         when p.cdtp = 1 then'
      '          p.parvc1'
      '         when p.cdtp = 2 then'
      '          to_char(p.pardt1, '#39'DD.MM.YYYY'#39')'
      '         when p.cdtp = 3 then'
      '          decode(p.parn1, 0, '#39#1053#1077#1090#39', '#39#1044#1072#39')'
      '         when p.cdtp = 4 then'
      '          a.name'
      '         when p.cdtp = 5 then'
      '          case'
      '            when nvl(a.cnt, 0) = 0 then'
      '             null'
      '            else'
      '             '#39#1042#1099#1073#1088#1072#1085#1086':'#39' || to_char(a.cnt)'
      '          end'
      '         when p.cdtp = 6 then'
      '          b.name'
      '       end as val, p.parn1, p.parvc1, p.pardt1, p.rowid'
      '  from scott.spr_par_ses p'
      '  join scott.repxpar r'
      '    on p.id = r.fk_par'
      '  left join scott.spr_par_ses t'
      '    on p.parent_id = t.id'
      '   and p.fk_ses = t.fk_ses'
      '  join scott.reports s'
      '    on r.fk_rep = s.id'
      
        '  left join (select c.fk_par, max(c.name) as name, count(*) as c' +
        'nt'
      '               from scott.list_c c'
      '              where c.sel = 1'
      '                and c.fk_ses = USERENV('#39'sessionid'#39')'
      '              group by c.fk_par) a'
      '    on p.id = a.fk_par'
      '  left join (select c.fk_par, max(c.name) as name'
      '               from scott.list_c c'
      '              where c.fk_ses = USERENV('#39'sessionid'#39')'
      '              group by c.fk_par) b'
      '    on p.id = b.fk_par'
      ' where p.cdtp is not null'
      '   and p.fk_ses = USERENV('#39'sessionid'#39')'
      '   and s.cd = :cd_'
      ' order by p.npp')
    Constraints = <>
    Left = 32
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'cd_'
        ParamType = ptInput
      end>
  end
  object Uni_nabor_lsk: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      
        'select ltrim(t.kw,'#39'0'#39') as kw, n.*, n.rowid from scott.kart t, sc' +
        'ott.nabor n'
      'where t.lsk=n.lsk and n.usl=:usl and'
      'exists'
      '(select * from  scott.kart k'
      '  where k.lsk=n.lsk and k.house_id=:house_id)'
      'and nvl(n.koeff,0)=nvl(:koeff,0) and nvl(n.norm,0)=nvl(:norm,0)'
      'order by scott.utils.f_order(t.kw,7)')
    MasterFields = 'house_id;koeff;norm;usl'
    Constraints = <>
    Left = 40
    Top = 544
    ParamData = <
      item
        DataType = ftString
        Name = 'usl'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'house_id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'koeff'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'norm'
        ParamType = ptInput
      end>
  end
  object Uni_c_kart_pr: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      
        'select a.*, r.name as rel_name,a.k_fam||'#39' '#39'||substr(a.k_im,1,1)|' +
        '|'#39'.'#39'||substr(a.k_ot,1,1)||'#39'.'#39' as short_name'
      'from scott.a_kart_pr a, scott.relations r'
      'where a.lsk=:lsk and a.mg=:mg and a.relat_id=r.id'
      'and a.status<>4')
    MasterFields = 'lsk;mg'
    Constraints = <>
    Left = 40
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'lsk'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'mg'
        ParamType = ptInput
      end>
  end
  object Uni_detail: TUniQuery
    Connection = DataModule1.UniConnection1
    SQL.Strings = (
      
        '--'#1074#1090#1086#1088#1086#1081', ('#1074#1089#1087#1086#1084#1086#1075#1072#1090#1077#1083#1100#1085#1099#1081') '#1076#1072#1090#1072#1089#1077#1090' '#1076#1083#1103' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' ' +
        #1079#1072#1087#1088#1086#1089#1072
      ''
      'begin'
      '  scott.stat.rep_detail(:p_cd, :mg, :lsk,'
      '    :prep_refcursor);'
      'end;')
    MasterFields = 'lsk;mg'
    Constraints = <>
    Left = 40
    Top = 656
    ParamData = <
      item
        DataType = ftString
        Name = 'p_cd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'mg'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'lsk'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'prep_refcursor'
        Value = 'Object'
      end>
  end
  object DS_data: TDataSource
    DataSet = Uni_Data
    Left = 72
    Top = 32
  end
end
