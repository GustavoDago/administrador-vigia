object FEquipos: TFEquipos
  Left = 24
  Top = 22
  Width = 754
  Height = 564
  HorzScrollBar.ButtonSize = 2
  VertScrollBar.ButtonSize = 2
  ActiveControl = GrillaUsu
  Caption = 'Administrador de Equipos Vigía'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  PrintScale = poPrintToFit
  ShowHint = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 238
    Top = 25
    Width = 9
    Height = 512
    Cursor = crHSplit
    Beveled = True
    ResizeStyle = rsUpdate
  end
  object Label20: TLabel
    Left = 575
    Top = 87
    Width = 165
    Height = 16
    Caption = 'Regulador Voltaje Alternador'
  end
  object Label34: TLabel
    Left = 575
    Top = 136
    Width = 90
    Height = 15
    Caption = 'Funcionamiento'
  end
  object Label35: TLabel
    Left = 575
    Top = 185
    Width = 87
    Height = 15
    Caption = 'Observaciones'
  end
  object Label36: TLabel
    Left = 575
    Top = 233
    Width = 87
    Height = 15
    Caption = 'Próximo control'
  end
  object Paginas: TPageControl
    Left = 0
    Top = 25
    Width = 238
    Height = 512
    ActivePage = Usuarios
    Align = alLeft
    MultiLine = True
    TabOrder = 0
    OnChange = PaginasChange
    object Usuarios: TTabSheet
      Caption = '&Usuarios'
      object Splitter2: TSplitter
        Left = 0
        Top = 281
        Width = 230
        Height = 6
        Cursor = crVSplit
        Align = alTop
        ResizeStyle = rsUpdate
      end
      object arbol: TTreeView
        Left = 0
        Top = 287
        Width = 230
        Height = 173
        Align = alClient
        BorderWidth = 1
        HideSelection = False
        Indent = 19
        ReadOnly = True
        RowSelect = True
        TabOrder = 1
        OnChange = arbolChange
        OnEnter = arbolEnter
        OnExit = arbolExit
        OnExpanded = arbolExpanded
      end
      object GrillaUsu: TDBGrid
        Tag = 1
        Left = 0
        Top = 0
        Width = 230
        Height = 281
        Align = alTop
        DataSource = Datos.DataUsu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEnter = PaginasChange
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nombre'
            Width = 170
            Visible = True
          end>
      end
    end
    object Articulos: TTabSheet
      Caption = '&Artículos'
      ImageIndex = 1
      object Grillarti: TDBGrid
        Left = 0
        Top = 0
        Width = 230
        Height = 460
        Align = alClient
        DataSource = Datos.Datarti
        Options = [dgTitles, dgColumnResize, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codiart'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descripart'
            Visible = True
          end>
      end
    end
    object Localidades: TTabSheet
      Caption = '&Localidades'
      ImageIndex = 2
      object GrillaLoca: TDBGrid
        Left = 0
        Top = 0
        Width = 230
        Height = 460
        Align = alClient
        DataSource = Datos.Dataloca
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodigoPostal'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Localidad'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'provincia'
            Visible = True
          end>
      end
    end
    object Informe: TTabSheet
      Caption = 'Informe'
      ImageIndex = 3
      object Label45: TLabel
        Left = 19
        Top = 27
        Width = 92
        Height = 15
        Caption = 'Seleccione mes'
      end
      object Label46: TLabel
        Left = 19
        Top = 278
        Width = 230
        Height = 16
        Caption = 'Para refrescar los datos, pulse actualizar'
      end
      object meses: TListBox
        Left = 19
        Top = 45
        Width = 160
        Height = 202
        ExtendedSelect = False
        ItemHeight = 16
        Items.Strings = (
          'ENERO'
          'FEBRERO'
          'MARZO'
          'ABRIL'
          'MAYO'
          'JUNIO'
          'JULIO'
          'AGOSTO'
          'SEPTIEMBRE'
          'OCTUBRE'
          'NOVIEMBRE'
          'DICIEMBRE')
        TabOrder = 0
        OnClick = mesesClick
      end
      object actualizar: TButton
        Left = 19
        Top = 301
        Width = 81
        Height = 31
        Caption = 'Actualizar'
        TabOrder = 1
        OnClick = actualizarClick
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 746
    Height = 25
    AutoSize = True
    ButtonWidth = 126
    Caption = 'ToolBar1'
    EdgeBorders = [ebBottom]
    EdgeOuter = esNone
    HotImages = ImageList1
    Images = ImageList1
    List = True
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    object Ordenar: TComboBox
      Left = 0
      Top = 2
      Width = 129
      Height = 24
      Hint = 'Ordenado por...'
      ItemHeight = 16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = 'Código Usuario'
      OnChange = OrdenarChange
      Items.Strings = (
        'Código Usuario'
        'Nombre')
    end
    object Buscador: TDBEdit
      Left = 129
      Top = 2
      Width = 96
      Height = 22
      Hint = 'Buscar...'
      CharCase = ecUpperCase
      DataField = 'Codigo'
      DataSource = Datos.Databus
      MaxLength = 6
      TabOrder = 2
      OnChange = BuscadorChange
      OnExit = BuscadorExit
    end
    object ToolButton4: TToolButton
      Left = 225
      Top = 2
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object nav: TDBNavigator
      Left = 233
      Top = 2
      Width = 72
      Height = 22
      VisibleButtons = [nbInsert, nbDelete, nbEdit]
      Align = alLeft
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Insertar'
        'Borrar'
        'Editar'
        'Grabar'
        'Cancelar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      BeforeAction = navBeforeAction
      OnClick = navClick
    end
    object ToolButton3: TToolButton
      Left = 305
      Top = 2
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 17
      Style = tbsSeparator
    end
    object BImprime: TToolButton
      Left = 313
      Top = 2
      Caption = 'Impresiones'
      ImageIndex = 10
    end
    object BPantalla: TToolButton
      Left = 439
      Top = 2
      Caption = 'Imprimir Pantalla'
      ImageIndex = 16
      OnClick = BPantallaClick
    end
    object ToolButton2: TToolButton
      Left = 565
      Top = 2
      Width = 5
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object BAcerca: TToolButton
      Left = 570
      Top = 2
      Caption = 'Acerca de...'
      ImageIndex = 17
      OnClick = BAcercaClick
    end
  end
  object Panelventanas: TPanel
    Left = 247
    Top = 25
    Width = 499
    Height = 512
    Align = alClient
    BevelOuter = bvSpace
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    ParentBiDiMode = False
    TabOrder = 2
    object mostrador: TNotebook
      Left = 1
      Top = 30
      Width = 493
      Height = 477
      Align = alClient
      PageIndex = 1
      TabOrder = 0
      OnPageChanged = mostradorPageChanged
      object TPage
        Left = 0
        Top = 0
        Caption = 'Usuario'
        object Label1: TLabel
          Left = 13
          Top = 13
          Width = 108
          Height = 16
          Caption = 'Código Usuario'
        end
        object Label2: TLabel
          Left = 13
          Top = 61
          Width = 60
          Height = 15
          Caption = 'Nombre'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 13
          Top = 123
          Width = 100
          Height = 15
          Caption = 'Código Postal'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 13
          Top = 150
          Width = 68
          Height = 15
          Caption = 'Localidad'
          FocusControl = DBLookupComboBox1
        end
        object Label6: TLabel
          Left = 13
          Top = 187
          Width = 68
          Height = 15
          Caption = 'Teléfono'
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 13
          Top = 211
          Width = 36
          Height = 15
          Caption = 'Cuit'
          FocusControl = DBEdit6
        end
        object Label9: TLabel
          Left = 13
          Top = 249
          Width = 35
          Height = 15
          Caption = 'Notas'
          FocusControl = DBMemo1
        end
        object Label3: TLabel
          Left = 13
          Top = 93
          Width = 76
          Height = 15
          Caption = 'Dirección'
          FocusControl = DBEdit3
        end
        object DBText1: TDBText
          Left = 123
          Top = 13
          Width = 69
          Height = 32
          Alignment = taCenter
          DataField = 'Codigo'
          DataSource = Datos.DataUsu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 123
          Top = 61
          Width = 241
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Nombre'
          DataSource = Datos.DataUsu
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 123
          Top = 93
          Width = 191
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Direccion'
          DataSource = Datos.DataUsu
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 123
          Top = 123
          Width = 58
          Height = 24
          DataField = 'CodigoPostal'
          DataSource = Datos.DataUsu
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 123
          Top = 150
          Width = 191
          Height = 24
          DataField = 'Nloca'
          DataSource = Datos.DataUsu
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 123
          Top = 181
          Width = 104
          Height = 24
          DataField = 'Telefono'
          DataSource = Datos.DataUsu
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 123
          Top = 211
          Width = 104
          Height = 24
          DataField = 'Cuit'
          DataSource = Datos.DataUsu
          MaxLength = 13
          TabOrder = 5
        end
        object DBMemo1: TDBMemo
          Left = 13
          Top = 274
          Width = 351
          Height = 42
          DataField = 'Notas'
          DataSource = Datos.DataUsu
          TabOrder = 6
        end
        object BRegistro: TBitBtn
          Left = 14
          Top = 387
          Width = 118
          Height = 46
          Caption = '1er Registro'
          TabOrder = 7
          Visible = False
          OnClick = BRegistroClick
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF
            FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF
            FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000FFFFFFFFFFFF
            FFFFF000000000000000FFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFF000000FF
            FFFFFF0BBB0F000000000FF07777700FFFFFFF0BBB0FFFFFFFFF0F077777770F
            FFFFFF00000000000000F07777777700FFFFFF09999999999999F07777777700
            FFFFFFF0999999999999F0007777777000FFFFF0999999999999000007777777
            700FFFF0999999999999000007777777700FFFF0999999999999000077777777
            770FFFFF09999999999900007777777777000FFF099999999999000077777777
            77770FF00000000000000000007777777777000F000000000000000000777777
            7770F0FF00FFFFFFFFFF000000077770070FF00000FFFFFFFFFF000000007700
            000FFFFFF00FFFFFFFFF000000000777770FFFFFF00FFFFFFFFF000000000000
            770FFFFFF00FFFFFFFFF00000000000000FFFFFFF0F0FFFFFFFF000000000000
            00FFFFFFFF00FFFFFFFF000000000000FFFFFFFFFF0000000000FF000000000F
            FFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Articulo'
        object Label11: TLabel
          Left = 29
          Top = 29
          Width = 87
          Height = 16
          Caption = 'Código Artículo'
          FocusControl = MART
        end
        object Label12: TLabel
          Left = 181
          Top = 29
          Width = 68
          Height = 16
          Caption = 'Descripción'
          FocusControl = DBEdit8
        end
        object Label13: TLabel
          Left = 29
          Top = 93
          Width = 84
          Height = 15
          Caption = 'Precio Unitario'
          FocusControl = DBEdit9
        end
        object Label14: TLabel
          Left = 135
          Top = 93
          Width = 91
          Height = 15
          Caption = 'Bonificación (%)'
          FocusControl = DBEdit10
        end
        object Label15: TLabel
          Left = 248
          Top = 93
          Width = 33
          Height = 15
          Caption = 'Costo'
          FocusControl = DBEdit11
        end
        object Label16: TLabel
          Left = 29
          Top = 147
          Width = 77
          Height = 15
          Caption = 'Ganancia (%)'
          FocusControl = DBEdit12
        end
        object Label17: TLabel
          Left = 135
          Top = 147
          Width = 73
          Height = 15
          Caption = 'Precio Venta'
          FocusControl = DBEdit13
        end
        object VART: TDBText
          Left = 29
          Top = 61
          Width = 152
          Height = 26
          DataField = 'codiart'
          DataSource = Datos.Datarti
        end
        object MART: TDBEdit
          Left = 29
          Top = 50
          Width = 152
          Height = 24
          CharCase = ecUpperCase
          DataField = 'codiart'
          DataSource = Datos.Datarti
          TabOrder = 0
          Visible = False
        end
        object DBEdit8: TDBEdit
          Left = 181
          Top = 50
          Width = 234
          Height = 24
          CharCase = ecUpperCase
          DataField = 'descripart'
          DataSource = Datos.Datarti
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 29
          Top = 110
          Width = 94
          Height = 24
          DataField = 'punit'
          DataSource = Datos.Datarti
          TabOrder = 2
        end
        object DBEdit10: TDBEdit
          Left = 135
          Top = 110
          Width = 92
          Height = 24
          DataField = 'bonifica'
          DataSource = Datos.Datarti
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 248
          Top = 110
          Width = 91
          Height = 24
          DataField = 'costo'
          DataSource = Datos.Datarti
          TabOrder = 4
        end
        object DBEdit12: TDBEdit
          Left = 29
          Top = 166
          Width = 94
          Height = 24
          DataField = 'ganancia'
          DataSource = Datos.Datarti
          TabOrder = 5
        end
        object DBEdit13: TDBEdit
          Left = 135
          Top = 166
          Width = 92
          Height = 24
          DataField = 'pventa'
          DataSource = Datos.Datarti
          TabOrder = 6
        end
        object Elegirtipoequipo: TDBRadioGroup
          Left = 29
          Top = 208
          Width = 228
          Height = 129
          Caption = 'Tipo de equipo:'
          DataField = 'Tipoequipo'
          DataSource = Datos.Datarti
          Items.Strings = (
            'Protector &Motor'
            'Protector &Neumáticos'
            'Climatizador &Viesa'
            'Control &Cosechadoras')
          TabOrder = 7
          Values.Strings = (
            'M'
            'N'
            'V'
            'C')
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Garantia'
        object Label21: TLabel
          Left = 29
          Top = 29
          Width = 66
          Height = 16
          Caption = 'Nº Garantía'
          FocusControl = Gar
        end
        object Label22: TLabel
          Left = 181
          Top = 29
          Width = 36
          Height = 16
          Caption = 'Fecha'
          FocusControl = Fecha
        end
        object Gar: TDBEdit
          Left = 29
          Top = 61
          Width = 121
          Height = 24
          DataField = 'ngarantia'
          DataSource = Datos.DataGar
          TabOrder = 0
        end
        object Fecha: TDBEdit
          Left = 181
          Top = 61
          Width = 90
          Height = 24
          DataField = 'fecompra'
          DataSource = Datos.DataGar
          MaxLength = 8
          TabOrder = 1
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Control'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 70
          Align = alTop
          TabOrder = 0
          object Label41: TLabel
            Left = 13
            Top = 10
            Width = 36
            Height = 15
            Caption = 'Fecha'
            FocusControl = DBEdit17
          end
          object Label40: TLabel
            Left = 118
            Top = 10
            Width = 87
            Height = 15
            Caption = 'Próximo control'
            FocusControl = DBEdit32
          end
          object DBEdit17: TDBEdit
            Left = 13
            Top = 27
            Width = 87
            Height = 24
            DataField = 'Fecha'
            DataSource = Datos.DataControles
            MaxLength = 8
            TabOrder = 0
          end
          object DBEdit32: TDBEdit
            Left = 118
            Top = 27
            Width = 78
            Height = 24
            DataField = 'Proxctrl'
            DataSource = Datos.DataControles
            MaxLength = 8
            TabOrder = 1
          end
        end
        object PaginasControl: TPageControl
          Left = 0
          Top = 70
          Width = 493
          Height = 407
          ActivePage = TabSheet1
          Align = alClient
          TabOrder = 1
          object TabSheet1: TTabSheet
            Caption = 'Instalación'
            object Label39: TLabel
              Left = 10
              Top = 263
              Width = 87
              Height = 15
              Caption = 'Observaciones'
            end
            object Label10: TLabel
              Left = 10
              Top = 10
              Width = 133
              Height = 15
              Caption = 'Presión de Aire Turbina'
              FocusControl = DBEdit14
            end
            object Label18: TLabel
              Left = 10
              Top = 58
              Width = 45
              Height = 15
              Caption = 'Tablero'
              FocusControl = DBEdit15
            end
            object Label19: TLabel
              Left = 10
              Top = 107
              Width = 113
              Height = 16
              Caption = 'Instalación Eléctrica'
              FocusControl = DBEdit16
            end
            object Label37: TLabel
              Left = 10
              Top = 156
              Width = 165
              Height = 15
              Caption = 'Regulador Voltaje Alternador'
              FocusControl = DBEdit29
            end
            object Label38: TLabel
              Left = 10
              Top = 205
              Width = 90
              Height = 15
              Caption = 'Funcionamiento'
              FocusControl = DBEdit30
            end
            object DBMemo3: TDBMemo
              Left = 10
              Top = 283
              Width = 324
              Height = 61
              DataField = 'observigia'
              DataSource = Datos.DataControles
              TabOrder = 0
            end
            object DBEdit14: TDBEdit
              Left = 10
              Top = 29
              Width = 114
              Height = 24
              DataField = 'preairetur'
              DataSource = Datos.DataControles
              TabOrder = 1
            end
            object DBEdit15: TDBEdit
              Left = 10
              Top = 78
              Width = 223
              Height = 24
              DataField = 'tablero'
              DataSource = Datos.DataControles
              TabOrder = 2
            end
            object DBEdit16: TDBEdit
              Left = 10
              Top = 125
              Width = 223
              Height = 24
              DataField = 'instelectr'
              DataSource = Datos.DataControles
              TabOrder = 3
            end
            object DBEdit29: TDBEdit
              Left = 10
              Top = 175
              Width = 223
              Height = 24
              DataField = 'regvolalte'
              DataSource = Datos.DataControles
              TabOrder = 4
            end
            object DBEdit30: TDBEdit
              Left = 10
              Top = 225
              Width = 223
              Height = 24
              DataField = 'funcionami'
              DataSource = Datos.DataControles
              TabOrder = 5
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Sensores'
            ImageIndex = 1
            object Label24: TLabel
              Left = 10
              Top = 10
              Width = 156
              Height = 15
              Caption = 'Sensor Temperatura Aceite'
              FocusControl = DBEdit20
            end
            object Label25: TLabel
              Left = 10
              Top = 58
              Width = 126
              Height = 15
              Caption = 'Sensor Presión Aceite'
              FocusControl = DBEdit21
            end
            object Label26: TLabel
              Left = 10
              Top = 107
              Width = 163
              Height = 16
              Caption = 'Sensor Temperatura Cilindro'
              FocusControl = DBEdit22
            end
            object DBEdit20: TDBEdit
              Left = 10
              Top = 29
              Width = 151
              Height = 24
              DataField = 'stemaceite'
              DataSource = Datos.DataControles
              TabOrder = 0
            end
            object DBEdit21: TDBEdit
              Left = 10
              Top = 78
              Width = 261
              Height = 24
              DataField = 'spreaceite'
              DataSource = Datos.DataControles
              TabOrder = 1
            end
            object DBEdit22: TDBEdit
              Left = 10
              Top = 125
              Width = 261
              Height = 24
              DataField = 'stemcilind'
              DataSource = Datos.DataControles
              TabOrder = 2
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Cilindros'
            ImageIndex = 2
            object Label28: TLabel
              Left = 10
              Top = 10
              Width = 52
              Height = 15
              Caption = 'Cilindro 1'
              FocusControl = DBEdit23
            end
            object Label29: TLabel
              Left = 10
              Top = 58
              Width = 52
              Height = 15
              Caption = 'Cilindro 2'
              FocusControl = DBEdit24
            end
            object Label30: TLabel
              Left = 10
              Top = 107
              Width = 52
              Height = 16
              Caption = 'Cilindro 3'
              FocusControl = DBEdit25
            end
            object Label31: TLabel
              Left = 196
              Top = 10
              Width = 52
              Height = 15
              Caption = 'Cilindro 4'
              FocusControl = DBEdit26
            end
            object Label32: TLabel
              Left = 196
              Top = 58
              Width = 52
              Height = 15
              Caption = 'Cilindro 5'
              FocusControl = DBEdit27
            end
            object Label33: TLabel
              Left = 196
              Top = 107
              Width = 52
              Height = 16
              Caption = 'Cilindro 6'
              FocusControl = DBEdit28
            end
            object DBEdit23: TDBEdit
              Left = 10
              Top = 29
              Width = 151
              Height = 24
              DataField = 'cil1'
              DataSource = Datos.DataControles
              TabOrder = 0
            end
            object DBEdit24: TDBEdit
              Left = 10
              Top = 78
              Width = 151
              Height = 24
              DataField = 'cil2'
              DataSource = Datos.DataControles
              TabOrder = 1
            end
            object DBEdit25: TDBEdit
              Left = 10
              Top = 125
              Width = 151
              Height = 24
              DataField = 'cil3'
              DataSource = Datos.DataControles
              TabOrder = 2
            end
            object DBEdit26: TDBEdit
              Left = 196
              Top = 29
              Width = 149
              Height = 24
              DataField = 'cil4'
              DataSource = Datos.DataControles
              TabOrder = 3
            end
            object DBEdit27: TDBEdit
              Left = 196
              Top = 78
              Width = 149
              Height = 24
              DataField = 'cil5'
              DataSource = Datos.DataControles
              TabOrder = 4
            end
            object DBEdit28: TDBEdit
              Left = 196
              Top = 125
              Width = 149
              Height = 24
              DataField = 'cil6'
              DataSource = Datos.DataControles
              TabOrder = 5
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Registro'
        object Label27: TLabel
          Left = 29
          Top = 93
          Width = 50
          Height = 15
          Caption = 'Vehículo'
          FocusControl = DBEdit19
        end
        object Label23: TLabel
          Left = 29
          Top = 29
          Width = 41
          Height = 16
          Caption = 'Equipo'
          FocusControl = DBLookupComboBox2
        end
        object DBEdit19: TDBEdit
          Left = 29
          Top = 107
          Width = 296
          Height = 24
          CharCase = ecUpperCase
          DataField = 'vehiculo'
          DataSource = Datos.DataReg
          TabOrder = 1
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 29
          Top = 51
          Width = 296
          Height = 24
          DataField = 'Nequipo'
          DataSource = Datos.DataReg
          DropDownRows = 16
          ListField = 'codiart; descripart'
          TabOrder = 0
        end
        object Memo: TMemo
          Left = 10
          Top = 293
          Width = 301
          Height = 97
          Lines.Strings = (
            '')
          TabOrder = 2
          Visible = False
        end
        object Panel1: TPanel
          Left = 29
          Top = 147
          Width = 316
          Height = 70
          BevelOuter = bvNone
          TabOrder = 3
          object BGarantia: TBitBtn
            Left = 10
            Top = 13
            Width = 150
            Height = 45
            Caption = 'Crear Garantía'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BGarantiaClick
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF70008888FFFFFFFFFFFFFFFFFFFFFFF770770
              008888FFFFFFFFFFFFFFFFFFFF707777770008888FFFFFFFFFFFFFFFF7707777
              777770008888FFFFFFFFFFFFF7077777777777770008888FFFFFFFFF77077777
              777777777770008888FFFFFF707777007777777700777700088FFFF770777777
              0007777777007777700FFFF7077777777770077777770077770FFF7707770077
              777770007777770070FFFF7077777700077777770007777770FFF77077777777
              70007777777007770FFFF7077777777777770007777777770FFF770777000777
              7777777007777770FFFF7077770BB0777777777777777770FFFF7077770BB000
              777777777777770FFFFF077777700CCC077777777777770FFFFF000777770CCC
              C0777777777770FFFFFFFFF0000770CCCC077777777770FFFFFFFFFFFFF0000C
              0000777777770FFFFFFFFFFFFFFFFF000000077777770FFFFFFFFFFFFFFFFFF0
              0CCCC0000770FFFFFFFFFFFFFFFFFFF00CCCCC0FF000FFFFFFFFFFFFFFFFFFFF
              0CCCCCC0FFFFFFFFFFFFFFFFFFFFFFFFF0CCCCCC0FFFFFFFFFFFFFFFFFFFFFFF
              FF0CCCCC0FFFFFFFFFFFFFFFFFFFFFFFFFF0CCCCC0FFFFFFFFFFFFFFFFFFFFFF
              FFFF0CCCC0FFFFFFFFFFFFFFFFFFFFFFFFFFF0C000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object BControl: TBitBtn
            Left = 166
            Top = 13
            Width = 141
            Height = 45
            Caption = '1er Control'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BControlClick
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              04000000000000020000120B0000120B00001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF88FFFFFFFFFFFFFFFFFFFFFFFFFFFFF88F88FFFFFFFFFFFFFF
              FFFFFFFFFFFF88F8FF8FFFFFFFFFFFFFFFFFFFFFFFF88F8F8F8FFF0000000000
              000000000088F8F8F800F0808080808080808080888F8F8F8080000000000000
              0000000088F8F8F800F0808080808080808080888F8F8F808080000000000999
              99900088F8F88800F0F00080808999999999988F8F8880808080080809999008
              080999F8F888FFF0F0F000809990808080808999888FFFF08080080099000000
              0000089888FFFFF0F0F0008998888888888800899FFFFFF08080080998888888
              8888080998080800F0F000998880000000880080999999908080089908800000
              00880808999FFF90F0F000998880000000880080999FFF908080089908800000
              00880808999FFF90F0000099888000000088008099999990800F089908800000
              008808089908080000FF000998888888888800899000000000FFFFF998888888
              888808099FFFFFFFFFFFFFFF9900000000000099FFFFFFFFFFFFFFFF99908080
              80808999FFFFFFFFFFFFFFFFF99998080809999FFFFFFFFFFFFFFFFFFFF99999
              99999FFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Localidades'
        object Label42: TLabel
          Left = 29
          Top = 29
          Width = 81
          Height = 16
          Caption = 'Código Postal'
          FocusControl = MCP
        end
        object Label43: TLabel
          Left = 29
          Top = 82
          Width = 57
          Height = 15
          Caption = 'Localidad'
          FocusControl = DBEdit36
        end
        object Label44: TLabel
          Left = 29
          Top = 129
          Width = 54
          Height = 15
          Caption = 'Provincia'
        end
        object VCP: TDBText
          Left = 29
          Top = 51
          Width = 94
          Height = 28
          Alignment = taRightJustify
          DataField = 'CodigoPostal'
          DataSource = Datos.Dataloca
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MCP: TDBEdit
          Left = 29
          Top = 51
          Width = 94
          Height = 24
          DataField = 'CodigoPostal'
          DataSource = Datos.Dataloca
          TabOrder = 0
          Visible = False
        end
        object DBEdit36: TDBEdit
          Left = 29
          Top = 100
          Width = 182
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Localidad'
          DataSource = Datos.Dataloca
          TabOrder = 1
        end
        object DBComboBox2: TDBComboBox
          Left = 29
          Top = 146
          Width = 182
          Height = 24
          DataField = 'provincia'
          DataSource = Datos.Dataloca
          ItemHeight = 16
          Items.Strings = (
            'BUENOS AIRES'
            'CAPITAL FEDERAL'
            'CATAMARCA'
            'CHACO'
            'CHUBUT'
            'CORDOBA'
            'CORRIENTES'
            'ENTRE RIOS'
            'FORMOSA'
            'JUJUY'
            'LA PAMPA'
            'LA RIOJA'
            'MENDOZA'
            'MISIONES'
            'NEUQUEN'
            'RIO NEGRO'
            'SALTA'
            'SAN JUAN'
            'SAN LUIS'
            'SANTA CRUZ'
            'SANTA FE'
            'SANTIAGO DEL ESTERO'
            'TIERRA DEL FUEGO'
            'TUCUMAN')
          Sorted = True
          TabOrder = 2
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Informe'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 493
          Height = 477
          Align = alClient
          DataSource = Datos.DataInfo
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Fecha'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nombre'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Codvigia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vehiculo'
              Visible = True
            end>
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Viesa'
        object Label79: TLabel
          Left = 20
          Top = 10
          Width = 36
          Height = 15
          Caption = 'Fecha'
          FocusControl = DBEdit62
        end
        object Label80: TLabel
          Left = 20
          Top = 58
          Width = 125
          Height = 15
          Caption = 'Condensador Filtrante'
          FocusControl = DBEdit63
        end
        object Label81: TLabel
          Left = 20
          Top = 107
          Width = 154
          Height = 16
          Caption = 'Módulo Comando y Control'
          FocusControl = DBEdit64
        end
        object Label82: TLabel
          Left = 20
          Top = 156
          Width = 86
          Height = 15
          Caption = 'Cubre tapizado'
          FocusControl = DBEdit65
        end
        object Label83: TLabel
          Left = 20
          Top = 208
          Width = 54
          Height = 15
          Caption = 'Difusores'
          FocusControl = DBEdit66
        end
        object Label84: TLabel
          Left = 216
          Top = 58
          Width = 41
          Height = 15
          Caption = 'Bomba'
          FocusControl = DBEdit67
        end
        object Label85: TLabel
          Left = 216
          Top = 107
          Width = 70
          Height = 16
          Caption = 'Sensor nivel'
          FocusControl = DBEdit68
        end
        object Label86: TLabel
          Left = 216
          Top = 156
          Width = 116
          Height = 15
          Caption = 'Valvula de retención'
          FocusControl = DBEdit69
        end
        object Label87: TLabel
          Left = 216
          Top = 208
          Width = 44
          Height = 15
          Caption = 'Tanque'
          FocusControl = DBEdit70
        end
        object Label88: TLabel
          Left = 20
          Top = 264
          Width = 87
          Height = 15
          Caption = 'Observaciones'
        end
        object Bevel1: TBevel
          Left = 190
          Top = 79
          Width = 10
          Height = 178
        end
        object DBEdit62: TDBEdit
          Left = 20
          Top = 29
          Width = 102
          Height = 24
          DataField = 'Fecha'
          DataSource = Datos.DataClimatizador
          MaxLength = 8
          TabOrder = 0
        end
        object DBEdit63: TDBEdit
          Left = 20
          Top = 79
          Width = 152
          Height = 24
          DataField = 'Condensador'
          DataSource = Datos.DataClimatizador
          TabOrder = 1
        end
        object DBEdit64: TDBEdit
          Left = 20
          Top = 129
          Width = 152
          Height = 24
          DataField = 'Modulo'
          DataSource = Datos.DataClimatizador
          TabOrder = 2
        end
        object DBEdit65: TDBEdit
          Left = 20
          Top = 175
          Width = 152
          Height = 24
          DataField = 'Cubretapizado'
          DataSource = Datos.DataClimatizador
          TabOrder = 3
        end
        object DBEdit66: TDBEdit
          Left = 20
          Top = 227
          Width = 152
          Height = 24
          DataField = 'Difusores'
          DataSource = Datos.DataClimatizador
          TabOrder = 4
        end
        object DBEdit67: TDBEdit
          Left = 216
          Top = 79
          Width = 151
          Height = 24
          DataField = 'Bomba'
          DataSource = Datos.DataClimatizador
          TabOrder = 5
        end
        object DBEdit68: TDBEdit
          Left = 216
          Top = 129
          Width = 151
          Height = 24
          DataField = 'Sensornivel'
          DataSource = Datos.DataClimatizador
          TabOrder = 6
        end
        object DBEdit69: TDBEdit
          Left = 216
          Top = 175
          Width = 151
          Height = 24
          DataField = 'Valvularetencion'
          DataSource = Datos.DataClimatizador
          TabOrder = 7
        end
        object DBEdit70: TDBEdit
          Left = 216
          Top = 227
          Width = 151
          Height = 24
          DataField = 'Tanque'
          DataSource = Datos.DataClimatizador
          TabOrder = 8
        end
        object DBMemo2: TDBMemo
          Left = 20
          Top = 295
          Width = 350
          Height = 79
          DataField = 'Observaciones'
          DataSource = Datos.DataClimatizador
          TabOrder = 9
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Cosechadoras'
        object Datoscosechadoras: TPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 198
          Align = alTop
          TabOrder = 0
          object Label89: TLabel
            Left = 10
            Top = 10
            Width = 36
            Height = 15
            Caption = 'Fecha'
            FocusControl = DBEdit72
          end
          object Label90: TLabel
            Left = 107
            Top = 10
            Width = 46
            Height = 15
            Caption = 'Tablero'
            FocusControl = DBEdit73
          end
          object Label91: TLabel
            Left = 245
            Top = 10
            Width = 37
            Height = 15
            Caption = 'Sirena'
            FocusControl = DBEdit74
          end
          object Label92: TLabel
            Left = 10
            Top = 70
            Width = 71
            Height = 16
            Caption = 'Sensor tolva'
            FocusControl = DBEdit75
          end
          object Label93: TLabel
            Left = 245
            Top = 70
            Width = 105
            Height = 16
            Caption = 'Sensor sacapajas'
            FocusControl = DBEdit76
          end
          object Label94: TLabel
            Left = 10
            Top = 136
            Width = 87
            Height = 15
            Caption = 'Próximo control'
            FocusControl = DBEdit77
          end
          object Label95: TLabel
            Left = 119
            Top = 136
            Width = 87
            Height = 15
            Caption = 'Observaciones'
            FocusControl = DBEdit78
          end
          object DBEdit72: TDBEdit
            Left = 10
            Top = 29
            Width = 90
            Height = 24
            DataField = 'Fecha'
            DataSource = Datos.DataCosechadoras
            MaxLength = 8
            TabOrder = 0
          end
          object DBEdit73: TDBEdit
            Left = 107
            Top = 29
            Width = 115
            Height = 24
            DataField = 'Tablero'
            DataSource = Datos.DataCosechadoras
            TabOrder = 1
          end
          object DBEdit74: TDBEdit
            Left = 245
            Top = 29
            Width = 115
            Height = 24
            DataField = 'Sirena'
            DataSource = Datos.DataCosechadoras
            TabOrder = 2
          end
          object DBEdit75: TDBEdit
            Left = 10
            Top = 87
            Width = 225
            Height = 24
            DataField = 'Sensortolva'
            DataSource = Datos.DataCosechadoras
            TabOrder = 3
          end
          object DBEdit76: TDBEdit
            Left = 245
            Top = 87
            Width = 227
            Height = 24
            DataField = 'Sensorsacapajas'
            DataSource = Datos.DataCosechadoras
            TabOrder = 4
          end
          object DBEdit77: TDBEdit
            Left = 10
            Top = 156
            Width = 90
            Height = 24
            DataField = 'Proxctrl'
            DataSource = Datos.DataCosechadoras
            MaxLength = 8
            TabOrder = 5
          end
          object DBEdit78: TDBEdit
            Left = 119
            Top = 156
            Width = 354
            Height = 24
            DataField = 'Observaciones'
            DataSource = Datos.DataCosechadoras
            TabOrder = 6
          end
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 198
          Width = 493
          Height = 279
          ActivePage = Derivacion1
          Align = alClient
          TabOrder = 1
          object Derivacion1: TTabSheet
            Caption = 'Derivación 1'
            object Label96: TLabel
              Left = 87
              Top = 0
              Width = 32
              Height = 15
              Caption = 'Rotor'
              FocusControl = DBEdit79
            end
            object Label97: TLabel
              Left = 87
              Top = 49
              Width = 62
              Height = 16
              Caption = 'Trasductor'
              FocusControl = DBEdit80
            end
            object Label98: TLabel
              Left = 87
              Top = 100
              Width = 74
              Height = 15
              Caption = 'Alimentación'
              FocusControl = DBEdit81
            end
            object Label99: TLabel
              Left = 87
              Top = 147
              Width = 33
              Height = 15
              Caption = 'Masa'
              FocusControl = DBEdit82
            end
            object Label100: TLabel
              Left = 87
              Top = 198
              Width = 34
              Height = 15
              Caption = 'Señal'
              FocusControl = DBEdit83
            end
            object DBEdit79: TDBEdit
              Left = 87
              Top = 20
              Width = 153
              Height = 24
              DataField = 'Rotor1'
              DataSource = Datos.DataCosechadoras
              TabOrder = 0
            end
            object DBEdit80: TDBEdit
              Left = 87
              Top = 70
              Width = 153
              Height = 24
              DataField = 'Trasductor1'
              DataSource = Datos.DataCosechadoras
              TabOrder = 1
            end
            object DBEdit81: TDBEdit
              Left = 87
              Top = 119
              Width = 153
              Height = 24
              DataField = 'Alimentacion1'
              DataSource = Datos.DataCosechadoras
              TabOrder = 2
            end
            object DBEdit82: TDBEdit
              Left = 87
              Top = 166
              Width = 153
              Height = 24
              DataField = 'Masa1'
              DataSource = Datos.DataCosechadoras
              TabOrder = 3
            end
            object DBEdit83: TDBEdit
              Left = 87
              Top = 216
              Width = 153
              Height = 24
              DataField = 'Señal1'
              DataSource = Datos.DataCosechadoras
              TabOrder = 4
            end
          end
          object Derivacion2: TTabSheet
            Caption = 'Derivación 2'
            ImageIndex = 1
            object Label101: TLabel
              Left = 87
              Top = 0
              Width = 32
              Height = 15
              Caption = 'Rotor'
              FocusControl = DBEdit84
            end
            object Label102: TLabel
              Left = 87
              Top = 49
              Width = 62
              Height = 16
              Caption = 'Trasductor'
              FocusControl = DBEdit85
            end
            object Label103: TLabel
              Left = 87
              Top = 100
              Width = 74
              Height = 15
              Caption = 'Alimentación'
              FocusControl = DBEdit86
            end
            object Label104: TLabel
              Left = 87
              Top = 147
              Width = 33
              Height = 15
              Caption = 'Masa'
              FocusControl = DBEdit87
            end
            object Label105: TLabel
              Left = 87
              Top = 198
              Width = 34
              Height = 15
              Caption = 'Señal'
              FocusControl = DBEdit88
            end
            object DBEdit84: TDBEdit
              Left = 87
              Top = 20
              Width = 153
              Height = 24
              DataField = 'Rotor2'
              DataSource = Datos.DataCosechadoras
              TabOrder = 0
            end
            object DBEdit85: TDBEdit
              Left = 87
              Top = 70
              Width = 153
              Height = 24
              DataField = 'Trasductor2'
              DataSource = Datos.DataCosechadoras
              TabOrder = 1
            end
            object DBEdit86: TDBEdit
              Left = 87
              Top = 119
              Width = 153
              Height = 24
              DataField = 'Alimentacion2'
              DataSource = Datos.DataCosechadoras
              TabOrder = 2
            end
            object DBEdit87: TDBEdit
              Left = 87
              Top = 166
              Width = 153
              Height = 24
              DataField = 'Masa2'
              DataSource = Datos.DataCosechadoras
              TabOrder = 3
            end
            object DBEdit88: TDBEdit
              Left = 87
              Top = 216
              Width = 153
              Height = 24
              DataField = 'Señal2'
              DataSource = Datos.DataCosechadoras
              TabOrder = 4
            end
          end
          object Derivacion3: TTabSheet
            Caption = 'Derivación 3'
            ImageIndex = 2
            object Label106: TLabel
              Left = 87
              Top = 0
              Width = 32
              Height = 15
              Caption = 'Rotor'
              FocusControl = DBEdit89
            end
            object Label107: TLabel
              Left = 87
              Top = 49
              Width = 62
              Height = 16
              Caption = 'Trasductor'
              FocusControl = DBEdit90
            end
            object Label108: TLabel
              Left = 87
              Top = 100
              Width = 74
              Height = 15
              Caption = 'Alimentación'
              FocusControl = DBEdit91
            end
            object Label109: TLabel
              Left = 87
              Top = 147
              Width = 33
              Height = 15
              Caption = 'Masa'
              FocusControl = DBEdit92
            end
            object Label110: TLabel
              Left = 87
              Top = 198
              Width = 34
              Height = 15
              Caption = 'Señal'
              FocusControl = DBEdit93
            end
            object DBEdit89: TDBEdit
              Left = 87
              Top = 20
              Width = 153
              Height = 24
              DataField = 'Rotor3'
              DataSource = Datos.DataCosechadoras
              TabOrder = 0
            end
            object DBEdit90: TDBEdit
              Left = 87
              Top = 70
              Width = 153
              Height = 24
              DataField = 'Trasductor3'
              DataSource = Datos.DataCosechadoras
              TabOrder = 1
            end
            object DBEdit91: TDBEdit
              Left = 87
              Top = 119
              Width = 153
              Height = 24
              DataField = 'Alimentacion3'
              DataSource = Datos.DataCosechadoras
              TabOrder = 2
            end
            object DBEdit92: TDBEdit
              Left = 87
              Top = 166
              Width = 153
              Height = 24
              DataField = 'Masa3'
              DataSource = Datos.DataCosechadoras
              TabOrder = 3
            end
            object DBEdit93: TDBEdit
              Left = 87
              Top = 216
              Width = 153
              Height = 24
              DataField = 'Señal3'
              DataSource = Datos.DataCosechadoras
              TabOrder = 4
            end
          end
          object Derivacion4: TTabSheet
            Caption = 'Derivación 4'
            ImageIndex = 3
            object Label111: TLabel
              Left = 87
              Top = 0
              Width = 32
              Height = 15
              Caption = 'Rotor'
              FocusControl = DBEdit94
            end
            object Label112: TLabel
              Left = 87
              Top = 49
              Width = 62
              Height = 16
              Caption = 'Trasductor'
              FocusControl = DBEdit95
            end
            object Label113: TLabel
              Left = 87
              Top = 100
              Width = 74
              Height = 15
              Caption = 'Alimentación'
              FocusControl = DBEdit96
            end
            object Label114: TLabel
              Left = 87
              Top = 147
              Width = 33
              Height = 15
              Caption = 'Masa'
              FocusControl = DBEdit97
            end
            object Label115: TLabel
              Left = 87
              Top = 198
              Width = 34
              Height = 15
              Caption = 'Señal'
              FocusControl = DBEdit98
            end
            object DBEdit94: TDBEdit
              Left = 87
              Top = 20
              Width = 153
              Height = 24
              DataField = 'Rotor4'
              DataSource = Datos.DataCosechadoras
              TabOrder = 0
            end
            object DBEdit95: TDBEdit
              Left = 87
              Top = 70
              Width = 153
              Height = 24
              DataField = 'Trasductor4'
              DataSource = Datos.DataCosechadoras
              TabOrder = 1
            end
            object DBEdit96: TDBEdit
              Left = 87
              Top = 119
              Width = 153
              Height = 24
              DataField = 'Alimentacion4'
              DataSource = Datos.DataCosechadoras
              TabOrder = 2
            end
            object DBEdit97: TDBEdit
              Left = 87
              Top = 166
              Width = 153
              Height = 24
              DataField = 'Masa4'
              DataSource = Datos.DataCosechadoras
              TabOrder = 3
            end
            object DBEdit98: TDBEdit
              Left = 87
              Top = 216
              Width = 153
              Height = 24
              DataField = 'Señal4'
              DataSource = Datos.DataCosechadoras
              TabOrder = 4
            end
          end
          object Derivacion5: TTabSheet
            Caption = 'Derivación 5'
            ImageIndex = 4
            object Label116: TLabel
              Left = 87
              Top = 0
              Width = 32
              Height = 15
              Caption = 'Rotor'
              FocusControl = DBEdit99
            end
            object Label117: TLabel
              Left = 87
              Top = 49
              Width = 62
              Height = 16
              Caption = 'Trasductor'
              FocusControl = DBEdit100
            end
            object Label118: TLabel
              Left = 87
              Top = 100
              Width = 74
              Height = 15
              Caption = 'Alimentación'
              FocusControl = DBEdit101
            end
            object Label119: TLabel
              Left = 87
              Top = 147
              Width = 33
              Height = 15
              Caption = 'Masa'
              FocusControl = DBEdit102
            end
            object Label120: TLabel
              Left = 87
              Top = 198
              Width = 34
              Height = 15
              Caption = 'Señal'
              FocusControl = DBEdit103
            end
            object DBEdit99: TDBEdit
              Left = 87
              Top = 20
              Width = 153
              Height = 24
              DataField = 'Rotor5'
              DataSource = Datos.DataCosechadoras
              TabOrder = 0
            end
            object DBEdit100: TDBEdit
              Left = 87
              Top = 70
              Width = 153
              Height = 24
              DataField = 'Trasductor5'
              DataSource = Datos.DataCosechadoras
              TabOrder = 1
            end
            object DBEdit101: TDBEdit
              Left = 87
              Top = 119
              Width = 153
              Height = 24
              DataField = 'Alimentacion5'
              DataSource = Datos.DataCosechadoras
              TabOrder = 2
            end
            object DBEdit102: TDBEdit
              Left = 87
              Top = 166
              Width = 153
              Height = 24
              DataField = 'Masa5'
              DataSource = Datos.DataCosechadoras
              TabOrder = 3
            end
            object DBEdit103: TDBEdit
              Left = 87
              Top = 216
              Width = 153
              Height = 24
              DataField = 'Señal5'
              DataSource = Datos.DataCosechadoras
              TabOrder = 4
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Neumáticos'
        object EncabezadoNeumaticos: TPanel
          Left = 0
          Top = 0
          Width = 493
          Height = 187
          Align = alTop
          TabOrder = 0
          object Label49: TLabel
            Left = 29
            Top = 10
            Width = 37
            Height = 15
            Caption = 'Fecha'
            FocusControl = DBEdit1
          end
          object Label50: TLabel
            Left = 156
            Top = 10
            Width = 60
            Height = 15
            Caption = 'Kilómetros'
            FocusControl = DBEdit7
          end
          object Label51: TLabel
            Left = 29
            Top = 129
            Width = 88
            Height = 15
            Caption = 'Observaciones'
            FocusControl = DBEdit18
          end
          object Label77: TLabel
            Left = 29
            Top = 70
            Width = 46
            Height = 16
            Caption = 'Tablero'
            FocusControl = DBEdit60
          end
          object Label78: TLabel
            Left = 208
            Top = 70
            Width = 125
            Height = 16
            Caption = 'Condensador Filtrante'
            FocusControl = DBEdit61
          end
          object DBEdit1: TDBEdit
            Left = 29
            Top = 29
            Width = 78
            Height = 24
            DataField = 'Fecha'
            DataSource = Datos.DataNeumaticos
            MaxLength = 8
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 156
            Top = 29
            Width = 79
            Height = 24
            DataField = 'Kilometros'
            DataSource = Datos.DataNeumaticos
            TabOrder = 1
          end
          object DBEdit18: TDBEdit
            Left = 29
            Top = 147
            Width = 433
            Height = 24
            DataField = 'Observaciones'
            DataSource = Datos.DataNeumaticos
            TabOrder = 4
          end
          object DBEdit60: TDBEdit
            Left = 29
            Top = 87
            Width = 152
            Height = 24
            DataField = 'Tablero'
            DataSource = Datos.DataNeumaticos
            TabOrder = 2
          end
          object DBEdit61: TDBEdit
            Left = 208
            Top = 87
            Width = 150
            Height = 24
            DataField = 'Condensador'
            DataSource = Datos.DataNeumaticos
            TabOrder = 3
          end
        end
        object Ramales: TPageControl
          Left = 0
          Top = 187
          Width = 493
          Height = 290
          ActivePage = Ramal1
          Align = alClient
          TabOrder = 1
          object Ramal1: TTabSheet
            Caption = 'Ramal 1 Eje Delantero'
            object Label52: TLabel
              Left = 29
              Top = 29
              Width = 84
              Height = 16
              Caption = 'Línea Principal'
              FocusControl = DBEdit37
            end
            object Label53: TLabel
              Left = 29
              Top = 79
              Width = 32
              Height = 15
              Caption = 'Rotor'
              FocusControl = DBEdit38
            end
            object Label54: TLabel
              Left = 29
              Top = 129
              Width = 42
              Height = 15
              Caption = 'Bajada'
              FocusControl = DBEdit39
            end
            object Label55: TLabel
              Left = 29
              Top = 175
              Width = 50
              Height = 15
              Caption = 'Válvulas'
              FocusControl = DBEdit40
            end
            object DBEdit37: TDBEdit
              Left = 29
              Top = 49
              Width = 152
              Height = 24
              DataField = 'Lprincipal1'
              DataSource = Datos.DataNeumaticos
              TabOrder = 0
            end
            object DBEdit38: TDBEdit
              Left = 29
              Top = 100
              Width = 152
              Height = 24
              DataField = 'Rotor1'
              DataSource = Datos.DataNeumaticos
              TabOrder = 1
            end
            object DBEdit39: TDBEdit
              Left = 29
              Top = 147
              Width = 152
              Height = 24
              DataField = 'Bajada1'
              DataSource = Datos.DataNeumaticos
              TabOrder = 2
            end
            object DBEdit40: TDBEdit
              Left = 29
              Top = 198
              Width = 152
              Height = 24
              DataField = 'Valvulas1'
              DataSource = Datos.DataNeumaticos
              TabOrder = 3
            end
          end
          object Ramal2: TTabSheet
            Caption = 'Ramal 2'
            ImageIndex = 1
            object Label56: TLabel
              Left = 20
              Top = 40
              Width = 84
              Height = 15
              Caption = 'Línea Principal'
              FocusControl = DBEdit41
            end
            object Label57: TLabel
              Left = 20
              Top = 87
              Width = 31
              Height = 16
              Caption = 'Rotor'
              FocusControl = DBEdit42
            end
            object Label58: TLabel
              Left = 20
              Top = 136
              Width = 42
              Height = 15
              Caption = 'Bajada'
              FocusControl = DBEdit43
            end
            object Label59: TLabel
              Left = 20
              Top = 186
              Width = 49
              Height = 15
              Caption = 'Válvulas'
              FocusControl = DBEdit44
            end
            object Label60: TLabel
              Left = 227
              Top = 40
              Width = 84
              Height = 15
              Caption = 'Línea Principal'
              FocusControl = DBEdit45
            end
            object Label61: TLabel
              Left = 227
              Top = 87
              Width = 31
              Height = 16
              Caption = 'Rotor'
              FocusControl = DBEdit46
            end
            object Label62: TLabel
              Left = 227
              Top = 136
              Width = 42
              Height = 15
              Caption = 'Bajada'
              FocusControl = DBEdit47
            end
            object Label63: TLabel
              Left = 227
              Top = 186
              Width = 43
              Height = 15
              Caption = 'Válvula'
              FocusControl = DBEdit48
            end
            object Label76: TLabel
              Left = 20
              Top = 20
              Width = 263
              Height = 16
              Caption = 'Eje Tracción                        Eje Auxiliar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit41: TDBEdit
              Left = 20
              Top = 58
              Width = 152
              Height = 24
              DataField = 'Lprincipal2'
              DataSource = Datos.DataNeumaticos
              TabOrder = 0
            end
            object DBEdit42: TDBEdit
              Left = 20
              Top = 107
              Width = 152
              Height = 24
              DataField = 'Rotor2'
              DataSource = Datos.DataNeumaticos
              TabOrder = 1
            end
            object DBEdit43: TDBEdit
              Left = 20
              Top = 156
              Width = 152
              Height = 24
              DataField = 'Bajada2'
              DataSource = Datos.DataNeumaticos
              TabOrder = 2
            end
            object DBEdit44: TDBEdit
              Left = 20
              Top = 208
              Width = 152
              Height = 24
              DataField = 'Valvulas2'
              DataSource = Datos.DataNeumaticos
              TabOrder = 3
            end
            object DBEdit45: TDBEdit
              Left = 227
              Top = 58
              Width = 154
              Height = 24
              DataField = 'Lprinaux'
              DataSource = Datos.DataNeumaticos
              TabOrder = 4
            end
            object DBEdit46: TDBEdit
              Left = 227
              Top = 107
              Width = 154
              Height = 24
              DataField = 'Rotoraux'
              DataSource = Datos.DataNeumaticos
              TabOrder = 5
            end
            object DBEdit47: TDBEdit
              Left = 227
              Top = 156
              Width = 154
              Height = 24
              DataField = 'Bajadaux'
              DataSource = Datos.DataNeumaticos
              TabOrder = 6
            end
            object DBEdit48: TDBEdit
              Left = 227
              Top = 208
              Width = 154
              Height = 24
              DataField = 'Valvulaux'
              DataSource = Datos.DataNeumaticos
              TabOrder = 7
            end
          end
          object Ramal3: TTabSheet
            Caption = 'Ramal 3 Acoplado-Semiremolque'
            ImageIndex = 2
            object Label64: TLabel
              Left = 79
              Top = 20
              Width = 86
              Height = 15
              Caption = 'Válvula Acople'
              FocusControl = DBEdit49
            end
            object Label65: TLabel
              Left = 227
              Top = 20
              Width = 84
              Height = 15
              Caption = 'Línea Principal'
              FocusControl = DBEdit50
            end
            object Label66: TLabel
              Left = 0
              Top = 107
              Width = 31
              Height = 16
              Caption = 'Rotor'
              FocusControl = DBEdit51
            end
            object Label67: TLabel
              Left = 0
              Top = 156
              Width = 42
              Height = 15
              Caption = 'Bajada'
              FocusControl = DBEdit52
            end
            object Label68: TLabel
              Left = 0
              Top = 208
              Width = 49
              Height = 15
              Caption = 'Válvulas'
              FocusControl = DBEdit53
            end
            object Label69: TLabel
              Left = 156
              Top = 107
              Width = 31
              Height = 16
              Caption = 'Rotor'
              FocusControl = DBEdit54
            end
            object Label70: TLabel
              Left = 156
              Top = 156
              Width = 42
              Height = 15
              Caption = 'Bajada'
              FocusControl = DBEdit55
            end
            object Label71: TLabel
              Left = 156
              Top = 208
              Width = 49
              Height = 15
              Caption = 'Válvulas'
              FocusControl = DBEdit56
            end
            object Label72: TLabel
              Left = 314
              Top = 107
              Width = 32
              Height = 16
              Caption = 'Rotor'
              FocusControl = DBEdit57
            end
            object Label73: TLabel
              Left = 314
              Top = 156
              Width = 42
              Height = 15
              Caption = 'Bajada'
              FocusControl = DBEdit58
            end
            object Label74: TLabel
              Left = 314
              Top = 208
              Width = 50
              Height = 15
              Caption = 'Válvulas'
              FocusControl = DBEdit59
            end
            object Label75: TLabel
              Left = 0
              Top = 87
              Width = 302
              Height = 16
              Caption = 'Eje 1                         Eje2                         Eje 3'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit49: TDBEdit
              Left = 79
              Top = 40
              Width = 123
              Height = 24
              DataField = 'Valvulacople'
              DataSource = Datos.DataNeumaticos
              TabOrder = 0
            end
            object DBEdit50: TDBEdit
              Left = 227
              Top = 40
              Width = 154
              Height = 24
              DataField = 'Lprinacoplado'
              DataSource = Datos.DataNeumaticos
              TabOrder = 1
            end
            object DBEdit51: TDBEdit
              Left = 0
              Top = 129
              Width = 150
              Height = 24
              DataField = 'Semirotor1'
              DataSource = Datos.DataNeumaticos
              TabOrder = 2
            end
            object DBEdit52: TDBEdit
              Left = 0
              Top = 175
              Width = 150
              Height = 24
              DataField = 'Semibajada1'
              DataSource = Datos.DataNeumaticos
              TabOrder = 3
            end
            object DBEdit53: TDBEdit
              Left = 0
              Top = 227
              Width = 150
              Height = 24
              DataField = 'Semivalvulas1'
              DataSource = Datos.DataNeumaticos
              TabOrder = 4
            end
            object DBEdit54: TDBEdit
              Left = 156
              Top = 129
              Width = 154
              Height = 24
              DataField = 'Semirotor2'
              DataSource = Datos.DataNeumaticos
              TabOrder = 5
            end
            object DBEdit55: TDBEdit
              Left = 156
              Top = 175
              Width = 154
              Height = 24
              DataField = 'Semibajada2'
              DataSource = Datos.DataNeumaticos
              TabOrder = 6
            end
            object DBEdit56: TDBEdit
              Left = 156
              Top = 227
              Width = 154
              Height = 24
              DataField = 'Semivalvulas2'
              DataSource = Datos.DataNeumaticos
              TabOrder = 7
            end
            object DBEdit57: TDBEdit
              Left = 314
              Top = 129
              Width = 151
              Height = 24
              DataField = 'Semirotor3'
              DataSource = Datos.DataNeumaticos
              TabOrder = 8
            end
            object DBEdit58: TDBEdit
              Left = 314
              Top = 175
              Width = 151
              Height = 24
              DataField = 'Semibajada3'
              DataSource = Datos.DataNeumaticos
              TabOrder = 9
            end
            object DBEdit59: TDBEdit
              Left = 314
              Top = 227
              Width = 151
              Height = 24
              DataField = 'Semivalvulas3'
              DataSource = Datos.DataNeumaticos
              TabOrder = 10
            end
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 493
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 1
    end
  end
  object MenUsu: TPopupMenu
    Images = ImageList1
    Left = 512
    Top = 32
    object Usuario1: TMenuItem
      Caption = 'Usuario'
      ImageIndex = 13
      RadioItem = True
      OnClick = Usuario1Click
    end
    object Usuarioyarbol1: TMenuItem
      Caption = 'Usuario y árbol'
      ImageIndex = 14
      RadioItem = True
      OnClick = Usuarioyarbol1Click
    end
    object ListadodeUsuarios1: TMenuItem
      Caption = 'Listado de Usuarios x Ordenación'
      ImageIndex = 15
      RadioItem = True
      OnClick = ListadodeUsuarios1Click
    end
  end
  object ImageList1: TImageList
    Left = 480
    Top = 32
    Bitmap = {
      494C010112001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001001000000000000028
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7FFF7F007C007CFF7F0000
      FF7F000000000000FF7F00000000FF7F0000F75E000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000007C007CFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75E007C00000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      FF7FFF7F00000000000000000000FF7F00000000007C007C007C007C007C007C
      007C00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00001F001F001F00FF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000007C007C0F3C007C007C007C007C
      007C000000000000FF03FF03000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF03FF03FF03FF03FF030000
      FF7F000000000000FF7FFF7FFF7FFF7F0000007C007C007C007C007C007C007C
      FF03FF0300000000FF03FF03FF0300000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00001F001F00FF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000007C007C007C007C007C00000000
      FF03000000001F00FF03FF03FF03FF030000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      FF7F000000000000FF7FFF7FFF7FFF7F0000F75EF75EF75EF75E00000000F75E
      EF3D0000000000001F000000FF03FF030000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7F0000FF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75EF75EF75E00000000EF3DF75E
      EF3D00000000EF3DEF3DEF3DFF03FF03FF03FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00001F001F001F001F001F001F00
      1F001F001F001F001F001F001F001F0000000000000000000000000000000000
      000000001F000000E03DEF3D00001F00FF03FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75EF75E1F001F001F001F00
      1F001F001F001F001F001F00F75EF75E0000000000000000000000000000E03D
      E03DFF7F0000FF7FFF7FF75EEF3D00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E07F
      E07FE03DFF7F0000F75EEF3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E03D
      E07FE07FE03DEF3DEF3D0000000000000000F229F229F229F229F229F229F229
      F229F229F229F229F229F229F229F229F229F229F229F229F229F229F229F229
      F229F229F229F229F229F229F229F229F2290000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E03DE03DE03D00000000000000000000D84ED84ED84ED84ED84ED84ED84E
      D84ED84ED84ED84ED84ED84ED84ED84ED84ED84ED84ED84ED84ED84ED84ED84E
      D84ED84ED84ED84ED84ED84ED84ED84ED84E0000000000000000000000000000
      000000000000000000000000007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF3DF75E00000000FF7FFF7FFF7F0000000000000000
      00000000000000000000007C007C007C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000EF3DEF01EF01F75E0000FF7FFF7FFF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7FF75E007C007C007CEF3D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000EF01EF01EF01EF010000FF7FFF7FFF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7FF75EF75E007CEF3DEF3D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000F75EF75E00000000
      0000F75E0000EF3DEF3DEF01EF01F75EF75EFF7FFF7FFF7F0000FF7F0000FF7F
      00000000FF7FFF7FFF7FF75E007CEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000F75EF75EF75E0000000000000000F75EF75EF75EF75E0000
      F75EF75E000000000000EF01EF0100000000FF7F0000FF7F0000FF7F0000FF7F
      00000000FF7FFF7FFF7FF75E007CEF3D000000000000000000000000F75EF75E
      00000000000000000000000000000000000000000000000000000000F75EF75E
      0000000000000000F75EF75EF75EF75E0000000000000000F75EF75EF75E0000
      0000F75E000000000000EF01EF0100000000FF7F0000FF7F0000FF7FFF7FFF7F
      FF7F0000000000000000F75E007CEF3D00000000000000000000F75EF75EF75E
      F75E000000000000000000000000000000000000000000000000F75EF75EF75E
      F75E000000000000F75EF75EF75EF75E0000000000000000F75EF75EF75EF75E
      0000F75EF75EF75E0000EF01EF0100000000FF7F0000FF7F0000FF7F0000FF7F
      00000000FF7FFF7F0000F75E007CEF3D000000000000000000000000F75EF75E
      F75E0000000000000000000000000000000000000000000000000000F75EF75E
      F75E000000000000F75EEF3DF75EF75E0000000000000000F75EF75EF75EF75E
      F75E0000F75EF75E0000EF01EF0100000000FF7F0000FF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7F0000F75E007CEF3D000000000000000000000000F75EF75E
      F75EF75E000000000000000000000000000000000000000000000000F75EF75E
      F75EF75E000000000000F75EF75E000000000000000000000000F75EF75EF75E
      F75EF75EF75EF75EF75EEF01EF0100000000FF7F0000FF7F0000000000000000
      FF7FFF7FFF7FFF7F0000F75E007CEF3D000000000000000000000000F75EF75E
      F75EF75EF75E00000000000000000000000000000000000000000000F75EF75E
      F75EF75EF75E0000000000000000000000000000000000000000F75EF75E0000
      F75EF75E0000F75E0000EF01EF01000000000000000000000000000000000000
      FF7F0000000000000000F75E007CEF3D0000000000000000000000000000F75E
      F75EF75EF75EF75E00000000000000000000000000000000000000000000F75E
      F75EF75EF75EF75E0000000000000000000000000000000000000000F75EF75E
      F75EF75EF75EF75E0000EF01EF01000000000000000000000000000000000000
      FF7FFF7FFF7F00000000F75E007CEF3D0000000000000000000000000000F75E
      F75E0000F75E000000000000000000000000000000000000000000000000F75E
      F75E0000F75E0000000000000000000000000000000000000000000000000000
      00000000000000000000EF01EF01000000000000000000000000000000000000
      FF7FFF7FFF7F00000000F75E007CEF3D00000000000000000000000000000000
      F75EF75EF75E0000000000000000000000000000000000000000000000000000
      F75EF75EF75E0000000000000000000000000000000000000000000000000000
      00000000000000000000EF01EF01000000000000000000000000000000000000
      FF7FFF7FFF7F00000000F75E007CEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF01EF01000000000000000000000000000000000000
      00000000000000000000F75E007CEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF01EF01000000000000000000000000000000000000
      00000000000000000000F75E007CEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF01EF01000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F75E1F00000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7F0000000000000000
      00000000000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DF75E00000000000000000000000000000000
      EF3DEF3DEF3D0000F75E1F001F001F0000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7FFF7F00000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75E0000EF3DF75E0000000000000000000000000000
      00000000EF3D00001F001F001F001F00F75EF75E000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7FFF7F00000000000000000000000000000000000000000000
      00000000000000000000000000000000EF3D0000000000000000000000000000
      EF3D0000EF3D1F001F001F001F001F001F00F75E007C00000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7F0000FF7F0000FF7F
      00000000FF7FFF7FFF7F0000000000000000F75EF75EF75EF75EF75EEF3DF75E
      EF3DF75E007CF75E1F001F00F75E00000000000000000000000000000000EF3D
      FF7FEF3D0000000000001F001F00F75E00000000007C007C007C007C007C007C
      007C00000000000000000000000000000000FF7F0000FF7F0000FF7F0000FF7F
      00000000FF7FFF7FFF7F0000000000000000F75EE003F75EF75EF75EF75EF75E
      F75EF75EE003F75EF75EF75EF75E00000000000000000000FF7FFF7FEF3DFF7F
      FF7FFF7FEF3DFF7FEF3D1F001F00F75E0000007C007C0F3C007C007C007C007C
      007C000000000000FF03FF03000000000000FF7F0000FF7F0000FF7FFF7FFF7F
      FF7F00000000000000000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75E000000000000000000000000FF7FFF7FFF7F
      EF3DEF3DFF7F000000001F001F00F75E0000007C007C007C007C007C007C007C
      FF03FF0300000000FF03FF03FF0300000000FF7F0000FF7F0000FF7F0000FF7F
      00000000FF7FFF7F00000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75E00000000000000000000FF7F0000FF7F0000
      EF3DEF3DEF3DFF7FEF3D1F001F00F75E0000007C007C007C007C007C00000000
      FF03000000001F00FF03FF03FF03FF030000FF7F0000FF7F0000FF7FFF7FFF7F
      FF7F0000FF7FFF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7F00000000
      FF7F00000000FF7FEF3D1F001F00F75E0000F75EF75EF75EF75E00000000F75E
      EF3D0000000000001F000000FF03FF030000FF7F0000FF7F0000000000000000
      FF7FFF7FFF7FFF7F0000000000000000000000000000F75EF75EEF3DEF3DEF3D
      EF3DEF3DEF3DEF3D0000F75EF75EF75E00000000FF7FFF7FFF7FEF3D00000000
      EF3D00000000FF7FEF3D1F001F00F75E0000F75EF75EF75E00000000EF3DF75E
      EF3D00000000EF3DEF3DEF3DFF03FF03FF030000000000000000000000000000
      FF7F0000000000000000000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000F75E00000000000000000000FF7F0000FF7FFF7F
      FF7F0000FF7FFF7FEF3D1F001F00F75E00000000000000000000000000000000
      000000001F000000E03DEF3D00001F00FF030000000000000000000000000000
      FF7FFF7FFF7F000000000000000000000000000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000F75E00000000000000000000FF7FEF3DFF7F
      FF7FFF7FFF7FFF7F00001F001F00F75E0000000000000000000000000000E03D
      E03DFF7F0000FF7FFF7FF75EEF3D000000000000000000000000000000000000
      FF7FFF7FFF7F0000000000000000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F0000
      00000000FF7FFF7FEF3D1F001F00F75E0000000000000000000000000000E07F
      E07FE03DFF7F0000F75EEF3D0000000000000000000000000000000000000000
      FF7FFF7FFF7F0000000000000000000000000000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000EF3D000000000000FF7F
      FF7FFF7F0000000000001F001F00F75E0000000000000000000000000000E03D
      E07FE07FE03DEF3DEF3D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7F0000EF3D000000001F001F00F75E00000000000000000000000000000000
      0000E03DE03DE03D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000EF3D000000001F001F00F75E00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DF75E00000000000000000000000000000000
      EF3DEF3DEF3D0000000000000000000000000000000000000000000000000000
      000000000000000000000000EF3D00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75E0000EF3DF75E0000000000000000000000000000
      00000000EF3D0000000000000000000000000000000000000000000000000000
      00000000000000000000EF3DEF3DFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      00000000000000000000000000000000EF3D0000000000000000000000000000
      EF3D0000EF3D0000000000000000000000000000000000000000000000000000
      0000000000000000EF3DEF3DEF3DEF3D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FF75EF75EF75EF75EF75EEF3DF75E
      EF3DF75E007CF75E1F001F00F75E00000000000000000000000000000000EF3D
      FF7FEF3D00000000000000000000000000000000000000000000000000000000
      000000000000EF3DEF3DEF3DEF3D00000000FF7F000000000000000000000000
      000000000000000000000000000000000000F75EE003F75EF75EF75EF75EF75E
      F75EF75EE003F75EF75EF75EF75E00000000000000000000FF7FFF7FEF3DFF7F
      FF7FFF7FEF3DFF7FEF3D00000000000000000000000000000000007C007C007C
      00000000EF3DEF3DEF3DEF3D0000000000000000000000000000000000000000
      000000000000000000000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75E000000000000000000000000FF7FFF7FFF7F
      EF3DEF3DFF7F000000000000000000000000EF3DEF3D007C007C0000EF3DEF3D
      007C007CEF3DEF3DEF3DFF7F0000000000000000000000000000000000000000
      000000000000000000000000000000000000F75EF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75E00000000000000000000FF7F0000FF7F0000
      EF3DEF3DEF3DFF7FEF3D0000000000000000EF3D0000007C0000000000000000
      0000EF3DEF3DEF3DFF7FFF7F000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      E003E003EF3DFF7FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7F00000000
      FF7F00000000FF7FEF3DEF3DEF3D00000000EF3D007CEF3DEF3DEF3DEF3DEF3D
      EF3DEF3D007CEF3DEF3DEF3D000000000000EF3D00000000EF3DEF3D0000EF3D
      FF03FF03EF3DFF7FFF7FFF7F00000000000000000000F75EF75EEF3DEF3DEF3D
      EF3DEF3DEF3DEF3D0000F75EF75EF75E00000000FF7FFF7FFF7FEF3D00000000
      EF3D00000000FF7FEF3DEF3DEF3D00000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007CFF7FFF7F000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000F75E00000000000000000000FF7F0000FF7FFF7F
      FF7F0000FF7FFF7FEF3D0000000000000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007CFF7FFF7F000000000000EF3D00000000EF3DEF3D0000EF3D
      EF3D00000000EF3DFF7FFF7F000000000000000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000F75E00000000000000000000FF7FEF3DFF7F
      FF7FFF7FFF7FFF7F00000000000000000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007CEF3DEF3D000000000000EF3D00000000EF3DEF3D0000EF3D
      EF3D00000000EF3DFF7FFF7F0000000000000000000000000000000000000000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F0000
      00000000FF7FFF7FEF3D0000EF3D000000000000007CEF3DEF3DEF3DEF3DEF3D
      EF3DEF3D007C000000000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D00000000FF7F0000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000EF3D000000000000FF7F
      FF7FFF7F000000000000EF3D00000000000000000000007C0000000000000000
      0000007C007C000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF7F0000EF3D000000000000000000000000000000000000007C007C007C007C
      007C00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000EF3D0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF3DEF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF3DEF3D0000000000000000
      00000000000000000000EF3DEF3DEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000EF3DEF3DEF3DEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF3DEF3DEF3DEF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000000000000000000F75EF75E
      000000000000F75E000000000000000000000000000000000000007C007C007C
      00000000EF3DEF3DEF3DEF3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75E00000000000000000000F75E00000000000000000000F75EF75EF75E
      F75E0000F75EF75E00000000000000000000EF3DEF3D007C007C0000EF3DEF3D
      007C007CEF3DEF3DEF3D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75E00000000000000000000F75E000000000000000000000000F75EF75E
      F75E00000000F75E00000000000000000000EF3D0000007C0000000000000000
      0000EF3DEF3DEF3D00000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      E003E003EF3D0000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000000000000000000F75EF75E
      F75EF75E0000F75EF75EF75E000000000000EF3D007CEF3DEF3DEF3DEF3DEF3D
      EF3DEF3D007CEF3DEF3DEF3D000000000000EF3D00000000EF3DEF3D0000EF3D
      FF03FF03EF3D0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F75EF75E
      F75EF75EF75E0000F75EF75E000000000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007C00000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F75E
      F75EF75EF75EF75EF75EF75EF75E00000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007C00000000000000000000EF3D00000000EF3DEF3D0000EF3D
      EF3D00000000EF3D000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F75E
      F75E0000F75EF75E0000F75E000000000000EF3D007CEF3D0000000000000000
      EF3DEF3DEF3D007CEF3DEF3D000000000000EF3D00000000EF3DEF3D0000EF3D
      EF3D00000000EF3D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      F75EF75EF75EF75EF75EF75E0000000000000000007CEF3DEF3DEF3DEF3DEF3D
      EF3DEF3D007C000000000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007C0000000000000000
      0000007C007C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007C007C007C007C
      007C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF410000040000FFFFE61F3000
      0000FFFF7F21800000001CFF40008000000000FF00000000000000FF00000000
      000000E70000000000000003000000000000064100000000000008C100000000
      000018C0000000000000FF00000000000000FC03000000000000FC0700000000
      FFFFFC0B00000000FFFFFF1700000000FFFBFFFFFEFFFFF30001FFFFFC7FFFE1
      0000FFFFFE3FFFE10000FFFFFF73C2400001FFFFFFC380330001F0FFF0C08033
      0001E07FE04000130011E03FE00000030011C03FC02100030011801F801F0003
      0011801F801F0013E011803F803F0013E011C03FC03F8013E011C03FC03FFC73
      E1F1E07FE07FFFF3E1F1FFFFFFFFFFF3FFFFFFFFFFFFFFF3FFFF0007C001FE21
      FFFF00078000FC201CFF00070000F40000FF00070000E00100FF00070000E001
      00E700070000E0010003001F000080010641001F0000800108C1001FC0008001
      18C0001FF803C001FF00E01FFC01E001FC03E01FFE01C001FC07E01FFF00C001
      FC0BE1FFFFFFFC31FF17E1FFFFFFFC31FFFFFFFFFFFF0000C001FE3FFFFB0000
      8004FC3FFFF10000FFFEF42F800000000003E007000000000003E00700000000
      0003E007000000000003800100000000FFFF800100000000C011800100000000
      F80BC00700000000FC05E00700010000FE03C003803F0000FF01C007C03F0000
      FFFFFC3FE0FF0000FFFFFC3FFFFF0000FFFFFFFFFFFF8003FFFFFFFBFFFF0000
      FFFFFFF3FFFF0000FFFF8000FFFF0000FFFF000080000000F097000000000000
      E00F000800000000E00F001800380000C007000000380000800300180000BFF7
      800300180018EFFB800300010018F7FDC007803F0001F7FDC007C03FFFFFF7FD
      E007E0FFFFFFDFFFFF1FFFFFFFFF800700000000000000000000000000000000
      000000000000}
  end
  object MenuArti: TPopupMenu
    Images = ImageList1
    Left = 512
    Top = 56
    object Artculo1: TMenuItem
      Caption = 'Artículo'
      ImageIndex = 5
      OnClick = Artculo1Click
    end
    object ListadodeArtculosxordenacin1: TMenuItem
      Caption = 'Listado de Artículos x ordenación'
      ImageIndex = 11
      OnClick = ListadodeArtculosxordenacin1Click
    end
  end
  object Menuinfo: TPopupMenu
    Images = ImageList1
    Left = 536
    Top = 56
    object ListadoInforme: TMenuItem
      Caption = 'Listado de controles x ordenación'
      Default = True
      ImageIndex = 6
      OnClick = ListadoInformeClick
    end
  end
  object MenuLoca: TPopupMenu
    Images = ImageList1
    Left = 536
    Top = 32
    object ListadodeLocalidades1: TMenuItem
      Caption = 'Listado de Localidades'
      Default = True
      ImageIndex = 12
      OnClick = ListadodeLocalidades1Click
    end
  end
end
