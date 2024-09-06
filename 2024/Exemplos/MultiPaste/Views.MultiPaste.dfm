object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 624
    Height = 416
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'SELECT CODIGO, NOME, IDADE'
      '  FROM PESSOA'
      ' WHERE STATUS = '#39'ATIVO'#39
      '   AND IDADE >= 18')
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 200
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object Button1: TButton
    Left = 0
    Top = 416
    Width = 624
    Height = 25
    Align = alBottom
    Caption = 'Exemplo'
    TabOrder = 1
    ExplicitLeft = 464
    ExplicitTop = 376
    ExplicitWidth = 75
  end
end
