unit UFrm_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, UfTarefa2,
  UfTarefa3;

type
  TFrm_Principal = class(TForm)
    FDQuery1: TFDQuery;
    MainMenu1: TMainMenu;
    arefa11: TMenuItem;
    arefa12: TMenuItem;
    arefa21: TMenuItem;
    arefa31: TMenuItem;
    procedure arefa12Click(Sender: TObject);
    procedure arefa21Click(Sender: TObject);
    procedure arefa31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses Uftarefa1;




procedure TFrm_Principal.arefa12Click(Sender: TObject);
begin
FTarefa1:=TFTarefa1.Create(self);
FTarefa1.Show;

end;

procedure TFrm_Principal.arefa21Click(Sender: TObject);
begin
FTarefa2:=TFTarefa2.Create(self);
FTarefa2.Show;

end;

procedure TFrm_Principal.arefa31Click(Sender: TObject);
begin
FTarefa3:=TFTarefa3.Create(self);
fTarefa3.Tab_Projetos.Open;
FTarefa3.Show;
end;

end.
