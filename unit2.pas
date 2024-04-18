unit Unit2;

{$mode objfpc}{$H+}

interface

uses
   Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  bass;

{ TForm2 }

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
      Form2.color:= clInactiveCaption;
end;

end.

