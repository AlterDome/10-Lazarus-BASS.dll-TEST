unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

{ TForm3 }

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }


procedure TForm3.Button2Click(Sender: TObject);
begin
  //Form2.Show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
    Form3.color:= clInactiveCaption;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
   Form3.Hide;
   //Form1.Show;
end;

end.

