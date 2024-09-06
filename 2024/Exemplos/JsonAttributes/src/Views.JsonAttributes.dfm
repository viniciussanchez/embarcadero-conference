object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Samples'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object mmJSON: TMemo
    Left = 0
    Top = 25
    Width = 447
    Height = 176
    Align = alClient
    TabOrder = 0
  end
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 447
    Height = 25
    Align = alTop
    Caption = 'To JSON'
    TabOrder = 1
    OnClick = Button1Click
  end
end
