program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  vize in 'vize.pas' {FormGiris};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormGiris, FormGiris);
  Application.Run;
end.
