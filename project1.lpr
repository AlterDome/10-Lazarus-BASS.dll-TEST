program project1;

{$mode delphi}

uses
  {$IFDEF Unix}{$IFDEF UseCThreads}CThreads, {$ENDIF}{$ENDIF}
  Interfaces,
  Forms, Unit1, Unit2, Unit3
  { Add units here };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Scaled := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

