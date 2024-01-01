unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    TrackBar1: TTrackBar;
    Timer1: TTimer;
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDblClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
star=record
    x:integer;
    y:integer;
  end;

var
  Form1: TForm1;
  a,b,c:integer;
  mstar:array [1..100] of star;
implementation

{$R *.dfm}

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
 Timer1.Interval:=TrackBar1.Position;   
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 //////////
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var i:integer;
begin
  A:=random(255);  B:=random(255);  C:=random(255);
{  for I:=1 to 100  do begin
  mstar[i].x:=random(form1.Width);
  mstar[i].y:=random(form1.Height);
  end; }
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var I:integer;
begin
randomize;
//Form1.Canvas.Pixels[Mouse.CursorPos.X,Mouse.CursorPos.Y]:=
 //RGB(255,255,255);
 for i:=1 to 100 do begin
 Form1.Canvas.Pixels[Mouse.CursorPos.X+random(10),Mouse.CursorPos.Y+random(100)]:=
 RGB(255-random(125),255-random(125),random(255));
 Form1.Canvas.Pixels[Mouse.CursorPos.X+random(10),Mouse.CursorPos.Y-random(100)]:=
 RGB(255-random(125),255-random(125),random(255));
  end;
{ Form1.Canvas.Pixels[Mouse.CursorPos.X+2,Mouse.CursorPos.Y+2]:=
 RGB(255,255,255);
 Form1.Canvas.Pixels[Mouse.CursorPos.X+3,Mouse.CursorPos.Y+3]:=
 RGB(255,255,255);  }

 

 end;

procedure TForm1.FormClick(Sender: TObject);
var i:integer;
begin        
Form1.BorderStyle:=bsNone;
Form1.Align:=alClient;
 randomize;
  repeat
    Form1.Canvas.Pixels[100+random(Form1.ClientWidth-200),
    100+random(Form1.ClientHeight-200)] :=
    RGB(random(a),random(b),random(c));
    Application.ProcessMessages;

    {for I:=1 to 100  do
     Form1.Canvas.Pixels[mstar[random(100)].x,mstar[random(100)].y]:=
 RGB(255-random(10),255-random(10),255-random(125));    }


  until
    Application.Terminated;
end;

procedure TForm1.FormDblClick(Sender: TObject);
begin
if Form1.BorderStyle=bsNone then begin
Form1.BorderStyle:=bsSizeable;
Form1.Align:=alNone;end else
begin
Form1.BorderStyle:=bsNone;
Form1.Align:=alClient;
end;
end;

end.

