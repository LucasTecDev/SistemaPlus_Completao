unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel4: TPanel;
    Image4: TImage;
    Label4: TLabel;
    Panel5: TPanel;
    Image5: TImage;
    Label5: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uLogin;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  FrmLogin := TFrmLogin.Create(Self);
  FrmLogin.ShowModal;
end;

end.
