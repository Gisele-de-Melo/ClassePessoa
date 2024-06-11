//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  // Definindo a classe TPessoa
  TPessoa = class
  private
    FNome: String;
    FIdade: Integer;
  public
    // Métodos para definir e exibir propriedades
    procedure SetNome(const Nome: String);
    procedure SetIdade(Idade: Integer);
    procedure ExibirDados;
  end;

  TForm1 = class(TForm)
    btnExibirDados: TButton;
    procedure btnExibirDadosClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TPessoa }

procedure TPessoa.ExibirDados;
begin
  ShowMessage('Nome: ' + FNome + sLineBreak + 'Idade: ' + IntToStr(FIdade));
end;

procedure TPessoa.SetIdade(Idade: Integer);
begin
  FIdade := Idade;
end;

procedure TPessoa.SetNome(const Nome: String);
begin
  FNome := Nome;
end;

{ TForm1 }

procedure TForm1.btnExibirDadosClick(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  // Criando e utilizando um objeto da classe TPessoa
  Pessoa := TPessoa.Create;
  try
    Pessoa.SetNome('João Silva');
    Pessoa.SetIdade(30);
    Pessoa.ExibirDados;
  finally
    Pessoa.Free; // Liberando a memória usada pelo objeto
  end;

end;

end.
