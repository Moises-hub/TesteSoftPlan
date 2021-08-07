unit Uftarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,FireDAC.DApt;

type
  TFTarefa1 = class(TForm)
    colunas: TMemo;
    tabelas: TMemo;
    condicoes: TMemo;
    sqlGerado: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTarefa1: TFTarefa1;

implementation

{$R *.dfm}

uses spQuery;

procedure TFTarefa1.Button1Click(Sender: TObject);
var
I : Integer;
Query : TspQuery;
begin
Query:=TspQuery.Create(nil);
Query.spCondicoes:=TStringList.Create;
Query.spColunas:=TStringList.Create;
Query.spTabelas:=TStringList.Create;



    for I := 0 to colunas.lines.Count do
        begin

          query.spColunas.text:=query.spColunas.text+colunas.Lines.Strings[i];
          if i+1 <  colunas.lines.Count then
             query.spColunas.text:=query.spColunas.text+','
        end;



      query.spTabelas.add(tabelas.Lines.Strings[0]);


        for I := 0 to condicoes.lines.Count do
        begin

          query.spCondicoes.text:=query.spCondicoes.text+condicoes.Lines.Strings[i];
       

        end;



    sqlGerado.Lines.Text:=Query.lerSql;

end;

procedure TFTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Destroy;
end;

end.
