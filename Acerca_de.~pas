unit Acerca_de;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  TAboutBox = class(TForm)
    OKButton: TButton;
    Panel1: TPanel;
    ProgramIcon: TImage;
    Bevel1: TBevel;
    ProductName: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses Ventanita;

{$R *.DFM}

procedure TAboutBox.Button1Click(Sender: TObject);
begin
        Fequipos.BAcerca.tag := 0;
        AboutBox.Close ;
end;

end.

