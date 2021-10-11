program Convert;

uses
  Forms,
  Convert36 in 'Convert36.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
