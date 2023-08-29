unit Ventanita;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, DBCtrls, StdCtrls, Grids, DBGrids, DBCGrids, Mask,
  ToolWin, ActnList, Menus, ImgList, Buttons;

type
  TFEquipos = class(TForm)
    Paginas: TPageControl;
    Usuarios: TTabSheet;
    Articulos: TTabSheet;
    Localidades: TTabSheet;
    arbol: TTreeView;
    Grillarti: TDBGrid;
    GrillaLoca: TDBGrid;
    Splitter1: TSplitter;
    GrillaUsu: TDBGrid;
    Splitter2: TSplitter;
    ToolBar1: TToolBar;
    nav: TDBNavigator;
    Ordenar: TComboBox;
    Buscador: TDBEdit;
    ToolButton2: TToolButton;
    Panelventanas: TPanel;
    mostrador: TNotebook;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    MART: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Gar: TDBEdit;
    Fecha: TDBEdit;
    Label27: TLabel;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    MCP: TDBEdit;
    DBEdit36: TDBEdit;
    DBComboBox2: TDBComboBox;
    Panel2: TPanel;
    DBText1: TDBText;
    VART: TDBText;
    VCP: TDBText;
    ToolButton4: TToolButton;
    MenUsu: TPopupMenu;
    Usuarioyarbol1: TMenuItem;
    ListadodeUsuarios1: TMenuItem;
    Usuario1: TMenuItem;
    ImageList1: TImageList;
    MenuArti: TPopupMenu;
    Menuinfo: TPopupMenu;
    Artculo1: TMenuItem;
    ListadodeArtculosxordenacin1: TMenuItem;
    ListadoInforme: TMenuItem;
    BRegistro: TBitBtn;
    Informe: TTabSheet;
    DBGrid1: TDBGrid;
    meses: TListBox;
    Label45: TLabel;
    actualizar: TButton;
    Label46: TLabel;
    MenuLoca: TPopupMenu;
    ListadodeLocalidades1: TMenuItem;
    BImprime: TToolButton;
    BPantalla: TToolButton;
    ToolButton3: TToolButton;
    BAcerca: TToolButton;
    Elegirtipoequipo: TDBRadioGroup;
    EncabezadoNeumaticos: TPanel;
    Label49: TLabel;
    DBEdit1: TDBEdit;
    Label50: TLabel;
    DBEdit7: TDBEdit;
    Ramales: TPageControl;
    Ramal1: TTabSheet;
    Ramal2: TTabSheet;
    Ramal3: TTabSheet;
    Label51: TLabel;
    DBEdit18: TDBEdit;
    Label52: TLabel;
    DBEdit37: TDBEdit;
    Label53: TLabel;
    DBEdit38: TDBEdit;
    Label54: TLabel;
    DBEdit39: TDBEdit;
    Label55: TLabel;
    DBEdit40: TDBEdit;
    Label56: TLabel;
    DBEdit41: TDBEdit;
    Label57: TLabel;
    DBEdit42: TDBEdit;
    Label58: TLabel;
    DBEdit43: TDBEdit;
    Label59: TLabel;
    DBEdit44: TDBEdit;
    Label60: TLabel;
    DBEdit45: TDBEdit;
    Label61: TLabel;
    DBEdit46: TDBEdit;
    Label62: TLabel;
    DBEdit47: TDBEdit;
    Label63: TLabel;
    DBEdit48: TDBEdit;
    Label64: TLabel;
    DBEdit49: TDBEdit;
    Label65: TLabel;
    DBEdit50: TDBEdit;
    Label66: TLabel;
    DBEdit51: TDBEdit;
    Label67: TLabel;
    DBEdit52: TDBEdit;
    Label68: TLabel;
    DBEdit53: TDBEdit;
    Label69: TLabel;
    DBEdit54: TDBEdit;
    Label70: TLabel;
    DBEdit55: TDBEdit;
    Label71: TLabel;
    DBEdit56: TDBEdit;
    Label72: TLabel;
    DBEdit57: TDBEdit;
    Label73: TLabel;
    DBEdit58: TDBEdit;
    Label74: TLabel;
    DBEdit59: TDBEdit;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    DBEdit60: TDBEdit;
    Label78: TLabel;
    DBEdit61: TDBEdit;
    Label79: TLabel;
    DBEdit62: TDBEdit;
    Label80: TLabel;
    DBEdit63: TDBEdit;
    Label81: TLabel;
    DBEdit64: TDBEdit;
    Label82: TLabel;
    DBEdit65: TDBEdit;
    Label83: TLabel;
    DBEdit66: TDBEdit;
    Label84: TLabel;
    DBEdit67: TDBEdit;
    Label85: TLabel;
    DBEdit68: TDBEdit;
    Label86: TLabel;
    DBEdit69: TDBEdit;
    Label87: TLabel;
    DBEdit70: TDBEdit;
    Label88: TLabel;
    Datoscosechadoras: TPanel;
    PageControl1: TPageControl;
    Derivacion1: TTabSheet;
    Derivacion2: TTabSheet;
    Derivacion3: TTabSheet;
    Derivacion4: TTabSheet;
    Derivacion5: TTabSheet;
    Label89: TLabel;
    DBEdit72: TDBEdit;
    Label90: TLabel;
    DBEdit73: TDBEdit;
    Label91: TLabel;
    DBEdit74: TDBEdit;
    Label92: TLabel;
    DBEdit75: TDBEdit;
    Label93: TLabel;
    DBEdit76: TDBEdit;
    Label94: TLabel;
    DBEdit77: TDBEdit;
    Label95: TLabel;
    DBEdit78: TDBEdit;
    Label96: TLabel;
    DBEdit79: TDBEdit;
    Label97: TLabel;
    DBEdit80: TDBEdit;
    Label98: TLabel;
    DBEdit81: TDBEdit;
    Label99: TLabel;
    DBEdit82: TDBEdit;
    Label100: TLabel;
    DBEdit83: TDBEdit;
    Label101: TLabel;
    DBEdit84: TDBEdit;
    Label102: TLabel;
    DBEdit85: TDBEdit;
    Label103: TLabel;
    DBEdit86: TDBEdit;
    Label104: TLabel;
    DBEdit87: TDBEdit;
    Label105: TLabel;
    DBEdit88: TDBEdit;
    Label106: TLabel;
    DBEdit89: TDBEdit;
    Label107: TLabel;
    DBEdit90: TDBEdit;
    Label108: TLabel;
    DBEdit91: TDBEdit;
    Label109: TLabel;
    DBEdit92: TDBEdit;
    Label110: TLabel;
    DBEdit93: TDBEdit;
    Label111: TLabel;
    DBEdit94: TDBEdit;
    Label112: TLabel;
    DBEdit95: TDBEdit;
    Label113: TLabel;
    DBEdit96: TDBEdit;
    Label114: TLabel;
    DBEdit97: TDBEdit;
    Label115: TLabel;
    DBEdit98: TDBEdit;
    Label116: TLabel;
    DBEdit99: TDBEdit;
    Label117: TLabel;
    DBEdit100: TDBEdit;
    Label118: TLabel;
    DBEdit101: TDBEdit;
    Label119: TLabel;
    DBEdit102: TDBEdit;
    Label120: TLabel;
    DBEdit103: TDBEdit;
    Bevel1: TBevel;
    Memo: TMemo;
    Panel1: TPanel;
    BGarantia: TBitBtn;
    BControl: TBitBtn;
    DBMemo2: TDBMemo;
    Panel3: TPanel;
    Label41: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label40: TLabel;
    DBEdit32: TDBEdit;
    PaginasControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label39: TLabel;
    DBMemo3: TDBMemo;
    Label24: TLabel;
    DBEdit20: TDBEdit;
    Label25: TLabel;
    DBEdit21: TDBEdit;
    Label26: TLabel;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    DBEdit23: TDBEdit;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    Label30: TLabel;
    DBEdit25: TDBEdit;
    Label31: TLabel;
    DBEdit26: TDBEdit;
    Label32: TLabel;
    DBEdit27: TDBEdit;
    Label33: TLabel;
    DBEdit28: TDBEdit;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label37: TLabel;
    DBEdit29: TDBEdit;
    Label38: TLabel;
    DBEdit30: TDBEdit;
    procedure Hacearbol;
    procedure FormActivate(Sender: TObject);
    procedure navBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure navClick(Sender: TObject; Button: TNavigateBtn);
    procedure PaginasChange(Sender: TObject);
    procedure arbolChange(Sender: TObject; Node: TTreeNode);
    procedure arbolEnter(Sender: TObject);
    procedure OrdenarChange(Sender: TObject);
    procedure BuscadorChange(Sender: TObject);
    procedure Usuario1Click(Sender: TObject);
    procedure Usuarioyarbol1Click(Sender: TObject);
    procedure ListadodeUsuarios1Click(Sender: TObject);
    procedure Artculo1Click(Sender: TObject);
    procedure ListadodeArtculosxordenacin1Click(Sender: TObject);
    procedure ListadoInformeClick(Sender: TObject);
    procedure BRegistroClick(Sender: TObject);
    procedure BGarantiaClick(Sender: TObject);
    procedure BControlClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actualizarClick(Sender: TObject);
    procedure mesesClick(Sender: TObject);
    procedure BuscadorExit(Sender: TObject);
    procedure BPantallaClick(Sender: TObject);
    procedure ListadodeLocalidades1Click(Sender: TObject);
    procedure BAcercaClick(Sender: TObject);
    procedure mostradorPageChanged(Sender: TObject);
    procedure arbolExpanded(Sender: TObject; Node: TTreeNode);
    Procedure reacomodar;
    procedure arbolExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEquipos: TFEquipos;
  cambio: Longint = 1;
  MenUsuItem, MenuArtiItem : TMenuItem;
  anio,mesactual,dia : word;
  posicion: variant;
  el_indice: string;
  elnodo: integer;
  permiso : boolean = false;
implementation

uses Pdato, UnidadReportes, Acerca_de;


{$R *.DFM}

Procedure TFEquipos.Hacearbol;
var nodo1: TTreeNode;
begin

IF Datos.Usuarios.RecordCount = 0 then begin
         BRegistro.Visible := false;
         exit;
end;

{Procedimiento para crear un árbol de relaciones}
With Datos, arbol.Items do begin

        registro.MasterSource := DataUsu;
        Registro.MasterFields := 'Codigo';
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

        Timer1.Enabled := False;
        If Registro.RecordCount = 0 then
                BRegistro.Visible := true
        else
                BRegistro.Visible := false;
        Registro.first;
        memo.Clear ;

        while not Registro.Eof do begin
                nodo1 := Add(nil,RegistroCodigo.AsString  + ', ' +
                                RegistroCodvigia.Value + ', ' +
                                Registrovehiculo.value);
                memo.Lines.Append('R,' + registrocodigo.Asstring);
                Garantias.First ;
                while not Garantias.Eof do begin
                        AddChild(nodo1,'Garantía = ' +
                                Garantiasngarantia.AsString  + ', ' +
                                garantiasfecompra.AsString);
                        memo.lines.Append('G,' + Garantiascodigo.AsString);
                        garantias.next;
                end;
                controles.First ;
                while not controles.eof do begin
                        AddChild(nodo1, 'Control ' + controlesFecha.AsString );
                        memo.lines.Append('M,' + controlescodigo.AsString) ;
                        controles.next;
                end;

                neumaticos.First ;
                while not neumaticos.eof do begin
                        AddChild(nodo1, 'Control ' + neumaticosFecha.AsString );
                        memo.lines.Append ('N,' + neumaticoscodigo.AsString);
                        neumaticos.next;
                end;
                Climatizador.First ;
                while not climatizador.eof do begin
                        AddChild(nodo1, 'Control ' +
                        climatizadorFecha.AsString );
                        memo.lines.append ('V,'+ climatizadorcodigo.asstring);
                        climatizador.next;
                end;
                cosechadoras.First ;
                while not cosechadoras.eof do begin
                        AddChild(nodo1, 'Control ' +
                        cosechadorasFecha.AsString );
                        memo.lines.Append ('C,' + cosechadorascodigo.asstring);
                        cosechadoras.next;
                end;
                Registro.next;
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
        Registro.MasterFields := '';
        registro.MasterSource := nil;
end;
end;

procedure TFEquipos.FormActivate(Sender: TObject);
begin
        Datos.tag := 1;
        MenUsuItem := Usuarioyarbol1;
        MenuArtiItem := Artculo1;
        DecodeDate(now, anio, mesactual, dia);
        meses.ItemIndex := mesactual - 1;
        Fequipos.mesesClick(self) ;
end;

procedure TFEquipos.navBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin


if (nav.DataSource = Datos.DataGar) and
                 (Bgarantia.tag = 0) and (button = nbinsert ) then
                 raise exception.Create('Existe sólo una garantía x cada registro');

if (button = nbinsert) or (button = nbedit) then
        begin
              Paginas.enabled := false;
              ordenar.enabled := false;
              buscador.enabled := false;
              BImprime.Enabled := false;
              BPantalla.Enabled := false;
              BAcerca.Enabled := false;
              nav.VisibleButtons := [nbpost, nbcancel];
        end;
end;

procedure TFEquipos.navClick(Sender: TObject;
  Button: TNavigateBtn);
begin
if (button = nbpost) or (button = nbcancel) then
        begin
              PAginas.enabled := true;
              ordenar.enabled := true;
              BImprime.Enabled := true;
              BPantalla.Enabled := true;
              BAcerca.Enabled := true;
              nav.VisibleButtons := [nbinsert,nbdelete, nbedit];
              buscador.enabled := true;
        end;
end;

procedure TFEquipos.PaginasChange(Sender: TObject);
begin
if nav.Enabled = false then nav.Enabled := true;
if buscador.Visible = false then Buscador.Visible := true;
if paginas.activepage = Usuarios then
        begin
                nav.DataSource := datos.DataUsu ;
                mostrador.ActivePage := 'Usuario';
                BImprime.DropdownMenu := MenUsu;
                with ordenar.Items, datos.Usuarios do begin
                        Clear ;
                        add('Código Usuario');
                        add('Nombre');
                        if IndexFieldNames = 'Codigo' then begin
                                Ordenar.ItemIndex  := 0;
                                Buscador.DataField := 'Codigo';
                                end
                        else begin
                                ordenar.ItemIndex := 1;
                                Buscador.DataField := 'Nombre';
                                end;
                end;
                if Grillausu.Tag = 1 then begin                     {esta seccion permite}
                        datos.Usuarios.AfterScroll(datos.Usuarios);  {leer desde el inicio}
                        Grillausu.tag := 0;                         {el arbol}
                end;
        end;
if paginas.ActivePage = Articulos then
        begin
                nav.DataSource := datos.Datarti ;
                mostrador.ActivePage := 'Articulo';
                BImprime.DropdownMenu := MenuArti;
                with ordenar.Items, Datos.Articulos do begin
                        Clear ;
                        add('Código Artículo');
                        add('Descripción');
                        if IndexFieldNames = 'Codiart' then begin
                                Ordenar.ItemIndex  := 0;
                                Buscador.DataField := 'Codiart';
                                end
                        else begin
                                Ordenar.itemindex := 1;
                                Buscador.DataField := 'Descripart';
                                end;

                end;

        end;
if  paginas.ActivePage = Localidades then
        begin
                nav.DataSource := datos.Dataloca;
                mostrador.ActivePage := 'Localidades';
                BImprime.DropdownMenu := MenuLoca;
                with ordenar.Items, datos.Localidades do begin
                        Clear ;
                        add('Código Postal');
                        add('Localidad');
                        if IndexFieldNames = 'CodigoPostal' then begin
                                Ordenar.ItemIndex  := 0;
                                Buscador.DataField := 'CodigoPostal';
                                end
                        else begin
                                Ordenar.itemindex := 1;
                                buscador.DataField := 'Localidad';
                                end;

                end;
        end;
if paginas.activepage = informe then
        begin
                nav.Enabled := false;
                mostrador.ActivePage := 'Informe';
                BImprime.DropdownMenu := Menuinfo;
                with ordenar.Items, datos.Informe do begin
                        Clear ;
                        add('Fecha');
                        add('Nombre');
                        if IndexFieldNames = 'Fecha' then begin
                                Ordenar.ItemIndex  := 0;
                                buscador.Visible := false;
                                end
                        else begin
                                ordenar.ItemIndex := 1;
                                Buscador.DataField := 'Nombre';
                                end;
                end;
        end;
end;

procedure TFEquipos.arbolChange(Sender: TObject; Node: TTreeNode);
var
b, botones : integer;  {cuantos botones}
codigo,code :integer;
texto,tipo : string;
begin
        if (permiso = false) then exit;
        texto := memo.Lines[node.AbsoluteIndex];
        val(copy(texto,3,length(texto)),codigo,code);
        tipo := copy(texto,0,1);
        if tipo = 'M' then begin
                datos.controles.findnearest([codigo]);
                nav.DataSource := datos.DataControles ;
                mostrador.ActivePage := 'Control';
        end;
        if tipo = 'N' then begin
                datos.neumaticos.findnearest([codigo]);
                nav.DataSource := datos.DataNeumaticos  ;
                mostrador.ActivePage := 'Neumáticos';
        end;
        if tipo = 'V' then begin
                datos.climatizador.findnearest([codigo]);
                nav.DataSource := datos.DataClimatizador ;
                mostrador.ActivePage := 'Viesa';
        end;
        if tipo = 'C' then begin
                datos.cosechadoras.findnearest([codigo]);
                nav.DataSource := datos.DataCosechadoras ;
                mostrador.ActivePage := 'Cosechadoras';
        end;
        if tipo = 'G' then begin
                datos.Garantias.findnearest([codigo]);
                nav.DataSource := datos.DataGar  ;
                mostrador.ActivePage := 'Garantia';
        end;
        if tipo = 'R' then begin
                with datos.Registro do begin
                        IndexFieldNames := 'codigo';
                        findnearest([codigo]);
                        Indexfieldnames := 'Comprador';
                end;
                botones := 0;

                for b := 1  to (node.Count) do
                begin
                      texto := memo.Lines[node.AbsoluteIndex + b];
                      tipo := copy(texto,0,1);
                      if tipo = 'G' then botones := 1
                      else
                        begin
                                botones := botones + 2;
                                break;
                        end;
                end;
                case botones of
                0: begin
                        BGarantia.Visible := true;
                        BControl.Visible := true;
                   end;
                1:
                   Begin
                        BGarantia.Visible := false;
                        BControl.Visible := true;
                   end;
                2:
                   Begin
                        BGarantia.Visible := true;
                        BControl.Visible := false;
                   end;
                 3:
                   Begin
                        BGarantia.Visible := false;
                        BControl.Visible := false;
                   end;
                 end;
                nav.DataSource := datos.DataReg   ;
                mostrador.ActivePage := 'Registro';
        end;
        if node.Focused = false then node.Focused := true;
end;

procedure TFEquipos.arbolEnter(Sender: TObject);
begin
permiso := true;
        if arbol.Items.Count = 0 then exit;
        if arbol.Selected = nil then arbol.Selected := arbol.Items.GetFirstNode;
        FEquipos.arbolChange(self,arbol.Selected);
end;

procedure TFEquipos.OrdenarChange(Sender: TObject);
begin
     case Ordenar.ItemIndex of
           0 :
             begin
                if paginas.ActivePage = Usuarios then begin
                        Datos.Usuarios.IndexFieldNames :=  'Codigo';
                        Buscador.DataField := 'Codigo';
                end;
                if paginas.ActivePage = Articulos then begin
                        Datos.Articulos.IndexFieldNames :=  'Codiart';
                        Buscador.DataField := 'Codiart';
                end;
                if paginas.ActivePage = Localidades then begin
                        Datos.Localidades.IndexFieldNames :=  'CodigoPostal';
                        Buscador.DataField := 'CodigoPostal';
                end;
                if paginas.ActivePage = Informe then begin
                        datos.Informe.IndexFieldNames := 'Fecha';
                        Buscador.visible := false;
                end;
             end;
           1 :
             begin
                if paginas.ActivePage = Usuarios then begin
                        Datos.Usuarios.IndexFieldNames :=  'Nombre';
                        Buscador.DataField := 'Nombre';
                end;
                if paginas.ActivePage = Articulos then begin
                        Datos.Articulos.IndexFieldNames :=  'Descripart';
                        Buscador.DataField := 'Descripart';
                end;
                if paginas.ActivePage = Localidades then begin
                        Datos.Localidades.IndexFieldNames :=  'localidad';
                        Buscador.DataField := 'Localidad';
                end;
                if paginas.ActivePage = Informe then begin
                        if buscador.Visible = false then Buscador.Visible := true;
                        datos.Informe.IndexFieldNames := 'Nombre';
                        Buscador.DataField := 'Nombre';
                end;

             end;
     end;
end;

procedure TFEquipos.BuscadorChange(Sender: TObject);
begin
                if paginas.ActivePage = Usuarios then begin
                        Datos.Usuarios.FindNearest([Buscador.text]) ;
                        mostrador.ActivePage := 'Usuario';
                        fequipos.arbol.Items.Clear ;
                        Fequipos.hacearbol;
                end;
                if paginas.ActivePage = Articulos then
                        Datos.Articulos.FindNearest([Buscador.text]) ;
                if paginas.ActivePage = Localidades then
                        Datos.Localidades.FindNearest([Buscador.text]);

                if paginas.ActivePage = Informe then
                        Datos.informe.FindNearest([Buscador.text]);
end;

procedure TFEquipos.Usuario1Click(Sender: TObject);
begin
with datos.Usuarios do begin
        posicion := datos.Usuarioscodigo.Value;
        disablecontrols;
        el_indice := indexFieldnames;

        Filter := 'codigo = '''+ Datos.UsuariosCodigo.AsString  + '''';
        Filtered := true;
        Reportes.RUsuarios.Print ;
        Filtered := false;

        indexFieldNames := 'Codigo';
        findkey([posicion]);
        Indexfieldnames := el_indice;

        enablecontrols;

end;
end;

procedure TFEquipos.Usuarioyarbol1Click(Sender: TObject);
begin
with datos.Usuarios, datos do begin

        Usuarios.tag:= 2;
        el_indice := indexFieldnames;
        indexFieldNames := 'Codigo';
        registro.MasterSource := DataUsu;
        Registro.MasterFields := 'Codigo';
        controles.MasterSource := DataReg;
        controles.MasterFields := 'Codigo';
        garantias.MasterSource := DataReg;
        Garantias.MasterFields := 'Codigo';


        posicion := datos.Usuarioscodigo.Value;
        Filter := 'codigo = '''+ UsuariosCodigo.AsString  + '''';
        Filtered := true;
        Reportes.RArbol.Print ;
        Filtered := false;

        Usuarios.tag:= 0;
        controles.MasterFields := '';
        controles.MasterSource := nil;
        Garantias.MasterFields := '';
        garantias.MasterSource := nil;
        Registro.MasterFields := '';
        registro.MasterSource := nil;

        findkey([posicion]);
        Indexfieldnames := el_indice;

end;
end;

procedure TFEquipos.ListadodeUsuarios1Click(Sender: TObject);
begin
with datos.Usuarios do begin

        posicion := datos.Usuarioscodigo.Value;
        Disablecontrols;
        el_indice := indexFieldnames;

        Reportes.LisUsuarios.Print ;

        indexFieldNames := 'Codigo';
        findkey([posicion]);
        Indexfieldnames := el_indice;

        Enablecontrols;

end;

end;

procedure TFEquipos.Artculo1Click(Sender: TObject);
begin
with datos.Articulos do begin
        posicion := datos.Articuloscodiart.Value;
        disablecontrols;
        el_indice := indexFieldnames;

        Filter := 'codiart = '''+ Datos.Articuloscodiart.AsString  + '''';
        Filtered := true;
        Reportes.RArticulo.Print ;
        Filtered := false;

        indexFieldNames := 'Codiart';
        findkey([posicion]);
        Indexfieldnames := el_indice;

        enablecontrols;

end;

end;

procedure TFEquipos.ListadodeArtculosxordenacin1Click(Sender: TObject);
begin
with datos.Articulos do begin

        posicion := datos.Articuloscodiart.Value;
        Disablecontrols;
        el_indice := indexFieldnames;

        Reportes.LisArticulo.Print ;

        indexFieldNames := 'Codiart';
        findkey([posicion]);
        Indexfieldnames := el_indice;

        Enablecontrols;
end;
end;

procedure TFEquipos.ListadoInformeClick(Sender: TObject);
begin
with datos.Informe do begin

        posicion := datos.InformeOrden.Value;
        Disablecontrols;
        el_indice := indexFieldnames;

        Reportes.RInfo.Print ;

        indexFieldNames := 'Orden';
        findkey([posicion]);
        Indexfieldnames := el_indice;

        Enablecontrols;
end;

end;

procedure TFEquipos.BRegistroClick(Sender: TObject);
begin
        BRegistro.tag := 1;
        Bgarantia.visible := false;
        BControl.Visible := false;
        nav.DataSource := datos.Datareg;
        Mostrador.ActivePage := 'Registro';
        nav.BtnClick(nbInsert);
end;

procedure TFEquipos.BGarantiaClick(Sender: TObject);
begin
        BGarantia.tag := 1;
        nav.DataSource := datos.DataGar;
        Mostrador.ActivePage := 'Garantia';
        nav.BtnClick(nbInsert);
end;

procedure TFEquipos.BControlClick(Sender: TObject);
begin

        BControl.tag := 1;

        case Elegirtipoequipo.ItemIndex  of
                0: Begin
                        nav.DataSource := datos.DataControles ;
                        Mostrador.ActivePage := 'Control';
                   end;
                1: Begin
                        nav.DataSource := datos.DataNeumaticos  ;
                        Mostrador.ActivePage := 'Neumáticos';
                   end;
                2: Begin
                        nav.DataSource := datos.DataClimatizador  ;
                        Mostrador.ActivePage := 'Viesa';
                   end;
                3: Begin
                        nav.DataSource := datos.DataCosechadoras  ;
                        Mostrador.ActivePage := 'Cosechadoras';
                   end;
        end;



        nav.BtnClick(nbInsert);
end;

procedure TFEquipos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Datos.Busquedas.cancel;
end;

procedure TFEquipos.actualizarClick(Sender: TObject);
begin
        screen.Cursor := crHourGlass;
        Datos.actualiza ;
        screen.Cursor := crDefault;
end;

procedure TFEquipos.mesesClick(Sender: TObject);
begin
        with datos.Informe do begin
        case meses.ItemIndex of
                0 : Filter := 'Mes = ''1''';
                1 : Filter := 'Mes = ''2''';
                2 : Filter := 'Mes = ''3''';
                3 : Filter := 'Mes = ''4''';
                4 : Filter := 'Mes = ''5''';
                5 : Filter := 'Mes = ''6''';
                6 : Filter := 'Mes = ''7''';
                7 : Filter := 'Mes = ''8''';
                8 : Filter := 'Mes = ''9''';
                9 : Filter := 'Mes = ''10''';
               10 : Filter := 'Mes = ''11''';
               11 : Filter := 'Mes = ''12''';
        end;
        end;
end;

procedure TFEquipos.BuscadorExit(Sender: TObject);
begin   {Se utiliza solamente para buscar fechas en el informe}
                if (paginas.ActivePage = Informe) and
                   (Buscador.datafield = 'Fecha') then
                        Datos.informe.FindNearest([datos.BusquedasFecha.value ]);
end;

procedure TFEquipos.BPantallaClick(Sender: TObject);
begin
        Fequipos.print;
end;

procedure TFEquipos.ListadodeLocalidades1Click(Sender: TObject);
begin
with datos.Localidades do begin

        posicion := datos.LocalidadesCodigoPostal.Value;
        Disablecontrols;
        el_indice := indexFieldnames;

        Reportes.LisLocalidades.Print ;

        indexFieldNames := 'CodigoPostal';
        findkey([posicion]);
        Indexfieldnames := el_indice;

        Enablecontrols;
end;
end;

procedure TFEquipos.BAcercaClick(Sender: TObject);
begin
        if BAcerca.Tag = 0 then begin
                AboutBox := TAboutBox.create(Application);
                BAcerca.tag := 1;
        end;
        AboutBox.show;
        AboutBox.Update;
end;

procedure TFEquipos.mostradorPageChanged(Sender: TObject);
begin
case mostrador.PageIndex  of
  {Usuario}     0: Panel2.Caption := 'Datos Usuario';
  {Articulo}    1: Panel2.Caption := 'Equipo Vigía';
  {Garantia}    2: Panel2.Caption := 'Garantía Equipo';
  {Control}     3: Panel2.Caption := 'Control motor';
  {Registro}    4: Panel2.Caption := 'Registro vehículo';
  {Localidades} 5: Panel2.Caption := 'Datos localidad';
  {Informe}     6: Panel2.Caption := 'Informe controles mensuales';
  {Viesa}       7: Panel2.Caption := 'Control Climatizador'  ;
  {Cosechadoras}8: Panel2.Caption := 'Control Rotación cosechadora';
  {Neumáticos}  9: Panel2.Caption := 'Control Protector neumáticos';
end;


end;

procedure TFEquipos.arbolExpanded(Sender: TObject; Node: TTreeNode);
begin
        if nav.tag = 0 then node.Selected := true;
end;

procedure TFEquipos.reacomodar;
begin
     permiso := false;
     arbol.Items.Clear ;
     permiso := true;
     Hacearbol;
     elnodo := memo.Lines.IndexOf(cadena);
     nav.tag := 1; {then Bcontrol.tag := 0;}
        arbol.Selected := arbol.Items[elnodo];
     nav.tag := 0;
end;

procedure TFEquipos.arbolExit(Sender: TObject);
begin
permiso := false;
end;

procedure TFEquipos.FormCreate(Sender: TObject);
begin
        if screen.Width <> 800 then Fequipos.ScaleBy(screen.Width,800);
end;

end.
