unit dlgAbsentU;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComCtrls;

type
  TOKRightDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKRightDlg: TOKRightDlg;

implementation

{$R *.DFM}

end.
