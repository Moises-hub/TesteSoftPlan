unit spQuery;

interface

  uses System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.Dataset,
  Firedac.Comp.Client;

type TspQuery = Class(TFDQuery)
  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;
    procedure SetspCondicoes(const Value: TStringList);
    procedure SetspColunas(const Value: TStringList);
    procedure SetspTabelas(const Value: TStringList);
    public
    Property spCondicoes : TStringList read FspCondicoes write SetspCondicoes;
    Property spColunas : TStringList read FspColunas write SetspColunas;
    Property spTabelas : TStringList read FspTabelas write SetspTabelas;
    Function lerSql : String;


End;



implementation

{ TspQuery }



function TspQuery.lerSql : String;
var
tSql : String;
begin

    tSql:='select '+spColunas.Text+' from '+spTabelas.Text+spCondicoes.text;
    Result := tSql;

end;

procedure TspQuery.SetspColunas(const Value: TStringList);
begin
  FspColunas := Value;
end;

procedure TspQuery.SetspCondicoes(const Value: TStringList);
begin
  FspCondicoes := Value;
end;

procedure TspQuery.SetspTabelas(const Value: TStringList);
begin
  FspTabelas := Value;
end;

end.
