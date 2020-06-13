unit frmpremarkprocessU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids;

type
  Tfrmmarksheetprocess = class(TForm)
    ProgressBar1: TProgressBar;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    btnlist: TBitBtn;
    procedure btnstartClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnlistClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmarksheetprocess: Tfrmmarksheetprocess;

implementation

uses MyDataU, MainFrmU;

{$R *.dfm}

procedure Tfrmmarksheetprocess.btnstartClick(Sender: TObject);
//var str,tr,recnt,i:integer;
begin
{mydata.qryclstud.Close;
mydata.qryclstud.Params.Items[0].Value:=
mydata.qryclstud.Open;
recnt:=0;

with mydata do
  begin
  tbstudmarkdet.Close;
  tbstudmarkdet.EmptyTable;
  tbstudmarkdet.Open;
  tbclsubdet.Open;
  tbstudmarkdet.First;
  while not clmast.Eof do
  begin
     while not tbclsubdet.Eof do
      begin
      qryclstud.First;
      recnt:=mydata.qryclstud.RecordCount;
      Memo1.Lines.Add('recordcount for query------'+IntToStr(recnt));
      ProgressBar1.Enabled:=true;
      i:=0;
      while not qryclstud.Eof do
        begin
        inc(i);
        ProgressBar1.Position:=trunc(i/recnt*100);
        Label3.Caption:=IntTostr(ProgressBar1.Position);
        //Refresh();
        Label2.Caption:=IntToStr(ProgressBar1.Position);
        tbstudmarkdet.Insert;
        tbstudmarkdetstudid.Value:=mydata.qryclstudStudID.Value;
        tbstudmarkdetcl.Value:=mydata.qryclstudclCaption.Value;
        tbstudmarkdet.Post;
        qryclstud.Next;
        end;
        tbclsubdet.Next;
      end;
      clmast.Next;
  end;
  tbclsubdet.Close;
  tbstudmarkdet.Close;
  end;
  Memo1.Lines.Add('value of qryclstudid outside is'+mydata.qryclstudStudID.AsString);
  Memo1.Lines.Add('value of recnt is'+IntToStr(recnt));
  str:=trunc(mydata.qryclstudStudID.Value-recnt);
  Memo1.Lines.Add('value of str is'+IntToStr(str));
  label2.Caption:='Mark Sheet  No. from'+' '+inttostr(str)+ ' '+'To'+' '+floattostr(mydata.qryclstudStudID.Value)+' '+'Successfully Processed';}
end;

procedure Tfrmmarksheetprocess.FormActivate(Sender: TObject);
begin
label3.Caption:=IntToStr(ProgressBar1.Min);
mydata.StudMast.Open;
//mydata.qryclstud.Open;
mydata.tbstudmarkdet.Open;
mydata.tbclsubdet.Open;
mydata.CLMast.Open;
end;

procedure Tfrmmarksheetprocess.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
mydata.StudMast.Close;
mydata.tbstudmarkdet.Close;
mydata.tbclsubdet.Close;
mydata.CLMast.Close;
//mydata.qryclstud.Close;
ProgressBar1.Position:=0;
end;

procedure Tfrmmarksheetprocess.btnlistClick(Sender: TObject);
var cla,str,tr,recnt,i:integer;

begin

recnt:=0;
with mydata do
  begin
  tbstudmarkdet.Close;
  tbstudmarkdet.EmptyTable;
  tbstudmarkdet.Open;
  tbclsubdet.Open;
  tbstudmarkdet.First;
  while not clmast.Eof do
  begin
  mydata.qryclstud.Close;
  mydata.qryclstud.Params.Items[0].Value:=mydata.CLMastClCode.Value;
  mydata.qryclstud.Open;
     while not tbclsubdet.Eof do
      begin
      qryclstud.First;
      recnt:=mydata.qryclstud.RecordCount;
      Memo1.Lines.Add('recordcount for query------'+IntToStr(recnt));
      ProgressBar1.Enabled:=true;
      i:=0;
      while not qryclstud.Eof do
        begin
        inc(i);
        ProgressBar1.Position:=trunc(i/recnt*100);
        Label3.Caption:=IntTostr(ProgressBar1.Position);
        //Refresh();
        Label2.Caption:=IntToStr(ProgressBar1.Position);
        tbstudmarkdet.Insert;
        tbstudmarkdetstudid.Value:=mydata.qryclstudStudID.Value;
        tbstudmarkdetcl.Value:=mydata.qryclstudclCaption.Value;
        tbstudmarkdet.Post;
        qryclstud.Next;
        end;
        tbclsubdet.Next;
      end;
      clmast.Next;
  end;
  tbclsubdet.Close;
  tbstudmarkdet.Close;
  end;
  Memo1.Lines.Add('value of qryclstudid outside is'+mydata.qryclstudStudID.AsString);
  Memo1.Lines.Add('value of recnt is'+IntToStr(recnt));
  str:=trunc(mydata.qryclstudStudID.Value-recnt);
  Memo1.Lines.Add('value of str is'+IntToStr(str));
  label2.Caption:='Mark Sheet  No. from'+' '+inttostr(str)+ ' '+'To'+' '+floattostr(mydata.qryclstudStudID.Value)+' '+'Successfully Processed';
end;

end.
