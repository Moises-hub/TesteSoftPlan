program ProvaDelphiApp;

uses
  Vcl.Forms,
  UFrm_Principal in 'UFrm_Principal.pas' {Frm_Principal},
  spQuery in 'spQuery.pas',
  Uftarefa1 in 'Uftarefa1.pas' {FTarefa1},
  UfTarefa2 in 'UfTarefa2.pas' {fTarefa2},
  UfTarefa3 in 'UfTarefa3.pas' {fTarefa3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.
