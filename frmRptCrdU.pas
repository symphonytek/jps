unit frmRptCrdU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons,DB, ExtCtrls, DBCtrls, Grids,
  DBGrids, dbcgrids,frxClass;

type
  TfrmRptCrd = class(TForm)
    btnList: TSpeedButton;
    BitBtn1: TBitBtn;
    REdit: TRichEdit;
    Bevel1: TBevel;
    Label3: TLabel;
    dbfilter: TDBLookupComboBox;
    btnPrint: TBitBtn;
    Memo1: TMemo;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBCheckBox1: TDBCheckBox;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    RdGp2: TDBRadioGroup;
    Label5: TLabel;
    edPgSz: TEdit;
    StaticText1: TStaticText;
    REdt: TRichEdit;
    Label6: TLabel;
    CBx1: TComboBox;
    btnMaster: TSpeedButton;
    chkDmp: TCheckBox;
    procedure btnListClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCtrlGrid1DblClick(Sender: TObject);
    procedure btnMasterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kpTbOpn: Boolean;
    sntBy,studIdStr,clCdStr: String;
  end;

var
  frmRptCrd: TfrmRptCrd;
  skpLn: Integer;

implementation

uses genperfU, exmdataU, myfuncU, MyDataU, StrUtils;

{$R *.dfm}
procedure TfrmRptCrd.btnListClick(Sender: TObject);
const
grdAr: array[0..14] of String=('Absent','A+','A','B+','B','C+','C','D+','D','E+','E','F+','F','G','H');

type subj=record
      sdesc:string;
      sgrp:string;
end;

var
i,j,k,l,lnCnt,cnt,pgSz,smRc,xmDtRc,xSMRc1,xSMRc2,xmDtRcMn,xSMRcMn:integer;
mksFrXm: array of array of array of String;
studAr: array of array of String;
subar: array of array of subj;
xmAr: array of String;
myflg:boolean;
mystr:String;
arr_cnt,cnt1,initgrp:integer;
tmpStr,tmpStr1,tmpStr2,tmpStr3,tmpStr4,yrStr: String;
wdStr:AnsiString;
bMk1: TBookMark;
yr,mon,dy:word;
tempdate:tdatetime;
xmTotFlg: Boolean;
avgtot,exmcount:integer;
bstart,bstop,cstart,cstop,bs,be:string;
begin
if chkDmp.Checked then
  begin
  pgSz:=trunc(strtoint(edPgSz.Text)*12/strtoint(rdgp2.Value));skpLn:=0;
  bstart:=#27+#69;bstop:=#27+#70;bs:='';
  cstart:=#27+#15;cstop:=#27+#18;be:='';
  end else
  begin
  pgSz:=50;skpLn:=0;
  bstart:='';bstop:='';bs:='<b>';
  cstart:='';cstop:='';be:='</b>';
  end;

if(sntBy='frmSht')or(sntBy='frmStud')then
  begin
  exmdata.Query3.SQL[2]:='WHERE ClCode='+clCdStr;
  exmdata.QrByBus.SQL[14]:='AND studmast.StudId='+studIdStr; sntBy:='';
  end
else
  begin //...else1
  exmdata.QrByBus.SQL[14]:='';exmdata.Query3.SQL[2]:='';
  if dbfilter.Text<>'' then
    begin
    exmdata.Query1.SQL[1]:='Where clcode='+QuotedStr(dbfilter.KeyValue);
    exmdata.Query5.SQL[4]:='Where stud.clcode='+QuotedStr(dbfilter.KeyValue);
    exmdata.Query3.SQL[2]:='WHERE ClCode='+QuotedStr(dbfilter.KeyValue);
    exmdata.QrByBus.SQL[14]:='AND studmast.ClCode='+QuotedStr(dbfilter.KeyValue);
    end
    else raise exception.Create('Please select some class');
  if CBx1.Text<>'' then
  exmdata.QrByBus.SQL[14]:=exmdata.QrByBus.SQL[14]+' AND studmast.Section='+
  QuotedStr(CBx1.Text);
  end;
tmpStr:=exmdata.QrByBus.SQL[14];
exmdata.Query8.SQL[7]:=tmpstr;
exmdata.Query9.SQL[7]:=tmpstr;
exmdata.Query10.SQL[7]:=tmpstr;
tmpStr:=AnsiReplaceStr(tmpStr,'studmast.','');
exmdata.Query4.SQL[7]:=tmpstr;
exmdata.Query7.SQL[2]:=exmdata.Query3.SQL[2];


if exmdata.exmMast.State in [dsEdit] then
  begin
  exmdata.exmMast.Post;bMk1:=exmdata.exmMast.GetBookmark;
  exmdata.exmMast.Close;exmdata.exmMast.Open;exmdata.exmMast.GotoBookmark(bMk1);
  end;
exmdata.Query1.Open;smRc:=exmdata.Query1maxm.AsInteger;exmdata.Query1.Close;
exmdata.Query2.Open;xmDtRc:=exmdata.Query2maxm.Value;
xmDtRcMn:=exmdata.Query2minm.Value;exmdata.Query2.Close;
exmdata.Query11.Open;
exmcount:=exmdata.Query11maxm.Value;  exmdata.Query11.Close;
exmdata.Query3.Open;xSMRc1:=exmdata.Query3maxS.Value;xSMRcMn:=exmdata.Query3minS.Value;
xSMRc2:=exmdata.Query3maxC.Value;exmdata.Query3.Close;
i:=smRc+1; j:=xmDtRc+1; k:=xSMRc1+1; l:=xSMRc2+1;
tmpStr1:='                Marks     '+bstart;
exmdata.Query5.Open;
exmdata.Query6.Open;
exmdata.Query7.Open;
exmdata.Query8.Open;
exmdata.Query9.Open;
exmdata.Query10.Open;
setlength(mksFrXm,i,j,k);setlength(studAr,6,i);setlength(xmAr,j);
setlength(subAr,l,k);
  while not exmdata.Query5.Eof do
    begin
    i:=exmdata.Query5RollNo.asinteger;
    studAr[0,i]:=bs+exmdata.Query5Name.Value+be;
    studAr[1,i]:=bs+exmdata.Query5AdmNo.Value+be;
    studAr[2,i]:=bs+exmdata.Query5clCaption.Value+be;
    studAr[3,i]:=bs+exmdata.Query5Section.Value+be;
    studAr[4,i]:=bs+exmdata.Query5RollNo.AsString+be;
    studAr[5,i]:=exmdata.Query5DoB.AsString;exmdata.Query5.Next;
    end;
  while not exmdata.Query6.Eof do
    begin
    j:=exmdata.Query6ExmId.AsInteger;
    xmAr[j]:=exmdata.Query6Exmdesc.Value;exmdata.Query6.Next;
    tmpStr1:=tmpStr1+format('%12s',[xmAr[j]]);
    end;
  if chkDMP.Checked then
  tmpStr1:=tmpStr1+format('%16s',['Aggr. Rank in section'])+bstop;
  while not exmdata.Query7.Eof do
    begin
    k:=exmdata.Query7SubjId.AsInteger;
    l:=exmdata.Query7ClCode.Value;
    subar[l,k].sgrp:=exmdata.Query7SUBGROUP.Value;
    subAr[l,k].sdesc:=exmdata.Query7Subjdesc.Value+
            format('%-'+inttostr(15-length(exmdata.Query7Subjdesc.Value))+
            's[%3s]%4s',['',exmdata.Query7Fmarks.AsString,'']);
//            's[%3s][%2s]',['',exmdata.Query7Fmarks.AsString,exmdata.Query7Pmarks.AsString]);
    exmdata.Query7.Next;
    end;
  while not exmdata.Query8.Eof do
    begin
    i:=exmdata.query8rollno.asinteger;
    k:=exmdata.Query8SubId.Value;
    if exmdata.Query8tot.Value>=0 then                       // mksFrXm[i,j,k]:=grdAr[abs(exmdata.QrByBusMarks.AsInteger)]else
    mksFrXm[i,0,k]:=inttostr(trunc(exmdata.Query8tot.value/exmcount));
    if exmcount=1 then  mksFrXm[i,0,k]:='.';
    exmdata.Query8.Next;
    end;
  while not exmdata.Query9.Eof do
    begin
    i:=exmdata.query9rollno.asinteger;
    j:=exmdata.Query9ExmId.Value;
    if exmdata.Query9tot.Value>=0 then mksFrXm[i,j,0]:=exmdata.Query9tot.AsString;
    exmdata.Query9.Next;
    end;
  while not exmdata.Query10.Eof do
    begin
    i:=exmdata.query10rollno.asinteger;
    if exmdata.Query10tot.Value>=0 then mksFrXm[i,0,0]:=exmdata.Query10tot.asstring;
    exmdata.Query10.Next;
    end;
  decodedate(exmdata.Query6Exmdate.Value,yr,mon,dy);
  exmdata.Query5.Close;exmdata.Query6.Close;exmdata.Query7.Close;
  exmdata.Query8.Close;exmdata.Query9.Close;exmdata.Query10.Close;     //Redit.Lines.clear;
  exmdata.QrByBus.Open;
  while not exmdata.QrByBus.Eof do
    begin
    i:=exmdata.QrByBusRlNo.AsInteger;
    j:=exmdata.QrByBusExmId.Value;
    k:=exmdata.QrByBusSubId.Value;
    if(exmdata.QrByBusMarks.Value<0)or(exmdata.QrByBusMarks.IsNull)then
    mksFrXm[i,j,k]:=format('%-8s',[grdAr[abs(exmdata.QrByBusMarks.AsInteger)]])
    else mksFrXm[i,j,k]:=format('%-8s',[exmdata.QrByBusMarks.AsString]);
    exmdata.QrByBus.Next;
    end;
  if mon<strtoint(genperf.edtsession.text)then yr:=yr-1;
  exmdata.Query4.Open; wdStr:='';
  arr_cnt := length(xmAr);
  while not exmdata.Query4.Eof do
    begin
    cnt1 := 1;
    myflg := true;i:=exmdata.Query4RlNo.AsInteger;
    cnt:=18;
    wdStr:=wdStr+format(' Name : %-10s    Roll No.: %-2s   Adm. No.: %-7s',
                       [studAr[0,i],studAr[4,i],studAr[1,i]])+#13+#10;
    wdStr:=wdStr+#13+#10+
    format(' Class : %-1s %-1s     DoB : %-10s  Academic Year : %4d-%4d',
                       [studAr[2,i],studAr[3,i],studAr[5,i],yr,yr+1]);
    wdStr:=wdStr+#13+#10;
    wdStr:=wdStr+#13+#10+cstart+tmpStr1;
    wdStr:=wdStr+#13+#10+cstart+format('%30s ',['Tot.Marks          '])+bstop;
    tmpStr4:=bstart+format(' %-20s     ',['Total'])+bstop;
    xmTotFlg:=True;
    avgtot:=0;
  tmpstr2:=subAr[exmdata.Query4ClCode.Value,xSMRcMn].sgrp;
  for k:=xSMRcMn to xSMRc1 do
    begin
    tmpstr:='';
    //Code for inserting subject group
    if tmpstr2<>trim(subAr[exmdata.Query4ClCode.Value,k].sgrp) then
      begin
      if (initgrp=0) then
        begin
        tmpstr:=bs+'TOTAL'+be+#13+#10;
        tmpstr:=tmpstr+bs+'RANK'+be+#13+#10;inc(initgrp);
        end;
      tmpstr2:=trim(subAr[exmdata.Query4ClCode.Value,k].sgrp);
      tmpstr:=tmpstr+bs+tmpstr2+be+#13+#10;inc(cnt);
      end;
      //Code for inserting subject group(end)
    tmpStr:=tmpstr+bstart+format(' %-20s ',[subAr[exmdata.Query4ClCode.Value,k].sdesc])+bstop;
    if subAr[exmdata.Query4ClCode.Value,k].sdesc<>''then
      begin
      tmpStr3:='';
      for j:=xmDtRcMn to xmDtRc do
        begin
        if trim(mksFrXm[i,j,k])<>'' then
        tmpStr:=tmpStr+format('%12s',[mksFrXm[i,j,k]])
        else if xmAr[j]<>'' then tmpStr:=tmpStr+format('%12s',['']);
        //Line for column averege
        if(xmTotFlg)and(xmAr[j]<>'')then
          begin
          tmpStr4:=tmpStr4+format('%12s',[mksFrXm[i,j,0]]);
          if not (trim(mksFrXm[i,j,0])='') then
          avgtot:=avgtot+strtoint(mksFrXm[i,j,0]);
          end;
        end;
      if myflg then
        begin
        if cnt1 < arr_cnt then
          begin
          while (xmAr[cnt1] = '') and (cnt1 < arr_cnt) do cnt1 := cnt1 + 1;
          mystr := xmar[cnt1];
          cnt1 := cnt1 + 1;
          end
        else
        mystr := '';
        end;
      xmTotFlg:=False;
      if myflg then
        begin
        tmpStr:=tmpStr+tmpStr3+bstart+format('%12s',[mksFrXm[i,0,k]])+Format('%12s',[mystr])+bstop;
        myflg := false;
        end
      else
        begin
        tmpStr:=tmpStr+tmpStr3+bstop+format('%12s',[mksFrXm[i,0,k]])+Format('%12s',[''])+bstop;
        myflg := true;
        end;
      wdStr:=wdStr+#13+#10+tmpStr;inc(cnt);
      end;
    end;
  if exmcount=1 then
  wdStr:=wdStr+#13+#10+tmpStr4+bstart+format('%12s',[''])
        +bstop+cstop+#13+#10
  else
  wdStr:=wdStr+#13+#10+tmpStr4+bstart+format('%12d',[trunc(avgtot/exmcount)])
        +bstop+cstop+#13+#10;
  tmpStr2:='';
  for lnCnt:=1 to pgSz-(cnt+skpLn) do tmpStr2:=tmpStr2+#13+#10;   //Redit.Lines.add('');
  wdStr:=wdStr+#13+#10+tmpStr2;


if chkDMP.Checked then
begin
  wdStr:=wdStr+#13+#10+
     ' Final Rank in class _________'+
     '  Remarks _______________________________________'+#13+#10;
  wdStr:=wdStr+#13+#10+
     ' Class Teacher''s Signature ______________'+
     '  Principal''s Signature ______________';

for i:=1 to 7 do wdstr:=wdstr+#13+#10;
end;
  exmdata.Query4.Next;
  end;
exmdata.Query4.Close; exmdata.QrByBus.close;Redit.Lines.clear;
Redit.Lines.Add(wdStr);wdStr:='';
end;

procedure TfrmRptCrd.btnPrintClick(Sender: TObject);
var i:integer;
begin
if not chkDMP.Checked then
  begin
  with exmdata do
  begin
  qryStudlist.close;
  qrySubgroup.Close;
  qryMarks.close;
  qryMarksGrd.close;
  if dbfilter.Text<>'' then
    qryStudlist.Params[0].Value:=dbfilter.KeyValue
    else raise exception.Create('Please select some class');
  if CBx1.Text<>'' then
      qryStudlist.Params[1].Value:=CBx1.Text
    else raise exception.Create('Please select some section');
  xmlist:='';
  exmmast.First;
  while not exmmast.Eof do
    begin
    if exmmastSlct.Value then
    xmlist:=xmlist+format('%-18s',[exmmastExmdesc.Value]);
    exmmast.Next;
    end;
  qryStudlist.Open;
  qrySubgroup.open;
  qryMarks.Open;
  qryMarksGrd.Open;
  frxRpt.LoadFromFile('.\frxStudcard.fr3');
  (frxRpt.FindObject('ddAcad') as TfrxDataBand).Visible:=qryMarks.RecordCount>0;
  frxRpt.ShowReport();
  end
end
else
  try
    if Redit.GetTextLen>1 then
    begin
    Redt.Lines.Clear;
    Redt.Lines.Add(#27#67+chr(strtoint(edPgSz.Text))+#27#65+
                      chr(strtoint(rdgp2.Value)));      //+#27#78+chr(skpLn));
    Redt.Lines.Add(Redit.Text);        //ShowMessage(inttostr(Redit.Lines.Count)+' '+inttostr(Redt.Lines.Count));
    memo1.Lines.SaveToFile('PRN');
    Redt.Lines.SaveToFile('PRN');
    end
  else
    showmessage('Nothing to print');
  except
    Redt.Lines.Clear;
    ShowMessage('Printer not responding');
  end;
end;

procedure TfrmRptCrd.FormActivate(Sender: TObject);
begin
mydata.tmpClmast.open;
btnList.Caption:='&Report'+#13+'Card  '; dbfilter.KeyValue:=-999;
exmdata.exmmast.Filtered:=True;exmdata.CLMast.Open;exmdata.rdbtnvalt.Open;
exmdata.exmmast.Open;RdGp2.ItemIndex:=0;RdGp2.Value:='12';          //ShowMessage(RdGp2.Value)
end;

procedure TfrmRptCrd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mydata.tmpClmast.open;
dbfilter.KeyValue:=-999; CBx1.Text:='';
exmdata.rdbtnvalt.Close;
exmdata.exmmast.Filtered:=False;
if not kpTbOpn then
  begin
  exmdata.exmmast.Close;
  exmdata.CLMast.Close;
  end;
end;

procedure TfrmRptCrd.DBCtrlGrid1DblClick(Sender: TObject);
var
  bMk1: TBookMark;
begin
 bMk1:=exmdata.exmMast.GetBookmark;
 exmdata.exmmast.Filtered:=not exmdata.exmmast.Filtered;
 exmdata.exmMast.GotoBookmark(bMk1);
end;

procedure TfrmRptCrd.btnMasterClick(Sender: TObject);
begin
  if dbfilter.Text<>'' then
    exmdata.qryMsheet.SQL[7]:='AND studmast.ClCode='+QuotedStr(dbfilter.KeyValue)
    else raise exception.Create('Please select some class');
  if CBx1.Text<>'' then
  exmdata.QryMsheet.SQL[7]:=exmdata.QryMsheet.SQL[7]+' AND studmast.Section='+
  QuotedStr(CBx1.Text);
  exmdata.frxRpt.LoadFromFile('.\frxMastsheet.fr3');
  //frxRpt.LoadFromFile('.\frxStudcard.fr3');
  exmdata.frxRpt.ShowReport();
end;

end.







