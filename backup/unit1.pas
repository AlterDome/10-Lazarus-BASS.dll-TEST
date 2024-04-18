unit Unit1;

{$mode delphi}

interface

uses
   Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  bass;

{ TForm1 }

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    OpenDialog1: TOpenDialog;
    TrayIcon1: TTrayIcon;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
   Music: PChar;   // for open dialog - form1 play -->

implementation

{$R *.lfm}

{ TForm1 }
//////////////////////////////////////////////
/////////////////////////////////////////////
procedure starta;
begin
      bass_Init(-1, 44100, 0, handle, nil);
      pot := Bass_streamCreateFile(false, PChar(′beissen.wav′),0,0,0);
      Bass_channelPlay(pot, false);

end;

///////////////////////////////////////////////////
/////////////////////////////////////////////////////

procedure TForm1.Button1Click(Sender: TObject);
begin
    Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Form2.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Form1.hide;
    Form2.hide;
   Form3.show;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    // tray
   TrayIcon1.Show;


end;

procedure TForm1.Button5Click(Sender: TObject);

begin
    // Form1. PLAY - >


  if (Music > ' ' )
 then  PlaySound(Music,0,SND_ASYNC or SND_LOOP)

end;



procedure TForm1.Button6Click(Sender: TObject);
begin
     // pause



end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    // STOP
       PlaySound(nil, 0, 0);


end;

procedure TForm1.Button8Click(Sender: TObject);
begin
      // open dialog for Form1 PLAY - >>
        if OpenDialog1.Execute then

StrPCopy(Music,OpenDialog1.FileName);



end;

procedure TForm1.FormCreate(Sender: TObject);
begin
       Form1.color:= clInactiveCaption;
        Form1.caption:="Pleer";

      Bass.BASS_Init(-1, 44100, BASSInit.BASS_DEVICE_DEFAULT, IntPtr.Zero);

end;





end.

