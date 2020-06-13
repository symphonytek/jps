unit splashFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg;

type
  TsplashForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ProgramIcon: TImage;
    Copyright: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  splashForm: TsplashForm;
  i:integer;
const
  lbl:string='Loading';

implementation

{$R *.DFM}

procedure TsplashForm.Timer1Timer(Sender: TObject);
begin
inc(i);
if i>5 then begin i:=0; Label1.Caption:=lbl; end;
Label1.Caption:=Label1.Caption+' .';
end;

end.
