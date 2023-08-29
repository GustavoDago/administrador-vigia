unit Pdato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ActnList, ExtCtrls;

type
  TDatos = class(TDataModule)
    Usuarios: TTable;
    Registro: TTable;
    Garantias: TTable;
    Controles: TTable;
    Articulos: TTable;
    Localidades: TTable;
    DataUsu: TDataSource;
    DataReg: TDataSource;
    DataGar: TDataSource;
    DataControles: TDataSource;
    Datarti: TDataSource;
    Dataloca: TDataSource;
    Articuloscodiart: TStringField;
    Articulosdescripart: TStringField;
    Articulosprovedor: TFloatField;
    Articulospunit: TFloatField;
    Articuloscosto: TFloatField;
    Articulosganancia: TFloatField;
    Articulospventa: TFloatField;
    Articulosstockact: TFloatField;
    Articulosstockmin: TFloatField;
    Articulosstockmax: TFloatField;
    Articulosbonifica: TFloatField;
    LocalidadesCodigoPostal: TSmallintField;
    LocalidadesLocalidad: TStringField;
    Localidadesprovincia: TStringField;
    UsuariosCodigo: TFloatField;
    UsuariosNombre: TStringField;
    UsuariosCodigoPostal: TSmallintField;
    UsuariosDireccion: TStringField;
    UsuariosTelefono: TStringField;
    UsuariosCuit: TStringField;
    UsuariosIva: TStringField;
    UsuariosCondicionpago: TBooleanField;
    UsuariosNotas: TMemoField;
    RegistroCodigo: TFloatField;
    RegistroCodvigia: TStringField;
    Registrovehiculo: TStringField;
    GarantiasCodigo: TFloatField;
    Garantiasngarantia: TFloatField;
    Garantiasfecompra: TDateField;
    ControlesOrden: TAutoIncField;
    ControlesCodigo: TFloatField;
    ControlesFecha: TDateField;
    Controlesstemaceite: TStringField;
    Controlesspreaceite: TStringField;
    Controlesstemcilind: TStringField;
    Controlescil1: TStringField;
    Controlescil2: TStringField;
    Controlescil3: TStringField;
    Controlescil4: TStringField;
    Controlescil5: TStringField;
    Controlescil6: TStringField;
    Controlespreairetur: TStringField;
    Controlestablero: TStringField;
    Controlesinstelectr: TStringField;
    Controlesregvolalte: TStringField;
    Controlesfuncionami: TStringField;
    Controlesobservigia: TStringField;
    ControlesProxctrl: TDateField;
    Timer1: TTimer;
    Databus: TDataSource;
    Busquedas: TTable;
    BusquedasCodigo: TFloatField;
    BusquedasNombre: TStringField;
    BusquedasCodigoPostal: TSmallintField;
    BusquedasLocalidad: TStringField;
    BusquedasCodiart: TStringField;
    BusquedasDescripart: TStringField;
    RegistroNequipo: TStringField;
    UsuariosnLoca: TStringField;
    RegistroComprador: TFloatField;
    Informe: TTable;
    DataInfo: TDataSource;
    InformeOrden: TAutoIncField;
    InformeFecha: TDateField;
    InformeNombre: TStringField;
    InformeCodvigia: TStringField;
    InformeVehiculo: TStringField;
    InformeMes: TFloatField;
    BusquedasFecha: TDateField;
    ArticulosTipoequipo: TStringField;
    Cosechadoras: TTable;
    DataNeumaticos: TDataSource;
    Neumaticos: TTable;
    DataCosechadoras: TDataSource;
    Climatizador: TTable;
    DataClimatizador: TDataSource;
    NeumaticosOrden: TAutoIncField;
    NeumaticosCodigo: TFloatField;
    NeumaticosFecha: TDateField;
    NeumaticosKilometros: TFloatField;
    NeumaticosLprincipal1: TStringField;
    NeumaticosRotor1: TStringField;
    NeumaticosBajada1: TStringField;
    NeumaticosValvulas1: TStringField;
    NeumaticosLprincipal2: TStringField;
    NeumaticosRotor2: TStringField;
    NeumaticosBajada2: TStringField;
    NeumaticosValvulas2: TStringField;
    NeumaticosLprinaux: TStringField;
    NeumaticosRotoraux: TStringField;
    NeumaticosBajadaux: TStringField;
    NeumaticosValvulaux: TStringField;
    NeumaticosValvulacople: TStringField;
    NeumaticosLprinacoplado: TStringField;
    NeumaticosSemirotor1: TStringField;
    NeumaticosSemibajada1: TStringField;
    NeumaticosSemivalvulas1: TStringField;
    NeumaticosSemirotor2: TStringField;
    NeumaticosSemibajada2: TStringField;
    NeumaticosSemivalvulas2: TStringField;
    NeumaticosSemirotor3: TStringField;
    NeumaticosSemibajada3: TStringField;
    NeumaticosSemivalvulas3: TStringField;
    NeumaticosObservaciones: TStringField;
    NeumaticosTablero: TStringField;
    NeumaticosCondensador: TStringField;
    ClimatizadorOrden: TAutoIncField;
    ClimatizadorCodigo: TFloatField;
    ClimatizadorFecha: TDateField;
    ClimatizadorCondensador: TStringField;
    ClimatizadorModulo: TStringField;
    ClimatizadorCubretapizado: TStringField;
    ClimatizadorDifusores: TStringField;
    ClimatizadorBomba: TStringField;
    ClimatizadorSensornivel: TStringField;
    ClimatizadorValvularetencion: TStringField;
    ClimatizadorTanque: TStringField;
    ClimatizadorObservaciones: TStringField;
    CosechadorasOrden: TAutoIncField;
    CosechadorasCodigo: TFloatField;
    CosechadorasFecha: TDateField;
    CosechadorasTablero: TStringField;
    CosechadorasSirena: TStringField;
    CosechadorasRotor1: TStringField;
    CosechadorasTrasductor1: TStringField;
    CosechadorasAlimentacion1: TStringField;
    CosechadorasMasa1: TStringField;
    CosechadorasSeal1: TStringField;
    CosechadorasRotor2: TStringField;
    CosechadorasTrasductor2: TStringField;
    CosechadorasAlimentacion2: TStringField;
    CosechadorasMasa2: TStringField;
    CosechadorasSeal2: TStringField;
    CosechadorasRotor3: TStringField;
    CosechadorasTrasductor3: TStringField;
    CosechadorasAlimentacion3: TStringField;
    CosechadorasMasa3: TStringField;
    CosechadorasSeal3: TStringField;
    CosechadorasRotor4: TStringField;
    CosechadorasTrasductor4: TStringField;
    CosechadorasAlimentacion4: TStringField;
    CosechadorasMasa4: TStringField;
    CosechadorasSeal4: TStringField;
    CosechadorasRotor5: TStringField;
    CosechadorasTrasductor5: TStringField;
    CosechadorasAlimentacion5: TStringField;
    CosechadorasMasa5: TStringField;
    CosechadorasSeal5: TStringField;
    CosechadorasSensortolva: TStringField;
    CosechadorasSensorsacapajas: TStringField;
    CosechadorasObservaciones: TStringField;
    CosechadorasProxctrl: TDateField;
    procedure UsuariosAfterScroll(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure ArticulospunitValidate(Sender: TField);
    procedure ArticuloscostoValidate(Sender: TField);
    procedure ControlesNewRecord(DataSet: TDataSet);
    procedure UsuariosBeforeInsert(DataSet: TDataSet);
    procedure UsuariosNewRecord(DataSet: TDataSet);
    procedure RegistroBeforeInsert(DataSet: TDataSet);
    procedure RegistroNewRecord(DataSet: TDataSet);
    procedure RegistroAfterPost(DataSet: TDataSet);
    procedure LocalidadesBeforeInsert(DataSet: TDataSet);
    procedure LocalidadesAfterPost(DataSet: TDataSet);
    procedure ArticulosBeforeInsert(DataSet: TDataSet);
    procedure ArticulosAfterCancel(DataSet: TDataSet);
    procedure RegistroAfterCancel(DataSet: TDataSet);
    procedure GarantiasNewRecord(DataSet: TDataSet);
    procedure GarantiasAfterPost(DataSet: TDataSet);
    procedure GarantiasAfterCancel(DataSet: TDataSet);
    procedure ControlesAfterPost(DataSet: TDataSet);
    procedure ControlesAfterCancel(DataSet: TDataSet);
    procedure actualiza;
    procedure InformeNewRecord(DataSet: TDataSet);
    procedure ArticulosNewRecord(DataSet: TDataSet);
    procedure RegistroBeforeDelete(DataSet: TDataSet);
    procedure UsuariosBeforeDelete(DataSet: TDataSet);
    procedure UsuariosAfterPost(DataSet: TDataSet);
    procedure NeumaticosNewRecord(DataSet: TDataSet);
    procedure CosechadorasNewRecord(DataSet: TDataSet);
    procedure ClimatizadorNewRecord(DataSet: TDataSet);
    procedure NeumaticosAfterPost(DataSet: TDataSet);
    procedure CosechadorasAfterPost(DataSet: TDataSet);
    procedure ClimatizadorAfterPost(DataSet: TDataSet);
    procedure RegistroBeforeEdit(DataSet: TDataSet);
    procedure ClimatizadorAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Datos: TDatos;
  proxi: double;
  Nombreindice, cadena: string;
  elmes, elanio, eldia, hoymes, hoydia, hoyanio : word;
  borraRegistro : Boolean = false;

implementation

uses Ventanita;


{$R *.DFM}

procedure TDatos.UsuariosAfterScroll(DataSet: TDataSet);
begin
        if usuarios.Tag = 2 then exit;
       FEquipos.arbol.Items.Clear ;
       if datos.tag = 1 then
       begin
        Timer1.Enabled := False;
        Timer1.Enabled := True;
       end;
end;

procedure TDatos.Timer1Timer(Sender: TObject);
begin
     fequipos.Hacearbol;

end;

procedure TDatos.ArticulospunitValidate(Sender: TField);
begin
     Articuloscosto.Value := Articulospunit.value *
        (1 - Articulosbonifica.value /100);
end;

procedure TDatos.ArticuloscostoValidate(Sender: TField);
begin
     Articulospventa.Value := Articuloscosto.Value *
        (1 + Articulosganancia.value /100);
end;

procedure TDatos.ControlesNewRecord(DataSet: TDataSet);
begin
        ControlesCodigo.Value :=  RegistroCodigo.Value;
end;

procedure TDatos.UsuariosBeforeInsert(DataSet: TDataSet);
begin
with Usuarios do begin
      tag := 2;
      Nombreindice := indexFieldnames;
      indexFieldNames := 'Codigo';
      last;
      proxi := UsuariosCodigo.value +1;
      IndexFieldnames := Nombreindice;
end;
      if Fequipos.BRegistro.Visible = true then Fequipos.BRegistro.Visible := false;
end;

procedure TDatos.UsuariosNewRecord(DataSet: TDataSet);
begin
        UsuariosCodigo.value := proxi;
        UsuariosCondicionpago.Value := false;
end;

procedure TDatos.RegistroBeforeInsert(DataSet: TDataSet);
begin
with Registro do begin
      indexFieldNames := 'Codigo';
      last;
      proxi := RegistroCodigo.value +1;
      IndexFieldnames := 'Comprador';
end;
Fequipos.Panel1.Visible := false;
end;

procedure TDatos.RegistroNewRecord(DataSet: TDataSet);
begin
        RegistroCodigo.value := proxi;
        RegistroComprador.value := UsuariosCodigo.value;
end;

procedure TDatos.RegistroAfterPost(DataSet: TDataSet);
begin
Fequipos.Panel1.Visible := true;
cadena := 'R,' + registrocodigo.Asstring;
fequipos.reacomodar;
end;

procedure TDatos.LocalidadesBeforeInsert(DataSet: TDataSet);
begin
        fequipos.VCP.visible := false;
        fequipos.MCP.VISIBLE := TRUE;
end;

procedure TDatos.LocalidadesAfterPost(DataSet: TDataSet);
begin
        fequipos.VCP.visible := true;
        fequipos.MCP.VISIBLE := false;
end;

procedure TDatos.ArticulosBeforeInsert(DataSet: TDataSet);
begin
        fequipos.VART.visible := FALSE;
        fequipos.MART.VISIBLE := TRUE;

end;

procedure TDatos.ArticulosAfterCancel(DataSet: TDataSet);
begin
        fequipos.VART.visible := TRUE;
        fequipos.MART.VISIBLE := FALSE;

end;

procedure TDatos.RegistroAfterCancel(DataSet: TDataSet);
begin
with fequipos do begin
        if BRegistro.tag = 1 then begin
                Bregistro.tag := 0;
                mostrador.ActivePage := 'Usuario';
        end;
        Panel1.Visible := true;
end;

end;

procedure TDatos.GarantiasNewRecord(DataSet: TDataSet);
begin
        GarantiasCodigo.Value := RegistroCodigo.Value ;
end;

procedure TDatos.GarantiasAfterPost(DataSet: TDataSet);
begin
cadena := 'G,' + Garantiascodigo.AsString;
fequipos.reacomodar;
end;

procedure TDatos.GarantiasAfterCancel(DataSet: TDataSet);
begin
with fequipos do begin
        if Bgarantia.tag = 1 then begin
                BGarantia.tag := 0;
                arbol.OnEnter(self);
        end;
end;
end;

procedure TDatos.ControlesAfterPost(DataSet: TDataSet);
begin
cadena := 'M,' + controlescodigo.AsString;
fequipos.reacomodar;
end;

procedure TDatos.ControlesAfterCancel(DataSet: TDataSet);
begin
with fequipos do begin
        if Bcontrol.tag = 1 then begin
                Bcontrol.tag := 0;
                arbol.OnEnter(self);
        end;
end;
end;

procedure TDatos.actualiza; {Recrea la base con los controles mensuales}
var lafecha :TDateTime;
begin
        with informe do begin
                close;
                readonly := false;
                Filtered := false;
                disablecontrols;
                open;
                first;
                while not eof do delete;
        end;

        with usuarios do begin
                tag := 2;
                nombreindice := IndexFieldNames;
                IndexfieldNames := 'Codigo';
                first;
        end;

        with registro do begin
                IndexfieldNames := 'codigo';
                first;
        end;

        decodedate(now,hoyanio,hoymes,hoydia);

        with garantias do begin   {este bloque rellena con las garantías}
                tag := 1;
                disablecontrols;
                first;
                while not eof do begin
                        lafecha := Garantiasfecompra.Value;
                        decodedate(lafecha, elanio, elmes, eldia);
                        if not (Garantiasfecompra.value = 0) and
                          (hoyanio = elanio + 1) then begin
                                Registro.FindKey([GarantiasCodigo.value]);
                                Usuarios.FindKey([RegistroComprador.value]);
                                informe.insert;
                                informe.post;
                        end;
                        next;
                end;
                tag := 0;
                enablecontrols;
        end;

        with controles do begin    {este bloque rellena con los controles}
                tag := 1;
                disablecontrols;
                first;
                while not eof do begin
                        lafecha := ControlesProxctrl.Value;
                        decodedate(lafecha, elanio, elmes, eldia);
                        if not (ControlesProxctrl.value = 0) and
                          (hoyanio = elanio) then begin
                                Registro.FindKey([ControlesCodigo.value]);
                                Usuarios.FindKey([RegistroComprador.value]);
                                informe.insert;
                                informe.post;
                        end;
                        next;
                end;
                tag := 0;
                enablecontrols;
        end;

        with cosechadoras do begin    {este bloque rellena con las cosechadoras}
                tag := 1;
                disablecontrols;
                first;
                while not eof do begin
                        lafecha := CosechadorasProxctrl.Value;
                        decodedate(lafecha, elanio, elmes, eldia);
                        if not (CosechadorasProxctrl.value = 0) and
                          (hoyanio = elanio) then begin
                                Registro.FindKey([CosechadorasCodigo.value]);
                                Usuarios.FindKey([RegistroComprador.value]);
                                informe.insert;
                                informe.post;
                        end;
                        next;
                end;
                tag := 0;
                enablecontrols;
        end;
        with usuarios do begin
                tag := 1;
                IndexFieldNames := nombreindice ;
        end;

        registro.IndexfieldNames := 'Comprador';

        with informe do begin
                close;
                readonly := true;
                Filtered := true;
                enablecontrols;
                open;
        end;
end;


procedure TDatos.InformeNewRecord(DataSet: TDataSet);
begin
        InformeMes.Value := elmes;
        InformeNombre.Value := UsuariosNombre.Value ;
        InformeCodvigia.Value := RegistroCodvigia.Value ;
        InformeVehiculo.Value := Registrovehiculo.Value ;
        if garantias.Tag = 1 then
                InformeFecha.Value := Garantiasfecompra.Value;
        if controles.Tag = 1 then
                InformeFecha.Value := ControlesProxctrl.Value;
        if cosechadoras.Tag = 1 then
                informefecha.Value := CosechadorasProxctrl.Value;
end;

procedure TDatos.ArticulosNewRecord(DataSet: TDataSet);
begin
        Articulosprovedor.Value := 403;
end;

procedure TDatos.RegistroBeforeDelete(DataSet: TDataSet);
begin
        controles.MasterSource := DataReg;
        controles.MasterFields := 'Codigo';
        neumaticos.MasterSource := Datareg;
        neumaticos.MasterFields := 'Codigo';
        climatizador.MasterSource := Datareg;
        climatizador.MasterFields := 'Codigo';
        cosechadoras.MasterSource := Datareg;
        cosechadoras.MasterFields := 'Codigo';
        garantias.MasterSource := DataReg;
        Garantias.MasterFields := 'Codigo';
        BorraRegistro := true;

        with controles do begin
                first;
                while not eof do delete;
        end;
        with neumaticos do begin
                first;
                while not eof do delete;
        end;
        with cosechadoras do begin
                first;
                while not eof do delete;
        end;
        With climatizador do begin
                first;
                while not eof do delete;
        end;
        with garantias do begin
                first;
                while not eof do delete;
        end;

        controles.MasterFields := '';
        controles.MasterSource := nil;
        neumaticos.MasterFields := '';
        neumaticos.MasterSource := nil;
        climatizador.MasterFields := '';
        climatizador.MasterSource := nil;
        cosechadoras.MasterFields := '';
        cosechadoras.MasterSource := nil;
        Garantias.MasterFields := '';
        garantias.MasterSource := nil;
        BorraRegistro := False;
end;

procedure TDatos.UsuariosBeforeDelete(DataSet: TDataSet);
begin
with registro do begin
        MasterSource := DataUsu;
        MasterFields := 'Codigo';

        first;
        while not eof do delete;

        MasterFields := '';
        MasterSource := nil;
end;
end;

procedure TDatos.UsuariosAfterPost(DataSet: TDataSet);
begin
        Usuarios.Tag := 0;
        fequipos.hacearbol;
end;

procedure TDatos.NeumaticosNewRecord(DataSet: TDataSet);
begin
        Neumaticoscodigo.Value :=  RegistroCodigo.Value;
end;

procedure TDatos.CosechadorasNewRecord(DataSet: TDataSet);
begin
        CosechadorasCodigo.Value :=  RegistroCodigo.Value;
end;

procedure TDatos.ClimatizadorNewRecord(DataSet: TDataSet);
begin
        ClimatizadorCodigo.Value :=  RegistroCodigo.Value;
end;

procedure TDatos.NeumaticosAfterPost(DataSet: TDataSet);
begin
cadena := 'N,' + neumaticoscodigo.AsString;
fequipos.reacomodar;
end;

procedure TDatos.CosechadorasAfterPost(DataSet: TDataSet);
begin
cadena := 'C,' + Cosechadorascodigo.AsString;
fequipos.reacomodar;
end;

procedure TDatos.ClimatizadorAfterPost(DataSet: TDataSet);
begin
cadena := 'V,' + Climatizadorcodigo.AsString;
fequipos.reacomodar;
end;

procedure TDatos.RegistroBeforeEdit(DataSet: TDataSet);
begin
Fequipos.Panel1.Visible := false;
end;

procedure TDatos.ClimatizadorAfterDelete(DataSet: TDataSet);
begin
if BorraRegistro = true then exit;
with FEquipos do begin
     permiso := false;
     arbol.Items.Clear ;
     permiso := true;
     Hacearbol;
     arbol.OnEnter(self);
end;

end;

end.
