object Form1: TForm1
  Left = 271
  Top = 254
  Width = 375
  Height = 279
  Caption = 'NortLith'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClick = FormClick
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object TrackBar1: TTrackBar
    Left = 0
    Top = 231
    Width = 367
    Height = 14
    Align = alBottom
    Max = 1000000
    Min = 2
    Position = 10000
    TabOrder = 0
    ThumbLength = 15
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = TrackBar1Change
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 656
  end
end
