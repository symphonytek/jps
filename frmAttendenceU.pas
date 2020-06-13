unit frmAttendenceU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons,dateUtils;

type
  TfrmAttendence = class(TForm)
    Label15: TLabel;
    Memo1: TMemo;
    btnSearch: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    BitBtn3: TBitBtn;
    btnPrint: TBitBtn;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAttendence: TfrmAttendence;

implementation

uses MyDataU;

{$R *.dfm}

procedure TfrmAttendence.FormActivate(Sender: TObject);
begin
mydata.tbTeacher1.Open;
mydata.tbttable1.Open;
mydata.tbttable2.open;;
mydata.tbTabsent.Open;
end;

procedure TfrmAttendence.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  mydata.tbTeacher1.close;
  mydata.tbttable1.close;
  mydata.tbttable2.close;
  mydata.tbTabsent.close;
end;

procedure TfrmAttendence.btnSearchClick(Sender: TObject);
var dt,flag,p:integer;
begin
memo1.Lines.Clear;
dt:=dayoftheweek(date);flag:=0;//i:=1;
//nop:=mfile.ReadInteger('General','No of Periods',0);
mydata.tbttable1.Filtered:=false;
mydata.tbttable1.Filter:='Day='+inttostr(dt);
mydata.tbttable1.Filtered:=true;

mydata.tbttable1.First;
while not mydata.tbttable1.Eof do
begin
//memo1.lines.Add('teacher and period'+mydata.tbttable1tchname.Value+mydata.tbttable1Period.AsString);
  if mydata.tbTeacher1.Locate('TID',mydata.tbttable1Teacher.Value,[]) then
  begin
         if (mydata.tbTeacher1Abs.Value='A') then
         begin
         //memo1.Lines.Add('Replacement for Teacher :'+mydata.tbTeacher1Desc.Value);
         p:=mydata.tbttable1Period.Value;
         mydata.tbTeacher1.First;
          while not mydata.tbTeacher1.Eof do
          begin
             if (mydata.tbTeacher1Abs.Value='P') then
                  if not mydata.tbttable2.Locate('Period;Day;Teacher',vararrayof([p,dt,mydata.tbTeacher1TID.Value]),[]) then
                  begin
                   memo1.Lines.Add('Name of the Teacher     : '+mydata.tbteacher1descr.value);
                   memo1.Lines.Add('Period     : '+inttostr(p));
                   flag:=1;
                  end;
          mydata.tbTeacher1.Next;
          end;
        end;
  end;
mydata.tbttable1.Next;
end;
 if flag=0 then memo1.Lines.Add('No teacher is Free');




{ tbttable1.First;
      tbTeacher1.First;
        while not tbTeacher1.Eof do
        begin
        memo1.Lines.Add(' ');
          if (mydata.tbTeacher1Abs.Value='P') then
           begin
              memo1.Lines.Add('Name of the Teacher     : '+tbTeacher1Desc.AsString);
              i:=1;
             while (i<=nop) do
             begin
             if not tbttable1.Locate('Period;Day;Teacher',vararrayof([i,dt,tbTeacher1TID.Value]),[]) then
                      begin
                      memo1.Lines.Add('Period     : '+inttostr(i));
                      flag:=1;
                      end;
             inc(i);
             end;
            end;
        tbTeacher1.Next;
        end;
 end;
 if flag=0 then memo1.Lines.Add('No teacher is Free');}
end;

procedure TfrmAttendence.BitBtn1Click(Sender: TObject);
begin
mydata.tbTeacher1.First;
while not mydata.tbteacher1.Eof do
begin
mydata.tbteacher1.Edit;
mydata.tbTeacher1Abs.Value:='P';
mydata.tbTeacher1.Post;
mydata.tbTeacher1.Next;
end;
end;

procedure TfrmAttendence.BitBtn3Click(Sender: TObject);
begin
mydata.tbTabsent.First;
  while not mydata.tbTabsent.Eof do
  begin
  if mydata.tbTeacher1.Locate('TID',mydata.tbTabsentTID.Value,[]) then
  mydata.tbTeacher1.Edit;
  mydata.tbTeacher1Abs.Value :='A';
  mydata.tbTeacher1.post;
  mydata.tbTabsent.Next;
  end;
end;

procedure TfrmAttendence.btnPrintClick(Sender: TObject);
begin
try
Memo1.Lines.SaveToFile('PRN');
except
ShowMessage('Printer not Responding');
end;
end;

end.
