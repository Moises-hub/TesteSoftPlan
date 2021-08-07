unit UfTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageBin;

type
  TfTarefa3 = class(TForm)
    Tab_Projetos: TFDMemTable;
    Tab_ProjetosidProjeto: TIntegerField;
    Tab_ProjetosNomeProjeto: TStringField;
    Tab_ProjetosValor: TCurrencyField;
    DSProjetos: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.Button1Click(Sender: TObject);
var
valor : real;
begin
  valor:=0;
  Tab_Projetos.First;
  while not Tab_Projetos.Eof do
   begin
     Valor := Valor+Tab_ProjetosValor.Value;
     Tab_Projetos.Next;
   end;

   Edit1.Text:=FloatToStrF(valor,ffCurrency,15,2);



end;

procedure TfTarefa3.Button2Click(Sender: TObject);
var
valor,ultValor : real;
 i : integer;
begin
  valor:=0;
  ultValor := 1;
  Tab_Projetos.First;
  ultValor := Tab_ProjetosValor.Value;
  Tab_Projetos.Next;
while not Tab_Projetos.Eof do
   begin



     Valor := Valor+(Tab_ProjetosValor.Value / ultValor);
     ultValor:= Tab_ProjetosValor.Value;
     Tab_Projetos.Next;
   end;


   Edit2.Text:=FloatToStrF(valor,ffCurrency,15,2);

end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
destroy;
end;

end.
