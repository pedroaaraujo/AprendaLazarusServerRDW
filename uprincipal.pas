unit UPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, uRESTDWBase;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnAtiva: TButton;
    RESTServicePooler1: TRESTServicePooler;
    procedure btnAtivaClick(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

uses
  UDMService;

{ TfrmPrincipal }

procedure TfrmPrincipal.btnAtivaClick(Sender: TObject);
begin
  RESTServicePooler1.ServerMethodClass := TDMService;
  RESTServicePooler1.Active := not RESTServicePooler1.Active;
  btnAtiva.Caption := 'Desativar';
  if not RESTServicePooler1.Active then
  begin
    btnAtiva.Caption := 'Ativar';
  end;
end;

end.

