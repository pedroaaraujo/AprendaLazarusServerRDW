unit UDMService;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, uRESTDWServerEvents,
  uDWDatamodule, uDWJSONObject;

type

  { TDMService }

  TDMService = class(TServerMethodDataModule)
    DWServerEvents1: TDWServerEvents;
    procedure DWServerEvents1EventsolaReplyEvent(var Params: TDWParams;
      var Result: String);
  private

  public

  end;

var
  DMService: TDMService;

implementation

{$R *.lfm}

{ TDMService }

procedure TDMService.DWServerEvents1EventsolaReplyEvent(var Params: TDWParams;
  var Result: String);
begin
  Result := 'Olá ' + Params.ItemsString['nome'].Value;
end;

end.

