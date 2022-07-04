program Plus_Sistem;

uses
  Vcl.Forms,
  uLogin in 'uLogin.pas' {FrmLogin},
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
