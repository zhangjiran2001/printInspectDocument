object Form3: TForm3
  Left = 366
  Top = 472
  BorderStyle = bsDialog
  Caption = #25209#37327#35774#32622#35835#21345#22120#30446#26631#20027#26426'IP'#22320#22336
  ClientHeight = 408
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label5: TLabel
    Left = 62
    Top = 336
    Width = 84
    Height = 14
    Caption = #22266#23450#31471#21475#21495#65306
  end
  object Label3: TLabel
    Left = 74
    Top = 16
    Width = 112
    Height = 14
    Caption = #35835#21345#22120#23376#32593#25513#30721#65306
  end
  object Button1: TButton
    Left = 528
    Top = 364
    Width = 177
    Height = 33
    Caption = #36864'  '#20986
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 336
    Top = 364
    Width = 177
    Height = 33
    Caption = #26356#25913#24182#19979#20256#33267#35835#21345#22120
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 48
    Width = 697
    Height = 113
    Caption = #25509#25910#35835#21345#20449#24687#30340#26412#22320#30005#33041#65288#30446#26631#20027#26426#65289
    TabOrder = 2
    object Label7: TLabel
      Left = 12
      Top = 32
      Width = 56
      Height = 14
      Caption = 'IP'#22320#22336#65306
    end
    object Label8: TLabel
      Left = 120
      Top = 32
      Width = 7
      Height = 14
      Caption = '.'
    end
    object Label9: TLabel
      Left = 176
      Top = 32
      Width = 7
      Height = 14
      Caption = '.'
    end
    object Label10: TLabel
      Left = 232
      Top = 32
      Width = 7
      Height = 14
      Caption = '.'
    end
    object Label11: TLabel
      Left = 12
      Top = 64
      Width = 63
      Height = 14
      Caption = 'MAC'#22320#22336#65306
    end
    object Label12: TLabel
      Left = 312
      Top = 64
      Width = 7
      Height = 14
      Caption = '-'
    end
    object Label13: TLabel
      Left = 352
      Top = 64
      Width = 7
      Height = 14
      Caption = '-'
    end
    object Label14: TLabel
      Left = 392
      Top = 64
      Width = 7
      Height = 14
      Caption = '-'
    end
    object Label15: TLabel
      Left = 432
      Top = 64
      Width = 7
      Height = 14
      Caption = '-'
    end
    object Label16: TLabel
      Left = 472
      Top = 64
      Width = 7
      Height = 14
      Caption = '-'
    end
    object Label26: TLabel
      Left = 184
      Top = 88
      Width = 476
      Height = 14
      Caption = #25351#23450#24182#38145#23384#21487#38450#27490'ARP'#39575#25915#20987#23548#33268'IP'#22320#22336#21644'MAC'#22320#22336#19981#23545#24212#21450#32593#32476#36890#20449#19981#27491#24120#12290
    end
    object EditIp9: TEdit
      Left = 72
      Top = 28
      Width = 41
      Height = 22
      MaxLength = 3
      TabOrder = 1
      Text = '192'
    end
    object EditIp10: TEdit
      Left = 128
      Top = 28
      Width = 41
      Height = 22
      MaxLength = 3
      TabOrder = 2
      Text = '168'
    end
    object EditIp11: TEdit
      Left = 184
      Top = 28
      Width = 41
      Height = 22
      MaxLength = 3
      TabOrder = 3
      Text = '1'
    end
    object EditIp12: TEdit
      Left = 240
      Top = 28
      Width = 41
      Height = 22
      MaxLength = 3
      TabOrder = 4
      Text = '1'
    end
    object Button4: TButton
      Left = 288
      Top = 26
      Width = 137
      Height = 25
      Caption = '<<'#25552#21462#26412#22320#30005#33041'IP'
      TabOrder = 0
      OnClick = Button4Click
    end
    object EditMac1: TEdit
      Left = 280
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 6
    end
    object EditMac2: TEdit
      Left = 320
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 7
    end
    object EditMac3: TEdit
      Left = 360
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 8
    end
    object EditMac4: TEdit
      Left = 400
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 9
    end
    object Button5: TButton
      Left = 520
      Top = 58
      Width = 169
      Height = 25
      Caption = '<<'#25552#21462#26412#22320#30005#33041'MAC'#22320#22336
      TabOrder = 5
      OnClick = Button5Click
    end
    object EditMac5: TEdit
      Left = 440
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 10
    end
    object EditMac6: TEdit
      Left = 480
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 11
    end
    object RadioButton5: TRadioButton
      Left = 104
      Top = 63
      Width = 65
      Height = 17
      Caption = #33258#21160#25628
      Checked = True
      TabOrder = 12
      TabStop = True
    end
    object RadioButton6: TRadioButton
      Left = 184
      Top = 63
      Width = 97
      Height = 17
      Caption = #25351#23450#24182#38145#23384
      TabOrder = 13
    end
    object Button7: TButton
      Left = 456
      Top = 26
      Width = 137
      Height = 25
      Caption = '<<'#35774#20026#24191#25773#24335
      TabOrder = 14
      OnClick = Button7Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 168
    Width = 697
    Height = 153
    Caption = #35835#21345#22120#23545#24212#30340#32593#20851
    TabOrder = 3
    object Label1: TLabel
      Left = 12
      Top = 32
      Width = 168
      Height = 14
      Caption = #35835#21345#22120#23545#24212#30340#32593#20851'IP'#22320#22336#65306
    end
    object Label17: TLabel
      Left = 232
      Top = 32
      Width = 7
      Height = 14
      Caption = '.'
    end
    object Label18: TLabel
      Left = 288
      Top = 32
      Width = 7
      Height = 14
      Caption = '.'
    end
    object Label19: TLabel
      Left = 344
      Top = 32
      Width = 7
      Height = 14
      Caption = '.'
    end
    object Label20: TLabel
      Left = 12
      Top = 64
      Width = 91
      Height = 14
      Caption = #32593#20851'MAC'#22320#22336#65306
    end
    object Label21: TLabel
      Left = 312
      Top = 64
      Width = 7
      Height = 14
      Caption = '-'
    end
    object Label22: TLabel
      Left = 352
      Top = 64
      Width = 7
      Height = 14
      Caption = '-'
    end
    object Label23: TLabel
      Left = 392
      Top = 64
      Width = 7
      Height = 14
      Caption = '-'
    end
    object Label24: TLabel
      Left = 432
      Top = 64
      Width = 7
      Height = 14
      Caption = '-'
    end
    object Label25: TLabel
      Left = 472
      Top = 64
      Width = 7
      Height = 14
      Caption = '-'
    end
    object Label27: TLabel
      Left = 184
      Top = 88
      Width = 476
      Height = 14
      Caption = #25351#23450#24182#38145#23384#21487#38450#27490'ARP'#39575#25915#20987#23548#33268'IP'#22320#22336#21644'MAC'#22320#22336#19981#23545#24212#21450#32593#32476#36890#20449#19981#27491#24120#12290
    end
    object EditIp14: TEdit
      Left = 240
      Top = 28
      Width = 41
      Height = 22
      MaxLength = 3
      TabOrder = 2
      Text = '168'
    end
    object EditIp15: TEdit
      Left = 296
      Top = 28
      Width = 41
      Height = 22
      MaxLength = 3
      TabOrder = 3
      Text = '1'
    end
    object EditIp16: TEdit
      Left = 352
      Top = 28
      Width = 41
      Height = 22
      MaxLength = 3
      TabOrder = 4
      Text = '1'
    end
    object EditMac7: TEdit
      Left = 280
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 6
    end
    object EditMac8: TEdit
      Left = 320
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 7
    end
    object EditMac9: TEdit
      Left = 360
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 8
    end
    object EditMac10: TEdit
      Left = 400
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 9
    end
    object Button6: TButton
      Left = 520
      Top = 58
      Width = 169
      Height = 25
      Caption = '<<'#20174'IP'#26597'MAC'#22320#22336
      TabOrder = 5
      OnClick = Button6Click
    end
    object EditMac11: TEdit
      Left = 440
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 10
    end
    object EditMac12: TEdit
      Left = 480
      Top = 60
      Width = 33
      Height = 22
      MaxLength = 2
      TabOrder = 11
    end
    object EditIp13: TEdit
      Left = 184
      Top = 28
      Width = 41
      Height = 22
      MaxLength = 3
      TabOrder = 1
      Text = '192'
    end
    object Button8: TButton
      Left = 208
      Top = 114
      Width = 265
      Height = 25
      Caption = #35835#21462#26412#22320#30005#33041#32593#20851#65288#19981#19968#23450#26159#35835#21345#22120#30340#65289
      TabOrder = 0
      OnClick = Button8Click
    end
    object RadioButton3: TRadioButton
      Left = 104
      Top = 64
      Width = 65
      Height = 17
      Caption = #33258#21160#25628
      Checked = True
      TabOrder = 12
      TabStop = True
    end
    object RadioButton4: TRadioButton
      Left = 184
      Top = 64
      Width = 97
      Height = 17
      Caption = #25351#23450#24182#38145#23384
      TabOrder = 13
    end
  end
  object Edit14: TEdit
    Left = 144
    Top = 332
    Width = 97
    Height = 22
    TabOrder = 4
    Text = '39192'
  end
  object EditIp5: TEdit
    Left = 184
    Top = 12
    Width = 41
    Height = 22
    MaxLength = 3
    TabOrder = 5
    Text = '255'
  end
  object EditIp6: TEdit
    Left = 240
    Top = 12
    Width = 41
    Height = 22
    MaxLength = 3
    TabOrder = 6
    Text = '255'
  end
  object EditIp7: TEdit
    Left = 296
    Top = 12
    Width = 41
    Height = 22
    MaxLength = 3
    TabOrder = 7
    Text = '255'
  end
  object EditIp8: TEdit
    Left = 352
    Top = 12
    Width = 41
    Height = 22
    MaxLength = 3
    TabOrder = 8
    Text = '0'
  end
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 400
    Top = 8
  end
end
