unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrio1: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    Categoria1: TMenuItem;
    Produto1: TMenuItem;
    N2: TMenuItem;
    mnuFechar: TMenuItem;
    Vendas1: TMenuItem;
    Cliente2: TMenuItem;
    Cliente3: TMenuItem;
    Produto2: TMenuItem;
    Vendapordata1: TMenuItem;
    N3: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
{
  dtmPrincipal := TdtmPrincipal.Create(self);
  dtmPrincipal.conexaoDB.SQLHourGlass:=True;
  dtmPrincipal.conexaoDB.Protocol := 'mssql';
  dtmPrincipal.conexaoDB.LibraryLocation:= 'C:\CursoDelphi\ntwdblib.dll';
  dtmPrincipal.conexaoDB.HostName := '.\KAPTUREALL';
  dtmPrincipal.conexaoDB.Port := 1433;
  dtmPrincipal.conexaoDB.User := 'sa';
  dtmPrincipal.conexaoDB.Password := 'K4ptur34ll';
  dtmPrincipal.conexaoDB.Database := 'vendas';
  dtmPrincipal.conexaoDB.Connected:=True;
}

  dtmPrincipal := TdtmPrincipal.Create(self);
  with dtmPrincipal.conexaoDB do begin
    SQLHourGlass:=True;
    Protocol := 'mssql';
    LibraryLocation:= 'C:\CursoDelphi\ntwdblib.dll';
    HostName := '.\KAPTUREALL';
    Port := 1433;
    User := 'sa';
    Password := 'K4ptur34ll';
    Database := 'vendas';
    Connected:=True;
  end;


end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  //close;
  Application.Terminate;
end;

end.



