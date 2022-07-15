program EWSS;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  RunElevatedSupport in 'RunElevatedSupport.pas',
  KMSServers in 'KMSServers.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'EWSS — Easy Windows Server Setup Tool';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
