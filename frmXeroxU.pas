unit frmXeroxU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TfrmXerox = class(TForm)
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmXerox: TfrmXerox;

implementation

{$R *.dfm}

procedure TfrmXerox.FormActivate(Sender: TObject);
begin
Width:=Image1.Width+8;
Height:=Image1.Height+27;
Position:=poDesktopCenter;
end;

end.
