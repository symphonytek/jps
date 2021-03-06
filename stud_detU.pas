unit stud_detU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls, DBCtrls,
  Mask;

type
  TStud_Det = class(TForm)
    DbGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label15: TLabel;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    btnClose: TBitBtn;
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Stud_Det: TStud_Det;
  clfrom,clto:integer;

implementation

uses MyDataU, frmStudMastU, Db;

{$R *.dfm}

procedure TStud_Det.FormActivate(Sender: TObject);
begin
Mydata.StudMast.Open;         //if pos('a',Mydata.StudMastRemark.Value)>0 then showmessage('1');//Mydata.StudMast.filter:='Remark=''a''';
Mydata.TbStud_Det.Open;
mydata.CLMast.open;
end;

procedure TStud_Det.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Mydata.TbStud_Det.close;
Mydata.StudMast.Close;
mydata.CLMast.Close;
end;


procedure TStud_Det.BitBtn1Click(Sender: TObject);
var s,dte:string;
cnt:integer;
label goHere;
begin
if MessageDlg('This operation is irreversible.'+#13+
              'Do you really want to upgrade the class?',
               mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin  cnt:=0;
    dte:=copy(datetostr(now),length(datetostr(now))-1,2);//    blobvar.AsString:=dte +' :- Promoted to ';//+mydata.qryLkUpDESC.Value;//    memovar.Lines.Add('4 :- Promoted to STD-II');
    Mydata.qryLkUp.Params[0].AsInteger:=clfrom;
    Mydata.qryLkUp.Params[1].AsInteger:=clto;
    Mydata.qryLkUp.Filter:='UpGrdYr<>'+dte+'';
   // Mydata.qryLkUp.Params[2].AsString:=dte; //    Mydata.qryLkUp.Params[2].AsString:='a';
    Mydata.qryLkUp.Open ;                    //Mydata.qryLkUp.filter:='Remark='+#39+dte+' :- Promoted to '+mydata.qryLkUpDESC.Value+#39;//Mydata.qryLkUp.filtered:=true;
    mydata.qryLkUp.First;
    while not mydata.qryLkUp.Eof do
    begin
       if (mydata.StudMast.Locate('AdmNo',mydata.qryLkUpAdmNo.Value,[]))then
       begin                                //     showmessage(IntToStr(pos(dte+' :- Promoted to '+mydata.StudMaststCLDESC.Value,             mydata.StudMastRemark.Value)));     showmessage(IntToStr(pos(dte+' :- Detained in '+mydata.StudMaststCLDESC.Value,             mydata.StudMastRemark.Value)));//      if (pos(dte+' :- Promoted to '+mydata.StudMaststCLDESC.Value,//          mydata.StudMastRemark.Value)=0) or (pos(dte+' :- Detained in '+mydata.StudMaststCLDESC.Value,//          mydata.StudMastRemark.Value)=0) or (pos(dte+' :- Admitted to '+mydata.StudMaststCLDESC.Value,//          mydata.StudMastRemark.Value)=0) then//      begin
        inc(cnt);                               // showmessage(IntToStr(cnt)+' '+mydata.qryLkUpStudID.AsString);
        mydata.StudMast.Edit;//showmessage('1');
        if not mydata.TbStud_Det.Locate('AdmNo',mydata.qryLkUpAdmNo.Value,[]) then
        begin //1                       //showmessage('1');
goHere:  if mydata.CLMast.Locate('ClCode',mydata.qryLkUpClCode.Value,[])then
         begin //2
          mydata.StudMast.Edit;                         //showmessage('2');
          mydata.StudMastClCode.Value:=mydata.CLMastUPClass.Value;
         if mydata.CLMast.Locate('ClCode',mydata.StudMastClCode.Value,[])then
         begin                  //showmessage('3');
          if mydata.StudMastClCode.Value=1 then
           s:=' :- Admitted to '
          else
           s:=' :- Promoted to ';                       //showmessage('4');
         end
         else
          s:=' :- Passed out. ';                    //showmessage('5');
         end; //-2 showmessage('6');
         end  //-1
         else  if mydata.TbStud_DetDet.Value then                //         begin//          showmessage('8');
          s:=' :- Detained in '   //         end
         else                        //         begin//          showmessage('7');
          goto goHere;                 //         end;
         mydata.StudMast.Edit;              //          showmessage(s+mydata.StudMastStudid.AsString);//         if mydata.StudMast.State in [dsInsert,dsEdit] then    //           showmessage('yes');
         if mydata.StudMastRemark.IsNull then
          mydata.StudMastRemark.Value:=(dte+s+mydata.StudMaststCLDESC.Value)
         else
          mydata.StudMastRemark.Value:=mydata.StudMastRemark.Value+#13+
                                      (dte+s+mydata.StudMaststCLDESC.Value);
         mydata.StudMastUpGrdYr.Value:=dte;
         if mydata.StudMastNOTERMS.Value<>-1 then
          mydata.StudMastNOTERMS.Value:=0;
         mydata.StudMast.Post;
      end;               // outermost if
        mydata.qryLkUp.Next;
    end; //end while            //        mydata.StudMast.Post;
    Mydata.qryLkup.Close;
    if cnt=0 then
    begin
     if clfrom=clto then
      showmessage('Class '+DBLookUpComboBox1.Text+' had been upgraded earlier.')
     else
      showmessage('Classes '+DBLookUpComboBox1.Text+' to '+DBLookUpComboBox2.Text+' had been upgraded earlier.')
    end
    else
     showmessage('Classes Upgraded Successfully...');
  end;
end;

procedure TStud_Det.DBLookupComboBox1Click(Sender: TObject);
begin
clfrom:=mydata.ClMastclCode.Value;
end;

procedure TStud_Det.DBLookupComboBox2Click(Sender: TObject);
begin
clto:=mydata.ClMastclCode.Value;
end;

procedure TStud_Det.BitBtn3Click(Sender: TObject);
begin
MyData.tbStud_Det.Active := False;
MyData.tbStud_Det.EmptyTable;
MyData.tbStud_Det.Active := True;
end;

procedure TStud_Det.btnCloseClick(Sender: TObject);
var s,dte,tmp:string;
cnt:integer;
begin
if MessageDlg('This operation is irreversible.'+
              'Do you really want to upgrade the class',
               mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin  cnt:=0;
    dte:=copy(datetostr(now),length(datetostr(now))-1,2);//    blobvar.AsString:=dte +' :- Promoted to ';//+mydata.qryLkUpDESC.Value;//    memovar.Lines.Add('4 :- Promoted to STD-II');
    Mydata.qryLkUp.Close;
    Mydata.qryLkUp.Params[0].AsInteger:=clfrom;
    Mydata.qryLkUp.Params[1].AsInteger:=clto;
    mydata.qryLkUp.Params[2].AsInteger:=strtoint(dte);
    //Mydata.qryLkUp.Filter:='UpGrdYr<>'+dte+'';            // Mydata.qryLkUp.Params[2].AsString:=dte; //    Mydata.qryLkUp.Params[2].AsString:='a';
    Mydata.qryLkUp.Open ;                    //Mydata.qryLkUp.filter:='Remark='+#39+dte+' :- Promoted to '+mydata.qryLkUpDESC.Value+#39;//Mydata.qryLkUp.filtered:=true;
   // mydata.myconn.StartTransaction;
    while not mydata.qryLkUp.Eof do
    begin
    tmp:=mydata.qryLkUpAdmNo.asstring;
       if (mydata.StudMast.Locate('AdmNo',mydata.qryLkUpAdmNo.Value,[]))then
          begin                                //     showmessage(IntToStr(pos(dte+' :- Promoted to '+mydata.StudMaststCLDESC.Value,             mydata.StudMastRemark.Value)));     showmessage(IntToStr(pos(dte+' :- Detained in '+mydata.StudMaststCLDESC.Value,             mydata.StudMastRemark.Value)));//      if (pos(dte+' :- Promoted to '+mydata.StudMaststCLDESC.Value,//          mydata.StudMastRemark.Value)=0) or (pos(dte+' :- Detained in '+mydata.StudMaststCLDESC.Value,//          mydata.StudMastRemark.Value)=0) or (pos(dte+' :- Admitted to '+mydata.StudMaststCLDESC.Value,//          mydata.StudMastRemark.Value)=0) then//      begin
          tmp:=tmp+'--done';
          inc(cnt);                               // showmessage(IntToStr(cnt)+' '+mydata.qryLkUpStudID.AsString);
          mydata.StudMast.Edit;//showmessage('1');
          if not mydata.TbStud_Det.Locate('AdmNo',mydata.qryLkUpAdmNo.Value,[]) then
              begin //1                       //showmessage('1');
              if mydata.CLMast.Locate('ClCode',mydata.qryLkUpClCode.Value,[])then
                  begin //2
                  tmp:=tmp+'..';
                  mydata.StudMast.Edit;                         //showmessage('2');
                  mydata.StudMastClCode.Value:=mydata.CLMastUPClass.Value;
                  if mydata.CLMast.Locate('ClCode',mydata.StudMastClCode.Value,[]) then                  //showmessage('3');
                      if mydata.StudMastClCode.Value=1
                      then s:=' :- Admitted to 'else s:=' :- Promoted to '   //showmessage('4');
                  else s:=' :- Passed out. ';                    //showmessage('5');
                  end; //-2 showmessage('6');
              end  //-1
          else s:=' :- Detained in ';   //         end
          mydata.StudMast.Edit;              //          showmessage(s+mydata.StudMastStudid.AsString);//         if mydata.StudMast.State in [dsInsert,dsEdit] then    //           showmessage('yes');
          if mydata.StudMastRemark.IsNull then
              mydata.StudMastRemark.Value:=(dte+s+mydata.StudMaststCLDESC.Value)
          else
              mydata.StudMastRemark.Value:=mydata.StudMastRemark.Value+#13+
                                      (dte+s+mydata.StudMaststCLDESC.Value);
          mydata.StudMastUpGrdYr.Value:=dte;
          if mydata.StudMastNOTERMS.Value<>-1 then
              mydata.StudMastNOTERMS.Value:=0;
          mydata.StudMast.Post;
          end;               // outermost if
    memo1.Lines.add(tmp);
    mydata.qryLkUp.Next;
    end; //end while            //        mydata.StudMast.Post;
    Mydata.qryLkup.Close;
   // mydata.myconn.Rollback;
    if cnt=0 then
        begin
        if clfrom=clto then
          showmessage('Class '+DBLookUpComboBox1.Text+' had been upgraded earlier.')
        else
        showmessage('Classes '+DBLookUpComboBox1.Text+' to '+DBLookUpComboBox2.Text+' had been upgraded earlier.')
        end
    else
        showmessage('Classes Upgraded Successfully...');
  end;
end;

end.
