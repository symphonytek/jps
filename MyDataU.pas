unit MyDataU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables,iniFiles, ActnList, MemDS, DBAccess, MyAccess, frxClass,
  frxDBSet, MyDacVcl, frxRich, System.Actions;

type TFeedata=record
    ac_no:integer;
    amt:real;
  end;

type
  TMyData = class(TDataModule)
    ItemMastS: TMyDataSource;
    DsgMastS: TMyDataSource;
    DepMastS: TMyDataSource;
    tbfeeDetail: TMyTable;
    tbfeeDetailAC_NO: TFloatField;
    tbfeeDetailAC_AMT: TCurrencyField;
    tbfeeDetailS: TMyDataSource;
    tbfee: TMyTable;
    tbfeeS: TMyDataSource;
    tbfeeMatrix: TMyTable;
    tbfeeMatrixS: TMyDataSource;
    tbfeeMatrixAC_NO: TFloatField;
    tbfeeMatrixFEE: TCurrencyField;
    tbfeeMR_DATE: TDateField;
    tbfeeNOTERM: TFloatField;
    tbfeeFEE_AMT: TCurrencyField;
    tbfeeCASH: TBooleanField;
    tbfeeCHQ_NO: TStringField;
    tbfeeLATE_FEE: TCurrencyField;
    tbfeeStudID: TFloatField;
    tbfeestudname: TStringField;
    tbfeesec: TStringField;
    tbfeetot_terms: TIntegerField;
    qryachead: TMyQuery;
    qryacheadAC_NAME: TStringField;
    qryacheadsum_amt: TCurrencyField;
    qryFee: TMyQuery;
    qryFeeAC_NO: TFloatField;
    qryFeeAC_NAME: TStringField;
    qryFeeAC_MODE: TStringField;
    tbAcMasterS: TMyDataSource;
    tbfeetot_amt: TCurrencyField;
    tbfeeDetailAC_NAME: TStringField;
    CLMast1S: TMyDataSource;
    tbfeematrix1: TMyTable;
    dsttable: TMyDataSource;
    dsTeacher: TMyDataSource;
    QrMark: TMyQuery;
    QrTerm: TMyQuery;
    QrTermTerm: TStringField;
    QrMarkStudID: TFloatField;
    QrMarkClCode: TStringField;
    QrMarkTerm: TStringField;
    QrMarkTotmark: TFloatField;
    QrMarkName: TStringField;
    QrStudMk: TMyQuery;
    QrStudMkStudID: TFloatField;
    QrStudMkName: TStringField;
    QrStudMkTerm: TStringField;
    QrStudMkMarkobt: TFloatField;
    QrStudMkSubjname: TStringField;
    QrStudMkSubjtot: TFloatField;
    QrStudMkClCode: TStringField;
    QrAbsent: TMyQuery;
    QrAbsentStudID: TFloatField;
    QrAbsentDate: TDateField;
    QrAbsentAbsent: TBooleanField;
    QrAbsentClCode: TStringField;
    QrAbsentName: TStringField;
    userds: TMyDataSource;
    tbfeestd: TFloatField;
    tbfeeclDesc: TStringField;
    tbfeeMatrixCODE: TSmallintField;
    tbfeematrix1AC_NO: TFloatField;
    tbfeematrix1FEE: TCurrencyField;
    dsBmast: TMyDataSource;
    dsBrMast: TMyDataSource;
    tbfeeDRAWN_ON: TSmallintField;
    tbfeeCHQ_AMT: TCurrencyField;
    tbfeeBranch: TSmallintField;
    tbfeebdesc: TStringField;
    tbfeebrdesc: TStringField;
    tbfeeBillNo: TFloatField;
    qryIncme: TMyQuery;
    qryBank: TMyQuery;
    dsfeematrix1: TMyDataSource;
    tbfeematrix1AcDesc: TStringField;
    qryPayroll: TMyQuery;
    qryYrly: TMyQuery;
    qryYrlyName: TStringField;
    qryYrlyAccNo: TStringField;
    qryYrlyPFAcNo: TStringField;
    qryYrlyPayScale: TStringField;
    qryYrlyBasic: TCurrencyField;
    qryYrlyDA: TCurrencyField;
    qryYrlyHRA: TFloatField;
    qryYrlygross: TCurrencyField;
    qryYrlyPF: TCurrencyField;
    qryYrlyNetAmt: TCurrencyField;
    TcData: TMyTable;
    TcDataS: TMyDataSource;
    TcDataSlNo: TFloatField;
    TcDataDtLeft: TDateField;
    TcDataCharacter: TStringField;
    TcDataYrFrom: TStringField;
    TcDataYrTo: TStringField;
    TcDataTcDate: TDateField;
    TcDataPromotion: TStringField;
    TcDataOinfo: TMemoField;
    birth: TMyTable;
    birthS: TMyDataSource;
    birthSlNo: TFloatField;
    birthAdmNo: TFloatField;
    birthComment: TMemoField;
    birthsname: TStringField;
    birthsfName: TStringField;
    birthsDOB: TDateField;
    qryCllist: TMyQuery;
    QrByBus: TMyQuery;
    qryBankCHQ_NO: TStringField;
    qryBankDesc: TStringField;
    qryBankDesc_1: TStringField;
    qryBankCHQ_AMT: TCurrencyField;
    QryFeeColl: TMyQuery;
    QryFeeColl1: TMyQuery;
    QryDefaulter: TMyQuery;
    QryFreeship: TMyQuery;
    Qrytotalstud: TMyQuery;
    Qrhouse: TMyQuery;
    QrFee: TMyQuery;
    QrFeeMR_NO: TFloatField;
    QrFeeClCode: TSmallintField;
    QrFeeSection: TStringField;
    qrStudHist: TMyQuery;
    qrStudHistTamt: TCurrencyField;
    tbfeeTERM: TSmallintField;
    qrStudHistNOTERM: TFloatField;
    qrStudHistTERM: TSmallintField;
    qrStudHistMR_DATE: TDateField;
    DsStud_Det: TMyDataSource;
    QrTc: TMyQuery;
    QrTcAdmNo: TFloatField;
    QrTcTcDate: TDateField;
    QrTcDtLeft: TDateField;
    QrTcClCode: TSmallintField;
    QrTcName: TStringField;
    QrTcSection: TStringField;
    QrTcRollNo: TFloatField;
    QrTotAdm: TMyQuery;
    QrTotAdmStudID: TFloatField;
    QrTotAdmName: TStringField;
    QrTotAdmClCode: TSmallintField;
    QrTotAdmSection: TStringField;
    QrTotAdmDOB: TDateField;
    QrTotAdmFname: TStringField;
    qryItem: TMyQuery;
    qryMiscList: TMyQuery;
    qryClrep: TMyQuery;
    qryFeeacc: TMyQuery;
    dsSubMast: TMyDataSource;
    dsSubDet: TMyDataSource;
    dsClassDet: TMyDataSource;
    dsqry: TMyDataSource;
    qryclstud: TMyQuery;
    qryclstudStudID: TFloatField;
    qryclstudName: TStringField;
    qryclstudClCode: TSmallintField;
    qryclstudRollNo: TFloatField;
    qryclstudclCaption: TStringField;
    qryclstudDesc: TStringField;
    dsqrytabul: TMyDataSource;
    qtab: TMyQuery;
    qtabstudID: TFloatField;
    qtabName: TStringField;
    qtabClCode: TSmallintField;
    qtabSrlno: TFloatField;
    qtabMobt: TSmallintField;
    qtabClcaption: TStringField;
    qtabsubdesc: TStringField;
    qtabTotalMarks: TSmallintField;
    qtabpassmarks: TSmallintField;
    qtabtmarks: TFloatField;
    qryLkUp: TMyQuery;
    qryLkUpRemark: TMemoField;
    qryLkUpDesc: TStringField;
    qryLkUpclcode: TSmallintField;
    qryLkUpUpGrdYr: TStringField;
    qryLkUpD: TMyDataSource;
    dsSubDet1: TMyDataSource;
    TbStud_Det: TMyTable;
    TbStud_DetName: TStringField;
    TbStud_DetClCode: TSmallintField;
    TbStud_DetDet: TBooleanField;
    TbStud_DetClDesc: TStringField;
    Query1: TMyQuery;
    QrytotalstudStudID: TFloatField;
    QrytotalstudName: TStringField;
    QrytotalstudClCaption: TStringField;
    QrytotalstudSection: TStringField;
    QrytotalstudFname: TStringField;
    QrytotalstudDOB: TDateField;
    QrytotalstudDOA: TDateField;
    dsClassDet1: TMyDataSource;
    dsTeacher1: TMyDataSource;
    dsttable1: TMyDataSource;
    dsttable2: TMyDataSource;
    dsTabsent: TMyDataSource;
    tbfeeAdmNo: TStringField;
    ActionList1: TActionList;
    dsIns: TAction;
    dsSav: TAction;
    dummyT: TMyTable;
    AutoIncField1: TAutoIncField;
    StringField2: TStringField;
    CurrencyField1: TCurrencyField;
    StfApplnT: TMyTable;
    StfApplnTAppln_No: TIntegerField;
    StfApplnTJob_1: TStringField;
    StfApplnTName_1: TStringField;
    StfApplnTDOB: TDateField;
    StfApplnTAddr_1: TMemoField;
    StfApplnTTel_No_1: TStringField;
    StfApplnTPOB: TStringField;
    StfApplnTNationality: TStringField;
    StfApplnTMar_Stat: TStringField;
    StfApplnTChild_No: TSmallintField;
    StfApplnTName_2: TStringField;
    StfApplnTOccupation: TStringField;
    StfApplnTAddr_2: TMemoField;
    StfApplnTTel_No_2: TStringField;
    StfApplnTPhoto: TGraphicField;
    StfApplnTScholarship: TMemoField;
    StfApplnTResearch: TMemoField;
    StfApplnTTot_Ex: TFloatField;
    StfApplnTTeach_Ex: TFloatField;
    StfApplnTAdmin_Ex: TFloatField;
    StfApplnTOther_Ex: TFloatField;
    StfApplnTCurr_Orgn: TMemoField;
    StfApplnTCurr_Post: TStringField;
    StfApplnTDOJ: TDateField;
    StfApplnTPost_Place: TStringField;
    StfApplnTTot_Pay: TCurrencyField;
    StfApplnTBasic: TCurrencyField;
    StfApplnTAllowances: TCurrencyField;
    StfApplnTOthers: TCurrencyField;
    StfApplnTBond_: TStringField;
    StfApplnTBond_Det: TMemoField;
    StfApplnTTime_to_Join: TFloatField;
    StfApplnTIllness: TStringField;
    StfApplnTIll_Det: TMemoField;
    StfApplnTLaw_Case: TStringField;
    StfApplnTCase_Det: TMemoField;
    StfApplnTStatement: TMemoField;
    StfApplnTInterests: TMemoField;
    StfApplnTAppln_Date: TDateField;
    StfApplnD: TMyDataSource;
    AcdT: TMyTable;
    AcdTSl_No: TSmallintField;
    AcdTFlag: TStringField;
    AcdTQualfn: TStringField;
    AcdTSubj: TStringField;
    AcdTInstitute: TStringField;
    AcdTMarks: TFloatField;
    AcdTDiv: TStringField;
    AcdD: TMyDataSource;
    ProT: TMyTable;
    ProTAppln_No: TIntegerField;
    ProTSl_No: TSmallintField;
    ProTFlag: TStringField;
    ProTQualfn: TStringField;
    ProTSubj: TStringField;
    ProTInstitute: TStringField;
    ProTYear: TDateField;
    ProTMarks: TFloatField;
    ProTDiv: TStringField;
    ProD: TMyDataSource;
    BooksT: TMyTable;
    BooksTAppl_No: TIntegerField;
    BooksTSl_No: TSmallintField;
    BooksTTitle: TStringField;
    BooksTAuthors: TStringField;
    dsBooks: TMyDataSource;
    RefsD: TMyDataSource;
    RefsT: TMyTable;
    RefsTAppl_No: TIntegerField;
    RefsTName: TStringField;
    RefsTOccupation: TStringField;
    RefsTAddr: TStringField;
    RefsTTel_No: TStringField;
    RefsTSlNo: TSmallintField;
    Lang1T: TMyTable;
    Lang1TAppln_No: TIntegerField;
    Lang1TSl_No: TSmallintField;
    Lang1TTb_Flag: TStringField;
    Lang1TLanguage: TStringField;
    Lang1TRead: TStringField;
    Lang1TWrite: TStringField;
    Lang1TSpeak: TStringField;
    Lang1D: TMyDataSource;
    Lang2D: TMyDataSource;
    Lang2T: TMyTable;
    Lang2TAppln_No: TIntegerField;
    Lang2TSl_No: TSmallintField;
    Lang2TTb_Flag: TStringField;
    Lang2TLanguage: TStringField;
    Lang2TRead: TStringField;
    Lang2TWrite: TStringField;
    Lang2TSpeak: TStringField;
    WorkExT: TMyTable;
    WorkExTAppln_No: TIntegerField;
    WorkExTSl_No: TSmallintField;
    WorkExTInstitute: TStringField;
    WorkExTFrom: TDateField;
    WorkExTTo: TDateField;
    WorkExTPost: TStringField;
    WorkExTSubj_Cls: TStringField;
    WorkExD: TMyDataSource;
    SemCorD: TMyDataSource;
    SemCorT: TMyTable;
    SemCorTAppln_No: TIntegerField;
    SemCorTSl_No: TSmallintField;
    SemCorTSeminar: TStringField;
    SemCorTDuration: TFloatField;
    SemCorTDates: TDateField;
    SemCorTDesc: TStringField;
    RdBtnValD: TMyDataSource;
    RdBtnValT: TMyTable;
    RdBtnValTFieldName: TStringField;
    StfApplnTPath: TStringField;
    TbStud_DetAdmNo: TStringField;
    qryLkUpAdmNo: TStringField;
    TcDataStName: TStringField;
    TcDataAdmNo: TStringField;
    TcDataSname: TStringField;
    TcDataSfName: TStringField;
    TcDataSDoB: TDateField;
    TcDataSDoA: TDateField;
    TcDatasClass: TStringField;
    TcDatasSchool: TStringField;
    myconn: TMyConnection;
    tbClmast: TMyTable;
    tbClmastS: TMyDataSource;
    tbClmastCLCODE: TSmallintField;
    tbClmastDESCR: TStringField;
    ClMastS: TMyDataSource;
    ClMast: TMyTable;
    catgrmastS: TMyDataSource;
    catgrmast: TMyTable;
    studmastS: TMyDataSource;
    studmast: TMyTable;
    studmastSTUDID: TFloatField;
    studmastADMNO: TStringField;
    studmastNAME: TStringField;
    studmastCLCODE: TSmallintField;
    studmastROLLNO: TFloatField;
    studmastSECTION: TStringField;
    studmastDOB: TDateField;
    studmastSEX: TStringField;
    studmastGNAME: TStringField;
    studmastFNAME: TStringField;
    studmastMNAME: TStringField;
    studmastLADDR: TMemoField;
    studmastPADDR: TMemoField;
    studmastCATCODE: TFloatField;
    studmastDOA: TDateField;
    studmastAGE: TStringField;
    studmastNOTERMS: TFloatField;
    studmastPHONE: TStringField;
    studmastEML: TStringField;
    studmastM_PHONE: TStringField;
    studmastRELIGION: TStringField;
    studmastCASTE: TStringField;
    studmastF_OCCP: TStringField;
    studmastF_QUAL: TStringField;
    studmastM_QUAL: TStringField;
    studmastM_OCCP: TStringField;
    studmastSCHLAST: TStringField;
    studmastBLOODGROUP: TStringField;
    studmastHOUSE: TStringField;
    studmastMTOUNGE: TStringField;
    studmastBYBUS: TBooleanField;
    studmastREMARK: TMemoField;
    studmastUPGRDYR: TStringField;
    studmastADM_CL: TSmallintField;
    studmastPATH: TStringField;
    studmastAmd_cl_desc: TStringField;
    studmastcl_caption: TStringField;
    studmastcatDesc: TStringField;
    studmaststMfee: TCurrencyField;
    studmaststClDesc: TStringField;
    studmastcage: TStringField;
    studmastdbfilterstr: TStringField;
    studmastG_OCCP: TStringField;
    studmastG_QUAL: TStringField;
    studmastGREL: TIntegerField;
    studmastGCOMP: TIntegerField;
    studmastCMP_PNO: TStringField;
    studmastCMP_DEPT: TStringField;
    studmastRelDescr: TStringField;
    studmastcomp: TStringField;
    catgrmastCATCODE: TSmallintField;
    catgrmastDESCR: TStringField;
    ClMastCLCODE: TSmallintField;
    ClMastCLCAPTION: TStringField;
    ClMastDESCR: TStringField;
    ClMastMFEE: TFloatField;
    ClMastUPCLASS: TSmallintField;
    ClMastADFEE: TFloatField;
    tmpClmastS: TMyDataSource;
    tmpClmast: TMyTable;
    tmpClmastclcode: TWordField;
    ClMast1: TMyTable;
    ClMast1CLCODE: TSmallintField;
    ClMast1CLCAPTION: TStringField;
    ClMast1DESCR: TStringField;
    ClMast1MFEE: TFloatField;
    ClMast1UPCLASS: TSmallintField;
    ClMast1ADFEE: TFloatField;
    ClMast1CLDESC: TStringField;
    tbBrmast: TMyTable;
    tbBmast: TMyTable;
    tbBmastBCODE: TSmallintField;
    tbBmastDESCR: TStringField;
    tbBrmastBCODE: TSmallintField;
    tbBrmastDESCR: TStringField;
    dsgmast: TMyTable;
    dsgmastDCODE: TFloatField;
    dsgmastDESCR: TStringField;
    ItemMast: TMyTable;
    ItemMastICODE: TLargeintField;
    ItemMastIDESC: TStringField;
    ItemMastCHARGE: TFloatField;
    DepMast: TMyTable;
    DepMastDCODE: TFloatField;
    DepMastDESCR: TStringField;
    tbttable: TMyTable;
    tbttablePERIOD: TSmallintField;
    tbttableDAY: TSmallintField;
    tbttableCCODE: TSmallintField;
    tbttableTEACHER: TSmallintField;
    tbttableSID: TSmallintField;
    tbTeacher: TMyTable;
    tbTeacherTID: TFloatField;
    tbTeacherDESCR: TStringField;
    tbTeacherSUB1: TStringField;
    tbTeacherSUB2: TStringField;
    tbTeacherABS: TStringField;
    tbTeacherABNAME: TStringField;
    tbSubMast: TMyTable;
    tbSubMastSID: TSmallintField;
    tbSubMastCID: TSmallintField;
    tbSubMastDESCR: TStringField;
    tbSubMastTOTALMARKS: TSmallintField;
    tbSubMastPASSMARKS: TSmallintField;
    tbttabletchname: TStringField;
    tbttablesname: TStringField;
    tbttabledname: TStringField;
    tbttablesubdesc: TStringField;
    tbttablecldesc: TStringField;
    tbttabletchabname: TStringField;
    tbSubdet: TMyTable;
    tbSubdetTID: TSmallintField;
    tbSubdetSID: TSmallintField;
    tbSubdetSLNO: TIntegerField;
    tbSubdetsubdesc: TStringField;
    tbClassDet: TMyTable;
    tbClassDetSLNO: TSmallintField;
    tbClassDetCID: TSmallintField;
    tbClassDetcldesc: TStringField;
    tbTeacher1: TMyTable;
    tbTeacher1TID: TFloatField;
    tbTeacher1DESCR: TStringField;
    tbTeacher1SUB1: TStringField;
    tbTeacher1SUB2: TStringField;
    tbTeacher1ABS: TStringField;
    tbTeacher1ABNAME: TStringField;
    tbClassDet1: TMyTable;
    tbClassDet1SLNO: TSmallintField;
    tbClassDet1CID: TSmallintField;
    tbSubDet1: TMyTable;
    tbSubDet1TID: TSmallintField;
    tbSubDet1SID: TSmallintField;
    tbSubDet1SLNO: TIntegerField;
    tbSubDet1subdesc: TStringField;
    usertb1: TMyTable;
    usertb1UID: TStringField;
    usertb1UNAME: TStringField;
    usertb1PASSWD: TStringField;
    usertb1STAT: TFloatField;
    usertb1UNO: TIntegerField;
    tbttable1: TMyTable;
    tbttable1PERIOD: TSmallintField;
    tbttable1DAY: TSmallintField;
    tbttable1CCODE: TSmallintField;
    tbttable1TEACHER: TSmallintField;
    tbttable1SID: TSmallintField;
    tbttable1tchname: TStringField;
    tbttable1subdesc: TStringField;
    tbttable2: TMyTable;
    tbttable2PERIOD: TSmallintField;
    tbttable2DAY: TSmallintField;
    tbttable2CCODE: TSmallintField;
    tbttable2TEACHER: TSmallintField;
    tbttable2SID: TSmallintField;
    tbttable2tchname: TStringField;
    tbttable2subdesc: TStringField;
    tbttable2cldesc: TStringField;
    tbTabsent: TMyTable;
    tbTabsentSLNO: TLargeintField;
    tbTabsentDTE: TDateField;
    tbTabsentTID: TSmallintField;
    tbTabsenttchname: TStringField;
    tbAcMaster: TMyTable;
    tbAcMasterAC_NO: TFloatField;
    tbAcMasterAC_NAME: TStringField;
    tbAcMasterAC_MODE: TStringField;
    tbAcMasterAC_MANDATORY: TBooleanField;
    tbAcMasterAC_CODE: TStringField;
    studmastPHOTO: TBlobField;
    tbfeeAdmn: TStringField;
    qryfeehdws: TMyQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField3: TStringField;
    qryfeehdwise: TMyQuery;
    qryfeehdwisedescr: TStringField;
    qryfeehdwisesection: TStringField;
    qryfeehdwiseac_no: TFloatField;
    qryfeehdwiseadmno: TStringField;
    qryfeehdwisename: TStringField;
    tbfeeDetailAC_AMTPAID: TFloatField;
    qryfeehdwiseac_amtpaid: TFloatField;
    tbfeeDetailMR_NO: TStringField;
    tbfeeMR_NO: TStringField;
    qryfeehdwisemr_no: TStringField;
    AcdTYEAR: TIntegerField;
    AcdTAPPLN_NO: TLargeintField;
    qrStudHistMR_NO: TStringField;
    mysp_gettmpno: TMyStoredProc;
    mysp_setmrno: TMyStoredProc;
    spdefaulter: TMyStoredProc;
    spdefaulterS: TMyDataSource;
    spdefaulteradmno: TStringField;
    spdefaultername: TStringField;
    spdefaulternoterms: TFloatField;
    spdefaulterdiff: TFloatField;
    spdefaulterclcaption: TStringField;
    spdefaulterac_name: TStringField;
    spdefaulterfee: TFloatField;
    spdefaulteramt: TFloatField;
    birthIssuedte: TDateField;
    birthLastdte: TDateField;
    birthSDOA: TDateField;
    frxDBbirth: TfrxDBDataset;
    frxmyrepo: TfrxReport;
    MyConnectDialog1: TMyConnectDialog;
    qryCllistClCode: TWordField;
    qryCllistSection: TStringField;
    qryCllistAdmNo: TStringField;
    qryCllistName: TStringField;
    qryCllistRollNo: TFloatField;
    qryCllistFname: TStringField;
    qryCllistDOB: TDateField;
    qryCllistPhone: TStringField;
    qryCllistSEX: TStringField;
    dsFeeProf: TMyDataSource;
    tbFeeProf: TMyTable;
    tbFeeProfcode: TSmallintField;
    tbFeeProfdescr: TStringField;
    dsFeeProfDet: TMyDataSource;
    fee_prof_det: TMyTable;
    fee_prof_detfee_prof_code: TSmallintField;
    fee_prof_detclcode: TSmallintField;
    fee_prof_detclCaption: TStringField;
    studmastFEE_PROF_CODE: TSmallintField;
    studmastFEE_PROF_DESCR: TStringField;
    tbfeeFEE_PROF_CODE: TSmallintField;
    tbfeematrix1FEE_PROF_CODE: TSmallintField;
    tbAcMasterAC_DEF: TBooleanField;
    spdefaulterROLLNO: TFloatField;
    spdefaulterSECTION: TStringField;
    catgrmastNOPAY: TBooleanField;
    qryfeeheadsall: TMyQuery;
    qryfeeheadsallpaiddate: TDateField;
    qryfeeheadsallac_name: TStringField;
    qryfeeheadsallac_amt: TCurrencyField;
    qryfeeheadsallmr_no: TStringField;
    qryfeeheadspl: TMyQuery;
    DateField1: TDateField;
    StringField4: TStringField;
    CurrencyField2: TCurrencyField;
    qryfeeheadsplmr_no: TStringField;
    qryfeeheadgnrl: TMyQuery;
    DateField2: TDateField;
    StringField5: TStringField;
    CurrencyField3: TCurrencyField;
    qryfeeheadgnrlmr_no: TStringField;
    qryFeeFulldtl: TMyQuery;
    qryFeeFulldtlStudId: TFloatField;
    qryFeeFulldtlName: TStringField;
    qryFeeFulldtlclcode: TSmallintField;
    qryFeeFulldtlsection: TStringField;
    qryFeeFulldtlpaiddate: TDateField;
    qryFeeFulldtlac_name: TStringField;
    qryFeeFulldtlac_amt: TCurrencyField;
    qryFeeFulldtlStudent_Detail: TStringField;
    qryFeeFulldtlclcaption: TStringField;
    qryFeeFulldtlmr_no: TStringField;
    frxReport1: TfrxReport;
    frxDBqrycllist: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDBcastrepo: TfrxDBDataset;
    qryabsentee: TMyQuery;
    qryabsenteesheetslno: TFloatField;
    qryabsenteestudid: TFloatField;
    qryabsenteename: TStringField;
    qryabsenteeclass: TFloatField;
    qryabsenteesec: TStringField;
    qryabsenteeM_phone: TStringField;
    qryabsenteesh_date: TDateField;
    qrycastrepo: TMyQuery;
    qrycastrepoStudID: TFloatField;
    qrycastrepoName: TStringField;
    qrycastrepoclcode: TSmallintField;
    qrycastrepoCl_code: TSmallintField;
    qrycastrepoRollNo: TFloatField;
    qrycastrepoSection: TStringField;
    qrycastrepoDOB: TDateField;
    qrycastrepoSex: TStringField;
    qrycastrepoGName: TStringField;
    qrycastrepoFname: TStringField;
    qrycastrepoMname: TStringField;
    qrycastrepoLAddr: TMemoField;
    qrycastrepoPAddr: TMemoField;
    qrycastrepoCatCode: TFloatField;
    qrycastrepoDOA: TDateField;
    qrycastrepoAge: TStringField;
    qrycastrepoPhoto: TGraphicField;
    qrycastrepoNOTERMS: TFloatField;
    qrycastrepoPhone: TStringField;
    qrycastrepoEml: TStringField;
    qrycastrepoM_Phone: TStringField;
    qrycastrepoReligion: TStringField;
    qrycastrepoCast: TStringField;
    qrycastrepoNofSB: TStringField;
    qrycastrepoF_occp: TStringField;
    qrycastrepoF_qual: TStringField;
    qrycastrepoM_qual: TStringField;
    qrycastrepoM_occp: TStringField;
    qrycastrepoSchLast: TStringField;
    qrycastrepoBloodGroup: TStringField;
    qrycastrepoHouse: TStringField;
    qrycastrepoMtounge: TStringField;
    qrycastrepoRemark: TMemoField;
    qrycastrepoByBus: TBooleanField;
    qrycastrepoUpGrdYr: TStringField;
    qrycastrepoStud_status: TStringField;
    qrycastrepoclcode_1: TSmallintField;
    qrycastrepoClcaption: TStringField;
    qrycastrepoDesc: TStringField;
    qrycastrepoMfee: TCurrencyField;
    qrycastrepoUPClass: TSmallintField;
    qrycastrepoAdfee: TCurrencyField;
    qryCurrentStud: TMyQuery;
    qryCurrentStudStudID: TFloatField;
    qryCurrentStudName: TStringField;
    qryCurrentStudClCode: TSmallintField;
    qryCurrentStudCl_code: TSmallintField;
    qryCurrentStudRollNo: TFloatField;
    qryCurrentStudSection: TStringField;
    qryCurrentStudDOB: TDateField;
    qryCurrentStudSex: TStringField;
    qryCurrentStudGName: TStringField;
    qryCurrentStudFname: TStringField;
    qryCurrentStudMname: TStringField;
    qryCurrentStudLAddr: TMemoField;
    qryCurrentStudPAddr: TMemoField;
    qryCurrentStudCatCode: TFloatField;
    qryCurrentStudDOA: TDateField;
    qryCurrentStudAge: TStringField;
    qryCurrentStudPhoto: TGraphicField;
    qryCurrentStudNOTERMS: TFloatField;
    qryCurrentStudPhone: TStringField;
    qryCurrentStudEml: TStringField;
    qryCurrentStudM_Phone: TStringField;
    qryCurrentStudReligion: TStringField;
    qryCurrentStudCast: TStringField;
    qryCurrentStudNofSB: TStringField;
    qryCurrentStudF_occp: TStringField;
    qryCurrentStudF_qual: TStringField;
    qryCurrentStudM_qual: TStringField;
    qryCurrentStudM_occp: TStringField;
    qryCurrentStudSchLast: TStringField;
    qryCurrentStudBloodGroup: TStringField;
    qryCurrentStudHouse: TStringField;
    qryCurrentStudMtounge: TStringField;
    qryCurrentStudRemark: TMemoField;
    qryCurrentStudByBus: TBooleanField;
    qryCurrentStudUpGrdYr: TStringField;
    qryCurrentStudrage: TIntegerField;
    qryCurrentStudcage: TStringField;
    qryCurrentStudstClDesc: TStringField;
    studmastNOFSB: TStringField;
    qryCurrentStudcatdesc: TStringField;
    tbStud_docs: TMyTable;
    dsStud_docs: TMyDataSource;
    tbStud_docsstudid: TFloatField;
    tbStud_docsdoc_code: TLargeintField;
    tbStud_docsscan_copy: TBlobField;
    tbDoc_type: TMyTable;
    dsDoc_type: TMyDataSource;
    tbDoc_typedoc_code: TLargeintField;
    tbDoc_typedoc_descr: TStringField;
    tbStud_docsdoc_descr: TStringField;

    dsRelmast: TMyDataSource;
    tbRelmast: TMyTable;
    dsComp: TMyDataSource;
    tbComp: TMyTable;
    tbRelmastrelcode: TIntegerField;
    tbRelmastrelinfo: TStringField;
    tbCompcmp_id: TIntegerField;
    tbCompcmpname: TStringField;
    sp_cllist: TMyStoredProc;
    ds_spcllist: TMyDataSource;
    adm_studmast: TMyTable;
    adm_studmastSTUDID: TFloatField;
    adm_studmastADMNO: TStringField;
    adm_studmastNAME: TStringField;
    adm_studmastCLCODE: TSmallintField;
    adm_studmastROLLNO: TFloatField;
    adm_studmastSECTION: TStringField;
    adm_studmastDOB: TDateField;
    adm_studmastSEX: TStringField;
    adm_studmastGNAME: TStringField;
    adm_studmastFNAME: TStringField;
    adm_studmastMNAME: TStringField;
    adm_studmastLADDR: TMemoField;
    adm_studmastPADDR: TMemoField;
    adm_studmastCATCODE: TFloatField;
    adm_studmastDOA: TDateField;
    adm_studmastAGE: TStringField;
    adm_studmastNOTERMS: TFloatField;
    adm_studmastPHONE: TStringField;
    adm_studmastEML: TStringField;
    adm_studmastM_PHONE: TStringField;
    adm_studmastRELIGION: TStringField;
    adm_studmastCASTE: TStringField;
    adm_studmastF_OCCP: TStringField;
    adm_studmastF_QUAL: TStringField;
    adm_studmastM_QUAL: TStringField;
    adm_studmastM_OCCP: TStringField;
    adm_studmastSCHLAST: TStringField;
    adm_studmastBLOODGROUP: TStringField;
    adm_studmastFEE_PROF_CODE: TSmallintField;
    adm_studmastFEE_PROF_DESCR: TStringField;
    adm_studmastHOUSE: TStringField;
    adm_studmastMTOUNGE: TStringField;
    adm_studmastBYBUS: TBooleanField;
    adm_studmastREMARK: TMemoField;
    adm_studmastUPGRDYR: TStringField;
    adm_studmastADM_CL: TSmallintField;
    adm_studmastPATH: TStringField;
    adm_studmastAmd_cl_desc: TStringField;
    adm_studmastcl_caption: TStringField;
    adm_studmastcatDesc: TStringField;
    adm_studmaststMfee: TCurrencyField;
    adm_studmaststClDesc: TStringField;
    adm_studmastcage: TStringField;
    adm_studmastdbfilterstr: TStringField;
    adm_studmastG_OCCP: TStringField;
    adm_studmastG_QUAL: TStringField;
    adm_studmastGREL: TIntegerField;
    adm_studmastGCOMP: TIntegerField;
    adm_studmastCMP_PNO: TStringField;
    adm_studmastCMP_DEPT: TStringField;
    adm_studmastRelDescr: TStringField;
    adm_studmastcomp: TStringField;
    tbAdmstud_docs: TMyTable;
    tbAdmstud_docsStudid: TFloatField;
    tbAdmstud_docsdoc_code: TLargeintField;
    tbAdmstud_docsScan_copy: TBlobField;
    tbAdmstud_docsdoc_descr: TStringField;
    dsAdmstud_docs: TMyDataSource;
    qryCustom: TMyQuery;
    tbRoles: TMyTable;
    tbRolesrole_id: TLargeintField;
    tbRolesrole: TStringField;
    usertb1role_id: TIntegerField;
    usertb1role_descr: TStringField;
    adm_studmastBSDT: TStringField;
    adm_studmastLIBFINE: TFloatField;
    adm_studmastTRANSMODE: TStringField;
    adm_studmastFSERVADDR: TMemoField;
    adm_studmastMSERVADDR: TMemoField;
    adm_studmastGSERVADDR: TMemoField;
    adm_studmasthandicap: TIntegerField;
    adm_studmastidmark: TStringField;
    adm_studmastdisease: TStringField;
    studmastBSDT: TStringField;
    studmastLIBFINE: TFloatField;
    studmastTRANSMODE: TStringField;
    studmastFSERVADDR: TMemoField;
    studmastMSERVADDR: TMemoField;
    studmastGSERVADDR: TMemoField;
    studmasthandicap: TIntegerField;
    studmastidmark: TStringField;
    studmastdisease: TStringField;
    tbHandicap: TMyTable;
    tbHandicapid: TIntegerField;
    tbHandicapdescr: TStringField;
    adm_studmasthandicapDescr: TStringField;
    adm_studmastrejected: TBooleanField;
    adm_studmastrej_reason: TStringField;
    dsHandicap: TMyDataSource;
    studmasthandicapDescr: TStringField;
    dsAdmIns: TAction;
    dsAdmSav: TAction;
    dsLoc: TMyDataSource;
    tbLoc: TMyTable;
    tbLocloc_id: TIntegerField;
    tbLoclocation: TStringField;
    tbLocdist: TSmallintField;
    adm_studmastloc_id: TIntegerField;
    adm_studmastloc_descr: TStringField;
    adm_studmastloc_dist: TFloatField;
    studmasttc_status: TIntegerField;
    dsTcstatus: TMyDataSource;
    tcstatus: TMyTable;
    tcstatusid: TIntegerField;
    tcstatustcstatus: TStringField;
    studmasttcStatDescr: TStringField;
    ClMastage: TSmallintField;
    ClMast1age: TSmallintField;
    dsTrans: TMyDataSource;
    tbTrans: TMyTable;
    tbTranstransno: TIntegerField;
    tbTransItemCode: TIntegerField;
    tbTransAmount: TFloatField;
    tbTranstrDate: TDateField;
    dsItems: TMyDataSource;
    tbItems: TMyTable;
    tbItemsItemCode: TIntegerField;
    tbItemsDescr: TStringField;
    tbItemsRte: TFloatField;
    tbTransItemDesc: TStringField;
    tbTransItemRte: TCurrencyField;
    tbCompcmp_group: TStringField;
    adm_studmastXIS: TMyDataSource;
    adm_studmastXI: TMyTable;
    tbAdmstud_docsXI: TMyTable;
    dsAdmstud_docsXI: TMyDataSource;
    adm_studmastXISTUDID: TFloatField;
    adm_studmastXIADMNO: TStringField;
    adm_studmastXINAME: TStringField;
    adm_studmastXICLCODE: TWordField;
    adm_studmastXIROLLNO: TFloatField;
    adm_studmastXISECTION: TStringField;
    adm_studmastXIDOB: TDateField;
    adm_studmastXISEX: TStringField;
    adm_studmastXIGNAME: TStringField;
    adm_studmastXIFNAME: TStringField;
    adm_studmastXIMNAME: TStringField;
    adm_studmastXILADDR: TMemoField;
    adm_studmastXIPADDR: TMemoField;
    adm_studmastXICATCODE: TFloatField;
    adm_studmastXIDOA: TDateField;
    adm_studmastXIAGE: TStringField;
    adm_studmastXIPHOTO: TBlobField;
    adm_studmastXINOTERMS: TFloatField;
    adm_studmastXIPHONE: TStringField;
    adm_studmastXIEML: TStringField;
    adm_studmastXIM_PHONE: TStringField;
    adm_studmastXIRELIGION: TStringField;
    adm_studmastXICASTE: TStringField;
    adm_studmastXINOFSB: TStringField;
    adm_studmastXIF_OCCP: TStringField;
    adm_studmastXIF_QUAL: TStringField;
    adm_studmastXIM_QUAL: TStringField;
    adm_studmastXIM_OCCP: TStringField;
    adm_studmastXISCHLAST: TStringField;
    adm_studmastXIBLOODGROUP: TStringField;
    adm_studmastXIHOUSE: TStringField;
    adm_studmastXIMTOUNGE: TStringField;
    adm_studmastXIBYBUS: TBooleanField;
    adm_studmastXIREMARK: TMemoField;
    adm_studmastXIUPGRDYR: TStringField;
    adm_studmastXIADM_CL: TWordField;
    adm_studmastXIPATH: TStringField;
    adm_studmastXIBSDT: TStringField;
    adm_studmastXILIBFINE: TFloatField;
    adm_studmastXITRANSMODE: TStringField;
    adm_studmastXIG_OCCP: TStringField;
    adm_studmastXIG_QUAL: TStringField;
    adm_studmastXIFSERVADDR: TMemoField;
    adm_studmastXIMSERVADDR: TMemoField;
    adm_studmastXIGSERVADDR: TMemoField;
    adm_studmastXIFEE_PROF_CODE: TSmallintField;
    adm_studmastXIGREL: TIntegerField;
    adm_studmastXIGCOMP: TIntegerField;
    adm_studmastXICMP_PNO: TStringField;
    adm_studmastXICMP_DEPT: TStringField;
    adm_studmastXIhandicap: TIntegerField;
    adm_studmastXIidmark: TStringField;
    adm_studmastXIdisease: TStringField;
    adm_studmastXIrejected: TBooleanField;
    adm_studmastXIrej_reason: TStringField;
    adm_studmastXIloc_id: TIntegerField;
    tbAdmstud_docsXIstudid: TFloatField;
    tbAdmstud_docsXIdoc_code: TLargeintField;
    tbAdmstud_docsXIscan_copy: TBlobField;
    tbAdmstud_docsXIdoc_descr: TStringField;
    adm_studmastXIcatDesc: TStringField;
    adm_studmastXIcomp: TStringField;
    adm_studmastXIhandicapDescr: TStringField;
    adm_studmastXIcage: TStringField;
    adm_studmastXIRelDescr: TStringField;
    dsAdmInsXI: TAction;
    dsAdmSavXI: TAction;
    adm_studmastXIadm_subdescr: TStringField;
    tbAdmxi_subj: TMyTable;
    tbAdmxi_subjsubcode: TStringField;
    tbAdmxi_subjsubdescr: TStringField;
    tbAdmxi_subjoptsubj: TStringField;
    adm_studmastXIadm_subcode: TStringField;
    adm_studmastXIadm_optsubj: TStringField;
    dsAdmxi_subj: TMyDataSource;
    tbRepMast: TMyTable;
    dsRepMast: TMyDataSource;
    tbRepMastrepid: TIntegerField;
    tbRepMastrep_head: TStringField;
    tbRepMastrep_sql: TMemoField;
    dsAdhocSQL: TMyDataSource;
    qryAdHocSQL: TMyQuery;
    tbLocdist_range: TStringField;
    frxDBAdmStudXI: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;
    sp_age_filter: TMyStoredProc;
    adm_studmastuidno: TStringField;
    adm_studmastXIuidno: TStringField;
    adm_studmastXIboard: TStringField;
    studmastuidno: TStringField;
    qryChqSearch: TMyQuery;
    qryChqSearchNAME: TStringField;
    qryChqSearchFNAME: TStringField;
    qryChqSearchCLCAPTION: TStringField;
    qryChqSearchCHQ_NO: TStringField;
    qryChqSearchCHQ_AMT: TFloatField;
    qryChqSearchMR_NO: TStringField;
    qryChqSearchMR_DATE: TDateField;
    qryChqSearchadmno: TStringField;
    qryChqSearchNOTERM: TFloatField;
    qryChqSearchFEE_AMT: TFloatField;
    qryChqSearchS: TMyDataSource;
    qryChqSearchLastfee: TBooleanField;
    TcDatareason: TStringField;
    TcDataschboard: TStringField;
    TcDatafailed: TStringField;
    TcDatasubject: TStringField;
    TcDataprom: TStringField;
    TcDatapromo_for: TStringField;
    TcDatafee_upto: TStringField;
    TcDatawork_days: TIntegerField;
    TcDatapresent_days: TIntegerField;
    TcDataNCC: TStringField;
    TcDatagames: TStringField;
    TcDataconduct: TStringField;
    TcDatadoa: TDateField;
    TcDatadoi: TDateField;
    frxDBtcdata: TfrxDBDataset;
    TcDataTCNO: TIntegerField;
    tbAdm_final: TMyTable;
    dsAdm_final: TMyDataSource;
    tbAdm_finalstudid: TFloatField;
    tbAdm_finalstudname: TStringField;
    tbAdm_finalstudfname: TStringField;
    mysp_transfer: TMyStoredProc;
    TcDatasAdmno: TStringField;
    TcDatascaste: TStringField;
    TcDataclword: TStringField;
    TcDatac_feecat: TStringField;
    TcDatafeeprof: TStringField;
    TcDatadobinword: TStringField;
    qryTcdata: TMyQuery;
    qryTcdatasadmno: TStringField;
    qryTcdatasname: TStringField;
    qryTcdatasfname: TStringField;
    qryTcdatasdob: TDateField;
    qryTcdatasdoa: TDateField;
    qryTcdatasclass: TStringField;
    qryTcdatasaclass: TStringField;
    qryTcdatasschool: TStringField;
    qryTcdatascaste: TStringField;
    qryTcdataslno: TFloatField;
    qryTcdatatcno: TIntegerField;
    qryTcdatadtleft: TDateField;
    qryTcdatacharactr: TStringField;
    qryTcdatayrfrom: TStringField;
    qryTcdatayrto: TStringField;
    qryTcdatatcdate: TDateField;
    qryTcdatapromotion: TStringField;
    qryTcdataoinfo: TMemoField;
    qryTcdatareason: TStringField;
    qryTcdataschboard: TStringField;
    qryTcdatafailed: TStringField;
    qryTcdatasubject: TStringField;
    qryTcdataprom: TStringField;
    qryTcdatapromo_for: TStringField;
    qryTcdatafee_upto: TStringField;
    qryTcdatawork_days: TIntegerField;
    qryTcdatapresent_days: TIntegerField;
    qryTcdatancc: TStringField;
    qryTcdatagames: TStringField;
    qryTcdataconduct: TStringField;
    qryTcdatadoi: TDateField;
    qryTcdatafeeprof: TStringField;
    qryTcdataclword: TStringField;
    qryTcdatac_feecat: TStringField;
    qryTcdatadobinword: TStringField;
    qryTcdatadoa: TDateField;
    tbJps_fee: TMyTable;
    tbJps_feeyr: TWordField;
    tbJps_feecdep: TFloatField;
    tbJps_feeadep: TFloatField;
    qryFeeBank: TMyQuery;
    qryFeeBankDRAWN_ON: TSmallintField;
    qryFeeBankDESCR: TStringField;
    qryFeeBankCHQ_NO: TStringField;
    qryFeeBankCHQ_AMT: TFloatField;
    qryFeeBankids: TMemoField;
    frxDBqryFeeBank: TfrxDBDataset;
    TcDatamnthyr: TStringField;
    qryTcdatamnthyr: TStringField;
    qryTcdatasex: TStringField;
    TcDataappexam: TStringField;
    qryTcdataappexam: TStringField;
    qryCllistMNAME: TStringField;
    qryCllistCASTE: TStringField;
    qryCllistfee_type: TStringField;
    studmastNSO: TBooleanField;
    studmastM_PHONE1: TStringField;
    TcDatatcflag: TBooleanField;
    qryStudAttnd: TMyQuery;
    qryStudAttndADMNO: TStringField;
    qryStudAttndNAME: TStringField;
    qryStudAttndclass: TStringField;
    qryStudAttndsection: TStringField;
    qryStudAttndrollno: TFloatField;
    qryStudAttndS: TMyDataSource;
    qryStudAttndstudid: TLargeintField;
    fees_duedtS: TMyDataSource;
    fees_duedt: TMyTable;
    fees_duedtmnth: TWordField;
    fees_duedtfee_dt: TWordField;
    studmastnso_dt: TDateField;
    qryChqdet: TMyQuery;
    qryChqdetadmno: TStringField;
    qryChqdetname: TStringField;
    qryChqdetfee_amt: TFloatField;
    qryChqdetchq_amt: TFloatField;
    qryChqdetchq_no: TStringField;
    qryChqdetbank: TStringField;
    qryChqdetbranch: TStringField;
    dsAdm_finalxi: TMyDataSource;
    tbAdm_finalxi: TMyTable;
    tbAdm_finalxistudid: TFloatField;
    tbadm_finalxistudname: TStringField;
    tbadm_finalxistudfname: TStringField;
    mysp_transferxi: TMyStoredProc;
    frxDBAdmStud: TfrxDBDataset;
    frxDBstudmast: TfrxDBDataset;
    qryBoucneChqDet: TMyQuery;
    qryBoucneChqDetstudid: TFloatField;
    qryBoucneChqDetnoterm: TFloatField;
    qryBoucneChqDetfee_amt: TFloatField;
    qryBoucneChqDetdrawn_on: TSmallintField;
    qryBoucneChqDetchq_no: TStringField;
    qryBoucneChqDetCHQ_AMT: TFloatField;
    qryBoucneChqDetmr_no: TStringField;
    qryBoucneChqDetMR_DATE: TDateField;
    qryBoucneChqDetAC_CODE: TStringField;
    qryBoucneChqDetAC_NAME: TStringField;
    qryBoucneChqDetAC_AMTPAID: TFloatField;
    qryBoucneChqDetNAME: TStringField;
    qryBoucneChqDetbank: TStringField;
    qryBoucneChqDetbranch: TStringField;
    frxDBqryBoucneChqDet: TfrxDBDataset;
    qryBoucneChqDetclass: TStringField;
    qryBoucneChqDetSECTION: TStringField;
    qryChqSearchSECTION: TStringField;
    qryChqSearchbank: TStringField;
    qryChqSearchBRANCH: TSmallintField;
    tbfeeadhoc: TWordField;
    qrStudHistCHQ_NO: TStringField;
    qrStudHistbank: TStringField;
    qrStudHistbranch: TStringField;
    qrStudHistcanc: TStringField;
    qryChqSearchm_phone: TStringField;
    dsSmslog: TMyDataSource;
    smslog: TMyTable;
    smslogid: TIntegerField;
    smslogdtime: TDateTimeField;
    smslogmessage: TStringField;
    smslogreclist: TMemoField;
    smslognumsms: TIntegerField;
    adhocfee: TMyTable;
    dsAdhocfee: TMyDataSource;
    adhocfeeslno: TIntegerField;
    adhocfeestudid: TLargeintField;
    adhocfeeac_no: TIntegerField;
    adhocfeeamount: TFloatField;
    adhocfeedt: TDateField;
    adhocfeepaid: TBooleanField;
    adhocfeemr_no: TStringField;
    adhocfeestudname: TStringField;
    adhocfeeacname: TStringField;
    myExec: TMyCommand;
    frxDBtbfee: TfrxDBDataset;
    frxDBtbfeeDetailS: TfrxDBDataset;

    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tbfeeAfterInsert(DataSet: TDataSet);
    procedure tbfeeBeforePost(DataSet: TDataSet);
    procedure tbfeeCalcFields(DataSet: TDataSet);
    procedure tbfeeDetailAfterPost(DataSet: TDataSet);
    procedure tbMarksubdet_AfterPost(DataSet: TDataSet);
    procedure TbAbsenteesAfterInsert(DataSet: TDataSet);
    procedure tbttable_CalcFields(DataSet: TDataSet);
    procedure tbttable_TeacherChange(Sender: TField);
    procedure tbfeeBeforeDelete(DataSet: TDataSet);
    procedure tbfeeBeforeCancel(DataSet: TDataSet);
    procedure qryYrlyCalcFields(DataSet: TDataSet);
    procedure TcDataBeforePost(DataSet: TDataSet);
    procedure tbSubMast_BeforePost(DataSet: TDataSet);
    procedure tbSubMast_AfterInsert(DataSet: TDataSet);
    procedure tbttable1_CalcFields(DataSet: TDataSet);
    procedure tbTabsent_AfterInsert(DataSet: TDataSet);
    procedure dsInsExecute(Sender: TObject);
    procedure dsSavExecute(Sender: TObject);
    procedure tbfeeAfterEdit(DataSet: TDataSet);
    procedure TcDataAfterInsert(DataSet: TDataSet);
    procedure AcdTBeforePost(DataSet: TDataSet);
    procedure ProTBeforePost(DataSet: TDataSet);
    procedure Lang1TBeforePost(DataSet: TDataSet);
    procedure Lang2TBeforePost(DataSet: TDataSet);
    procedure StfApplnTAfterInsert(DataSet: TDataSet);
    procedure StfApplnTAfterEdit(DataSet: TDataSet);
    procedure StfApplnTBeforeCancel(DataSet: TDataSet);
    procedure StfApplnTBeforeDelete(DataSet: TDataSet);
    procedure studmastCalcFields(DataSet: TDataSet);
    procedure studmastAfterEdit(DataSet: TDataSet);
    procedure studmastAfterInsert(DataSet: TDataSet);
    procedure studmastBeforePost(DataSet: TDataSet);
    procedure studmastDOBValidate(Sender: TField);
    procedure tbTeacherCalcFields(DataSet: TDataSet);
    procedure tbfeeDetailAC_AMTValidate(Sender: TField);
    procedure qryCurrentStudCalcFields(DataSet: TDataSet);
    procedure adm_studmastCalcFields(DataSet: TDataSet);
    procedure adm_studmastAfterEdit(DataSet: TDataSet);
    procedure adm_studmastAfterInsert(DataSet: TDataSet);
    procedure adm_studmastBeforePost(DataSet: TDataSet);
    procedure dsAdmInsExecute(Sender: TObject);
    procedure dsAdmSavExecute(Sender: TObject);
    procedure adm_studmastXIAfterEdit(DataSet: TDataSet);
    procedure adm_studmastXIAfterInsert(DataSet: TDataSet);
    procedure adm_studmastXIBeforePost(DataSet: TDataSet);
    procedure adm_studmastXICalcFields(DataSet: TDataSet);
    procedure dsAdmInsXIExecute(Sender: TObject);
    procedure dsAdmSavXIExecute(Sender: TObject);
    procedure TcDataCalcFields(DataSet: TDataSet);
    procedure qryTcdataCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    actlstds,actlstdetds1,actlstdetds2,actlstdetds3,mstds,detds,actAdm_studmastds,actAdm_studmastdsXI:TDataSet;
   lastrecno: integer;
   mfile:TIniFile;
   late_feecode,lastbank,lastbranch:integer;
   lastchqamt,bal_fee:real;
   lastchqno:string;
   smsuid,smspass,smssender,apikey,debug:string;
   adhocfee_arr:Array of TFeeData;
  end;



const
dnm:array[1..7] of string=('Monday','Tuesday','Wednesday','Thrusday','Friday','Saturday','Sunday');
month:array[1..12] of string=('January','February','March',
                                    'April','May','June',
                                    'July','August','Septemeber',
                                    'October','November','December');
var
  MyData: TMyData;

  detdsIns:Boolean;
  lno,stid:integer;
  insert_flag:boolean;
  last_clcode:integer;

implementation

uses myunit, frmReplaceU, frmAttendenceU,myfuncu,dateutils;

{$R *.DFM}

procedure EnDisControls(tds:TDataSet;tac1,tac2:Taction);
begin
if tds.state in [dsInsert,dsEdit] then
begin
tac1.Enabled:=false;tac2.enabled:=true;
end
else
begin
tac1.Enabled:=True;tac2.enabled:=False;
end;
end;

procedure TMyData.adm_studmastAfterEdit(DataSet: TDataSet);
begin
 EnDisControls(actAdm_studmastds,dsadmIns,dsadmSav);
end;

procedure TMyData.adm_studmastAfterInsert(DataSet: TDataSet);
begin
stid:=mfile.ReadInteger('General','lastadmstid',1);
mydata.adm_StudMastStudID.Value:=stid;
mydata.adm_studmastCLCODE.Value:=last_clcode;
//Put default values
mydata.adm_studmastCATCODE.Value:=0;
mydata.adm_studmastFEE_PROF_CODE.value:=0;
mydata.adm_studmastRELIGION.Value:='Hindu';
 EnDisControls(adm_studmast,dsadmIns,dsadmSav);
end;

procedure TMyData.adm_studmastBeforePost(DataSet: TDataSet);
begin
if adm_studmast.state in [dsinsert] then
  begin
  last_clcode:=mydata.adm_studmastCLCODE.Value;
  mfile.WriteInteger('General','lastadmstid',stid+1);
  mydata.adm_StudMastNOTERMS.Value :=-1;
  end
end;

procedure TMyData.adm_studmastCalcFields(DataSet: TDataSet);
var
mdte:extended;
yr,mn,dy:word;
begin
if adm_StudMastDOB.value<date then
begin
mdte:=date-adm_StudMastDOB.value;
yr:=trunc(mdte/365);
mdte:=trunc(mdte) mod 365;
mn:=trunc(mdte/30);
mdte:=trunc(mdte) mod 30;
dy:=trunc(mdte);
if yr<100 then
adm_StudMastCage.value:=format('%d Yrs %d Mn %d Days',[yr,mn,dy]);
end;
end;

procedure TMyData.adm_studmastXIAfterEdit(DataSet: TDataSet);
begin
 EnDisControls(actAdm_studmastdsXI,dsadmInsXI,dsadmSavXI);
end;

procedure TMyData.adm_studmastXIAfterInsert(DataSet: TDataSet);
begin
stid:=mfile.ReadInteger('General','lastadmXIstid',1);
mydata.adm_StudMastXIStudID.Value:=stid;
//mydata.adm_studmastXICLCODE.Value:=last_clcode;
//Put default values
mydata.adm_studmastXICATCODE.Value:=0;
//mydata.adm_studmastFEE_PROF_CODE.value:=0;
mydata.adm_studmastXIRELIGION.Value:='Hindu';
 EnDisControls(adm_studmastXI,dsadmInsXI,dsadmSavXI);
end;

procedure TMyData.adm_studmastXIBeforePost(DataSet: TDataSet);
begin
if adm_studmastXI.state in [dsinsert] then
  begin
  //last_clcode:=mydata.adm_studmastCLCODE.Value;
  mfile.WriteInteger('General','lastadmXIstid',stid+1);
//  mydata.adm_StudMastNOTERMS.Value :=-1;
  end

end;

procedure TMyData.adm_studmastXICalcFields(DataSet: TDataSet);
var
mdte:extended;
yr,mn,dy:word;
begin
if adm_StudMastXIDOB.value<date then
begin
mdte:=date-adm_StudMastXIDOB.value;
yr:=trunc(mdte/365);
mdte:=trunc(mdte) mod 365;
mn:=trunc(mdte/30);
mdte:=trunc(mdte) mod 30;
dy:=trunc(mdte);
if yr<100 then
adm_StudMastXICage.value:=format('%d Yrs %d Mn %d Days',[yr,mn,dy]);
end;
end;

procedure TMyData.DataModuleCreate(Sender: TObject);
var
server,db,uname,passwd:string;

begin
insert_flag:=false;
mfile:=Tinifile.Create('.\smsapp.ini');
server:=mfile.ReadString('Connection','Host','localhost');
db:=mfile.ReadString('Connection','Database','sms1');
uname:=mfile.ReadString('Connection','UserId','root');
passwd:=mfile.ReadString('Connection','Password','');
lastrecno:=mfile.ReadInteger('General','Rec No.',1);
smsuid:=mfile.ReadString('Connection','smsuid','9234613301');
apikey:=mfile.ReadString('Connection','apikey','*****');
debug:=mfile.ReadString('Connection','debug','');
smssender:=mfile.ReadString('Connection','smssender','TXTLCL');
myconn.Server:=server;
myconn.Database:=db;
myconn.Username:=uname;
myconn.Password:=passwd;
try
  myconn.Connect;
  qryCustom.close;
  qryCustom.SQL.Text:='select ac_no from ac_master where AC_CODE=''LATE''';
  qryCustom.Open;
  if qryCustom.RecordCount>0 then
  late_feecode:=qryCustom.Fields[0].asinteger
  else late_feecode:=0;
except
  if not myconn.Connected then
    myconn.ConnectDialog.Execute;
end;

actlstds:=dummyT;
actAdm_studmastds:=adm_studmast;
actAdm_studmastdsXI:=adm_studmastXI;
end;

procedure TMyData.DataModuleDestroy(Sender: TObject);
begin
if myconn.Connected then
  begin
  mfile.WriteString('Connection','Host',myconn.server);
  mfile.WriteString('Connection','Database',myconn.Database);
  mfile.WriteString('Connection','UserId',myconn.Username);
  mfile.WriteString('Connection','Password',myconn.Password);
  end;
mfile.Free;
myconn.Disconnect;
end;



procedure TMyData.tbfeeAfterInsert(DataSet: TDataSet);
begin
mysp_gettmpno.ExecProc;
tbfeeMr_no.Value:=mysp_gettmpno.Params[0].Value;
tbfeemr_date.Value:=date;
mydata.tbfeeNOTERM.Value:=1;
mydata.tbfeeadhoc.Value:=0;
mydata.tbfeeCASH.Value:=false;
if (bal_fee>0) then
   begin
     //tbfeeCASH.Value:=false;
     tbfeeCHQ_NO.Value:=lastchqno;
     tbfeeCHQ_AMT.Value:=lastchqamt;
     tbfeeDRAWN_ON.Value:=lastbank;
     tbfeeBranch.Value:=lastbranch;
   end;
EnDisControls(actlstds,dsIns,dsSav);
end;

procedure TMyData.tbfeeBeforePost(DataSet: TDataSet);
var i:integer;
sql:string;
begin
if tbfee.State = dsinsert then
try
mydata.myconn.StartTransaction;
  if (tbfeeadhoc.Value=0) then
  if StudMast.locate('studId',tbfeestudid.Value,[]) then
  begin
     StudMast.edit;
     if StudMastnoterms.Value = -1 then
       StudMastnoterms.Value:=tbfeenoterm.value
     else
       StudMastnoterms.Value := StudMastnoterms.Value + tbfeenoterm.value;
     StudMast.post;
     tbfeeTerm.Value:=StudMastnoterms.asinteger;
  end;
  mysp_setmrno.Params[0].Value:=tbfeeMR_NO.Value;
  mysp_setmrno.ExecProc;
  tbfeeMR_NO.Value:=mysp_setmrno.Params[1].Value;
  if not (tbfeeCASH.Value) then
     begin
     if (tbfeeCHQ_NO.Value=lastchqno) and (tbfeeBranch.Value=lastbranch) then
        bal_fee:=bal_fee-tbfeetot_amt.Value
     else bal_fee:=tbfeeCHQ_AMT.Value-tbfeetot_amt.Value;
     if bal_fee>0 then
      begin
      lastchqno:=tbfeeCHQ_NO.Value;
      lastchqamt:=tbfeeCHQ_AMT.Value;
      lastbank:=tbfeeDRAWN_ON.Value;
      lastbranch:=tbfeeBranch.Value;
      end;
     end;
   for i := 0 to length(adhocfee_arr)-1 do
     begin
     sql:=format('update adhocfee set paid=1,mr_no="%s" '+
     'where studid=%s and paid=0 and ac_no=%d',
     [tbfeeMR_NO.Value,tbfeestudid.asstring,adhocfee_arr[i].ac_no]);
     mydata.myExec.SQL.Text:=sql;
     mydata.myExec.Execute;
     end;
  mydata.myconn.Commit;
except on E:Exception do
  mydata.myconn.Rollback;
end;
end;

procedure TMyData.tbfeeCalcFields(DataSet: TDataSet);
begin
tbfeetot_amt.value:=tbfeelate_fee.value+tbfeefee_amt.Value;
end;

procedure TMyData.tbfeeDetailAfterPost(DataSet: TDataSet);
var
bmark: tbookmark;
sum: real;
begin
bmark:=tbfeedetail.GetBookmark;
//if tbfeedetail.State in [dsedit]then begin// if tds.state in [dsInsert,dsEdit] then
tbfeedetail.DisableControls;
sum:=0;
tbfeedetail.First;
while not tbfeedetail.Eof do
begin
  sum := sum + tbfeedetailac_amtpaid.value;
  tbfeedetail.Next;
end;
if not(tbfee.State in[dsinsert,dsEdit]) then
begin
tbfee.Edit;
detdsIns:=True;
end;
tbfeefee_amt.value:=sum;
if detdsIns then
begin
detdsIns:=False;
tbfee.Post;
end;
tbfeedetail.EnableControls;
tbfeedetail.GotoBookmark(bmark);
end;

procedure TMyData.tbMarksubdet_AfterPost(DataSet: TDataSet);
var
i:real;
begin
{Mydata.tbMarksubdet.First ;i:=0;
while not Mydata.tbMarksubdet.Eof do
begin
i:=i+ tbMarksubdetmarkobt.Value ;
Mydata.tbMarksubdet.Next;
end ;
tbmarkdet.Edit ;
tbMarkdettotmark.value:=i;}
end;

procedure TMyData.TbAbsenteesAfterInsert(DataSet: TDataSet);
begin
{if tbAbsentees.State in [dsinsert] then
begin
Mydata.TbAbsentees.Edit ;
Mydata.tbAbsenteesDate.Value :=date;
end;}
end;

procedure TMyData.tbttable_CalcFields(DataSet: TDataSet);
var tmp:integer;
begin
tmp:=tbttableDay.asinteger;
if ((tmp>0) and (tmp<8)) then
tbttabledname.Value:=dnm[tbttableDay.asinteger];
end;

procedure TMyData.tbttable_TeacherChange(Sender: TField);
begin
//tbttableSubject.Value:=tbttableSname.Value;
end;

procedure TMyData.tbfeeBeforeDelete(DataSet: TDataSet);
begin
tbfeeDetail.DisableControls;
tbfeeDetail.First;
while not tbfeeDetail.eof do tbfeeDetail.delete;
tbfeeDetail.EnableControls;
//for updating no of term paid
if StudMast.locate('studId',tbfeestudid.Value,[]) then
  begin
     StudMast.edit;
     StudMastnoterms.Value:=StudMastnoterms.Value-tbfeenoterm.value;
     StudMast.post;
  end;
end;

procedure TMyData.tbfeeBeforeCancel(DataSet: TDataSet);
begin
if tbFee.State in [dsInsert] then
begin
tbfeeDetail.DisableControls;
tbfeeDetail.First;
while not tbfeeDetail.eof do tbfeeDetail.delete;
tbfeeDetail.EnableControls;
end;
end;

procedure TMyData.qryCurrentStudCalcFields(DataSet: TDataSet);
var mdte:extended;
yr,mn,dy:word;
begin
if qryCurrentStudDOB.value<date then
begin
mdte:=date-qryCurrentStudDOB.value;
yr:=trunc(mdte/365);
mdte:=trunc(mdte) mod 365;
mn:=trunc(mdte/30);
mdte:=trunc(mdte) mod 30;
dy:=trunc(mdte);
if yr<100 then
qryCurrentStudCage.value:=format('%d Yrs %d Mn %d Days',[yr,mn,dy]);
if dy>14 then mn:=mn+1;
if mn>5 then yr:=yr+1;
qryCurrentStudrage.value:=yr;
end;
end;


procedure TMyData.qryTcdataCalcFields(DataSet: TDataSet);
var
y,m,d:word;
yr:string;
prof,rprof:string;
begin
qryTcdataclword.Value:=cltoword(qryTcdatasClass.Value);
decodedate(mydata.qryTcdataSDoB.Value,y,m,d);
if (y div 100)>19 then
yr:=numtoword(y div 1000,false)+' Thousand '
else
yr:=numtoword(y div 100,false);prof:=LowerCase(qryTcdatafeeprof.Value);
rprof:='NO';
if (pos('bpl',prof)>0) then rprof:='FULL FREE'
else if (pos('free',prof)>0) then rprof:='TUITION FEE EXMPTION ';
qryTcdatac_feecat.Value:=rprof;
qryTcdatadobinword.value:='('+datetoword(d,false)+' '+month[m]+' '+yr+numtoword(y mod 100,false)+')';
end;

procedure TMyData.qryYrlyCalcFields(DataSet: TDataSet);
var t:real;
begin
t:=qryYrlyBasic.value+qryYrlyDA.value;
if t>6500 then
qryYrlyPf.value:=780 else
qryYrlyPf.value:=t*0.12;
qryYrlyNetAmt.value:=qryYrlyGross.value+qryYrlyPf.value;
end;

procedure TMyData.TcDataBeforePost(DataSet: TDataSet);
var
admno:integer;
stat:string;
begin
{admno:=Mydata.StudMastStudID.AsInteger;
if Mydata.StudMast.Locate('StudId',admno,[]) then
begin}
{TcDataPromotion.Value:=TcDataprom.Value;
stat:=TcDataPromotion.Value;
if stat[1]='Y' then
begin
// clMast.Locate('ClCode',StudMastClcode.Value,[]);
 admno:=ClMAstUPClass.Value;
 clMast.Locate('ClCode',admno,[]);
 stat:='Promoted to '+clMastDescr.Value;
end
else if stat[1]='N' then
begin
// clMast.Locate('ClCode',StudMastClcode.Value,[]);
 stat:='Detained in '+clMastDescr.Value;
end
else }
 stat:='';
if mydata.TcDatatcflag.Value then
begin
mydata.StudMast.Edit;
 if StudMastRemark.IsNull then
  StudMastRemark.Value:='TC taken on '+TcDataTCDate.AsString+#13+
                        'TC No. : '+TcDataTCNo.asstring+#13+(stat)
 else
  StudMastRemark.Value:=StudMastRemark.Value+#13+
                         'TC taken on '+TcDataTCDate.AsString+#13+
                         'TC No. : '+TcDataTCNo.asstring+#13+(stat);
mydata.StudMastCatCode.Value:=0;
mydata.StudMast.Post;
end;
{end
else
Raise exception.Create('Invalid Admission No');}
if TcData.State in [dsInsert] then
 mfile.WriteInteger('General','TCNo',stid+1);
end;

procedure TMyData.TcDataCalcFields(DataSet: TDataSet);
var
y,m,d:word;
yr:string;
begin
TcDataclword.Value:=cltoword(TcDatasClass.Value);
decodedate(mydata.TcDataSDoB.Value,y,m,d);
if (y div 100)>19 then
yr:=numtoword(y div 1000,false)+' Thousand '
else
yr:=numtoword(y div 100,false);
if (pos('General',TcDatafeeprof.Value)=0) then TcDatac_feecat.Value:=TcDatafeeprof.Value
else  TcDatac_feecat.Value:='No';
TcDatadobinword.value:='('+datetoword(d,false)+' '+month[m]+' '+yr+numtoword(y mod 100,false)+')';

end;

procedure TMyData.tbSubMast_BeforePost(DataSet: TDataSet);
begin
mfile.WriteInteger('General','sid',tbSubMastSID.Value+1);
end;

procedure TMyData.tbSubMast_AfterInsert(DataSet: TDataSet);
begin
tbSubMastSID.Value:=mfile.ReadInteger('General','sid',0);
end;

procedure TMyData.tbttable1_CalcFields(DataSet: TDataSet);
begin
//tbttable1dname.Value:=dnm[tbttable1Day.asinteger];
end;

procedure TMyData.tbTabsent_AfterInsert(DataSet: TDataSet);
begin
tbTabsentDte.Value:=date;
end;

procedure TMyData.dsAdmInsExecute(Sender: TObject);
begin
 actAdm_studmastds.Insert;
end;

procedure TMyData.dsAdmInsXIExecute(Sender: TObject);
begin
 actAdm_studmastdsXI.Insert;
end;

procedure TMyData.dsAdmSavExecute(Sender: TObject);
begin
 actAdm_studmastds.Post;
end;

procedure TMyData.dsAdmSavXIExecute(Sender: TObject);
begin
 actAdm_studmastdsXI.Post;
end;

procedure TMyData.dsInsExecute(Sender: TObject);
begin
 actlstds.Insert;
end;

procedure TMyData.dsSavExecute(Sender: TObject);
begin
 actlstds.Post;
end;

procedure TMyData.tbfeeAfterEdit(DataSet: TDataSet);
begin
        //APPLIES TO CANCEL, DELETE, OPEN, POST
 EnDisControls(actlstds,dsIns,dsSav);

end;

procedure TMyData.TcDataAfterInsert(DataSet: TDataSet);
var
  orgfilt:string;
  filtflg:Boolean;
  slno,tcno:integer;
begin
{if MyData.StudMast.Filtered then filtflg:=True;
orgfilt:=MyData.StudMast.Filter;
if orgfilt<>'' then
MyData.StudMast.Filter:=orgfilt+' AND CatCode<>0 AND ClCode<>0'
else
MyData.StudMast.Filter:='CatCode<>0 AND ClCode<>0';
MyData.StudMast.Filtered:=True;  showmessage(MyData.StudMast.Filter);}
mydata.qryCustom.close;
mydata.qryCustom.SQL.Text:='select ifnull(max(slno),0) mxsl,ifnull(max(tcno),0) mxtc from tcdata';
mydata.qryCustom.open;
slno:=mydata.qryCustom.Fields[0].asinteger;
tcno:=mydata.qryCustom.Fields[1].asinteger;
mydata.TcDataSlNo.Value:=slno+1;
mydata.TcDataTCNO.Value:=tcno+1;
end;

procedure TMyData.AcdTBeforePost(DataSet: TDataSet);
begin
 AcdTFlag.Value:='a';
end;

procedure TMyData.ProTBeforePost(DataSet: TDataSet);
begin
 ProTFlag.Value:='p';
end;

procedure TMyData.Lang1TBeforePost(DataSet: TDataSet);
begin
 Lang1Ttb_flag.Value:='p';
end;

procedure TMyData.Lang2TBeforePost(DataSet: TDataSet);
begin
 Lang2Ttb_flag.Value:='h';
end;

procedure TMyData.StfApplnTAfterInsert(DataSet: TDataSet);
begin
 EnDisControls(actlstds,dsIns,dsSav);
end;

procedure TMyData.StfApplnTAfterEdit(DataSet: TDataSet);
begin
// APPLIES TO CANCEL, DELETE, POST & OPEN ALSO \\
 EnDisControls(actlstds,dsIns,dsSav);            
end;

procedure TMyData.StfApplnTBeforeCancel(DataSet: TDataSet);
begin
if StfApplnT.State in[dsInsert] then
 StfApplnTBeforeDelete(StfApplnT);
end;

procedure TMyData.StfApplnTBeforeDelete(DataSet: TDataSet);
begin
  AcdT.First;  while not AcdT.Eof do   AcdT.Delete;
  ProT.First;  while not ProT.Eof do   ProT.Delete;
  Lang1T.First;  while not Lang1T.Eof do   Lang1T.Delete;
  Lang2T.First;  while not Lang2T.Eof do   Lang2T.Delete;
  WorkExT.First;  while not WorkExT.Eof do   WorkExT.Delete;
  RefsT.First;  while not RefsT.Eof do   RefsT.Delete;
  BooksT.First;  while not BooksT.Eof do   BooksT.Delete;
  SemCorT.First;  while not SemCorT.Eof do   SemCorT.Delete;
end;

procedure TMyData.studmastCalcFields(DataSet: TDataSet);
var
mdte:extended;
yr,mn,dy:word;
begin
if StudMastDOB.value<date then
begin
mdte:=date-StudMastDOB.value;
yr:=trunc(mdte/365);
mdte:=trunc(mdte) mod 365;
mn:=trunc(mdte/30);
mdte:=trunc(mdte) mod 30;
dy:=trunc(mdte);
if yr<100 then
StudMastCage.value:=format('%d Yrs %d Mn %d Days',[yr,mn,dy]);
end;
end;

procedure TMyData.studmastAfterEdit(DataSet: TDataSet);
begin
        //APPLIES TO CANCEL, DELETE, OPEN, POST
 EnDisControls(actlstds,dsIns,dsSav);
end;

procedure TMyData.studmastAfterInsert(DataSet: TDataSet);
begin
stid:=mfile.ReadInteger('General','laststid',1);
mydata.StudMastStudID.Value:=stid;
 EnDisControls(actlstds,dsIns,dsSav);
//StudMaststudid.value:=mfile.ReadInteger('General','laststid',1);
end;

procedure TMyData.studmastBeforePost(DataSet: TDataSet);
begin
if studmast.state in [dsinsert] then
begin
mfile.WriteInteger('General','laststid',stid+1);
mydata.StudMastNOTERMS.Value :=-1;
end
end;

procedure TMyData.studmastDOBValidate(Sender: TField);
begin
if StudMastDOB.Value>date then
Raise exception.Create('Invalid Value for date');
end;

procedure TMyData.tbTeacherCalcFields(DataSet: TDataSet);
var tmp:integer;
begin
tmp:=tbttableDay.asinteger;
if ((tmp>0) and (tmp<8)) then
tbttabledname.Value:=dnm[tbttableDay.asinteger];
end;

procedure TMyData.tbfeeDetailAC_AMTValidate(Sender: TField);
begin
mydata.tbfeeDetailAC_AMTPAID.Value:=mydata.tbfeeDetailAC_AMT.Value;
end;

end.