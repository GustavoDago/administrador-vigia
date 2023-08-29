unit UnidadReportes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, DBCtrls, StdCtrls, Mask;

type
  TReportes = class(TForm)
    RUsuarios: TQuickRep;
    RArbol: TQuickRep;
    LisUsuarios: TQuickRep;
    RArticulo: TQuickRep;
    LisArticulo: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExprMemo1: TQRExprMemo;
    TitleBand2: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    PageFooterBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRSubDetail1: TQRSubDetail;
    TitleBand3: TQRBand;
    DetailBand2: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
    QRLabel10: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRExprMemo2: TQRExprMemo;
    QRExprMemo3: TQRExprMemo;
    QRExprMemo4: TQRExprMemo;
    TitleBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRExprMemo5: TQRExprMemo;
    TitleBand5: TQRBand;
    ColumnHeaderBand3: TQRBand;
    DetailBand3: TQRBand;
    PageFooterBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr12: TQRExpr;
    LisLocalidades: TQuickRep;
    QRBand1: TQRBand;
    QRLabel30: TQRLabel;
    QRBand2: TQRBand;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRBand3: TQRBand;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRBand4: TQRBand;
    QRExpr23: TQRExpr;
    RInfo: TQuickRep;
    QRBand5: TQRBand;
    QRLabel34: TQRLabel;
    QRBand8: TQRBand;
    QRExpr27: TQRExpr;
    ColumnHeaderBand4: TQRBand;
    DetailBand4: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRSubDetail4: TQRSubDetail;
    QRExprMemo6: TQRExprMemo;
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel34Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reportes: TReportes;

implementation

uses Pdato, Ventanita;

{$R *.DFM}

procedure TReportes.QRLabel1Print(sender: TObject; var Value: String);
begin
        value := 'Datos de ' + Datos.UsuariosNombre.value;
end;

procedure TReportes.QRLabel10Print(sender: TObject; var Value: String);
begin
        value := 'Datos detallados de ' + Datos.UsuariosNombre.value;
end;

procedure TReportes.QRLabel18Print(sender: TObject; var Value: String);
begin
        value := 'Datos del Artículo ' + Datos.Articuloscodiart.value;
end;

procedure TReportes.QRLabel34Print(sender: TObject; var Value: String);
begin
        Value := 'Reporte de Controles a realizarse en ' + Fequipos.Meses.Items[Fequipos.Meses.Itemindex];
end;

end.
