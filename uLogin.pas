unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFrmLogin = class(TForm)
    Image1: TImage;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PnlCloseLogin: TPanel;
    EdtUsuarioLogin: TEdit;
    EdtSenhaLogin: TEdit;
    Panel3: TPanel;
    Label1: TLabel;
    CheckSenhaLogin: TCheckBox;
    procedure CheckSenhaLoginClick(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure PnlCloseLoginClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TFrmLogin.CheckSenhaLoginClick(Sender: TObject);
begin
  if CheckSenhaLogin.Checked = true then
 begin
   EdtSenhaLogin.PasswordChar:= #0;
 end
 else
 begin
   EdtSenhaLogin.PasswordChar:= '*';
 end;
end;

procedure TFrmLogin.Panel3Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TFrmLogin.PnlCloseLoginClick(Sender: TObject);
begin
 if ((EdtUsuarioLogin.Text = 'lucas') and (EdtSenhaLogin.Text = '123')) then

  begin
   Close;
   FrmPrincipal.Show;
//   FrmLogin.Visible := False;
  end
    else
  if ((EdtUsuarioLogin.Text <> '') and (EdtSenhaLogin.Text <> '')) then
  begin
    ShowMessage('Usuário ou senha incorreto!');
  end;

  if ((EdtUsuarioLogin.Text = '') and (EdtSenhaLogin.Text = '')) then
  begin
   ShowMessage('Os campos estão vazios');
  end;


end;
end.
