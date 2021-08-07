unit UfTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.ExtCtrls;

type
  TfTarefa2 = class(TForm)
    GroupBox1: TGroupBox;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Panel1: TPanel;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    ProgressBar2: TProgressBar;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TTread1 = class(TThread)
  private
  Count : Integer;
  procedure tread1;
  protected
  procedure execute; override;
  public
  var intervalo : integer;

  end;
type
  TTread2 = class(TThread)
  private
  Count : Integer;
  procedure tread2;
  protected
  procedure execute; override;
  public
  var intervalo : integer;

  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}


{ TTread1 }

procedure TTread1.execute;
var
i: integer;
begin
for i := 1 to 100 do
begin
sleep(intervalo);
self.Count := i;
Synchronize(self.tread1);
end;
end;

procedure TTread1.tread1;
begin
     fTarefa2.ProgressBar1.Max:=100;
     fTarefa2.ProgressBar1.Position:=Self.Count;
     fTarefa2.Label1.Caption := 'Contador: ' + intToStr(self.Count);


end;

procedure TfTarefa2.Button1Click(Sender: TObject);
var
Tr1:TTread1;
Tr2:TTread2;
begin

Tr1:=TTread1.Create(false);
Tr1.intervalo :=SpinEdit1.Value;
Tr1.Resume;


Tr2:=TTread2.Create(false);
Tr2.intervalo :=SpinEdit2.Value;
Tr2.Resume;


end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
destroy;
end;

{ TTread2 }

procedure TTread2.execute;
var
i: integer;
begin
for i := 1 to 100 do
begin
sleep(intervalo);
self.Count := i;
Synchronize(self.tread2);
end;
end;

procedure TTread2.tread2;
begin
     fTarefa2.ProgressBar2.Max:=100;
     fTarefa2.ProgressBar2.Position:=Self.Count;
     fTarefa2.Label2.Caption := 'Contador: ' + intToStr(self.Count);

end;

end.
