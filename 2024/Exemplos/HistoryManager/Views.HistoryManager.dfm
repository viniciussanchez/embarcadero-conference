object FrmHistoryManager: TFrmHistoryManager
  Left = 0
  Top = 0
  Caption = 'History Manager'
  ClientHeight = 187
  ClientWidth = 215
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlContent: TPanel
    Left = 0
    Top = 0
    Width = 215
    Height = 187
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 53
      Height = 15
      Caption = 'N'#250'mero 1'
    end
    object Label2: TLabel
      Left = 32
      Top = 72
      Width = 53
      Height = 15
      Caption = 'N'#250'mero 2'
    end
    object edtNumero1: TEdit
      Left = 32
      Top = 45
      Width = 146
      Height = 23
      TabOrder = 0
    end
    object edtNumero2: TEdit
      Left = 32
      Top = 93
      Width = 146
      Height = 23
      TabOrder = 1
    end
    object Button1: TButton
      Left = 32
      Top = 122
      Width = 32
      Height = 32
      Caption = '+'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 70
      Top = 122
      Width = 32
      Height = 32
      Caption = '-'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 108
      Top = 122
      Width = 32
      Height = 32
      Caption = 'x'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 146
      Top = 122
      Width = 32
      Height = 32
      Caption = '/'
      TabOrder = 5
      OnClick = Button4Click
    end
  end
end
