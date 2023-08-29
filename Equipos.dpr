program Equipos;

uses
  Forms,
  Ventanita in 'Ventanita.pas' {FEquipos},
  Pdato in 'Pdato.pas' {Datos: TDataModule},
  UnidadReportes in 'UnidadReportes.pas' {Reportes},
  Acerca_de in 'Acerca_de.pas' {AboutBox};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Administrador de Equipos Vigía 3.0';
  Application.CreateForm(TFEquipos, FEquipos);
  Application.CreateForm(TDatos, Datos);
  Application.CreateForm(TReportes, Reportes);
  Application.Run;
end.
