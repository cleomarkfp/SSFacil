object frmCadPedidoSimples_Itens: TfrmCadPedidoSimples_Itens
  Left = 394
  Top = 84
  Width = 765
  Height = 469
  Caption = 'frmCadPedidoSimples_Itens'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 749
    Height = 86
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 747
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      Color = clMoneyGreen
      TabOrder = 0
      OnExit = Panel4Exit
      object Label2: TLabel
        Left = 5
        Top = 34
        Width = 131
        Height = 13
        Alignment = taRightJustify
        Caption = 'Produo (Refer'#234'ncia/Nome):'
      end
      object SpeedButton1: TSpeedButton
        Left = 674
        Top = 25
        Width = 23
        Height = 22
        Hint = 'Abre a tela de Produtos'
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object SpeedButton4: TSpeedButton
        Left = 698
        Top = 25
        Width = 23
        Height = 22
        Hint = 'Atualiza tabela Produtos'
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
          F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
          F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
          CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
          E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
          B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
          F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
          9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
          FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
          53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
          FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
          F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
          FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
          FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
          BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
          F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
          BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
          92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
          997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
          CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
          FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
          FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
          FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
          FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
          C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
          FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
          BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
          E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
          78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
          C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
          FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
          EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
          F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
          FFFEFEFFFFFFFFFFFFFF}
        Margin = 0
        OnClick = SpeedButton4Click
      end
      object Label12: TLabel
        Left = 314
        Top = 11
        Width = 124
        Height = 13
        Caption = 'F2 para pesquisar Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 81
        Top = 11
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'ID Produto:'
      end
      object Label1: TLabel
        Left = 49
        Top = 57
        Width = 85
        Height = 13
        Caption = 'Nome do produto:'
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 138
        Top = 26
        Width = 173
        Height = 21
        DropDownCount = 8
        DropDownWidth = 550
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        LookupField = 'ID'
        LookupDisplay = 'REFERENCIA;NOME'
        LookupSource = DMCadPedido.dsProduto
        TabOrder = 1
        OnChange = RxDBLookupCombo4Change
        OnEnter = RxDBLookupCombo4Enter
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 312
        Top = 26
        Width = 361
        Height = 21
        DropDownCount = 8
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMCadPedido.dsProduto
        TabOrder = 2
        OnChange = RxDBLookupCombo4Change
        OnEnter = RxDBLookupCombo2Enter
      end
      object DBEdit15: TDBEdit
        Left = 138
        Top = 3
        Width = 121
        Height = 21
        DataField = 'ID_PRODUTO'
        DataSource = DMCadPedido.dsPedido_Itens
        TabOrder = 0
        OnKeyDown = DBEdit15KeyDown
      end
      object Edit2: TEdit
        Left = 138
        Top = 49
        Width = 533
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 397
    Width = 749
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 3
    object BitBtn4: TBitBtn
      Left = 375
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F10) Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 276
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F7) &Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 749
    Height = 136
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 2
    OnEnter = Panel2Enter
    object Label3: TLabel
      Left = 66
      Top = 16
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Unidade:'
    end
    object Label4: TLabel
      Left = 51
      Top = 40
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label7: TLabel
      Left = 55
      Top = 64
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Unit'#225'rio:'
    end
    object SpeedButton2: TSpeedButton
      Left = 225
      Top = 7
      Width = 23
      Height = 22
      Hint = 'Abre a tela de Unidades'
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object SpeedButton6: TSpeedButton
      Left = 248
      Top = 7
      Width = 23
      Height = 22
      Hint = 'Atualiza tabela Unidade'
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
        F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
        F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
        CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
        E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
        B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
        F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
        9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
        FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
        53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
        FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
        F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
        FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
        BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
        F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
        BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
        92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
        997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
        CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
        FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
        FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
        FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
        FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
        C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
        BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
        E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
        78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
        C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
        FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
        EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
        F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
        FFFEFEFFFFFFFFFFFFFF}
      Margin = 0
      OnClick = SpeedButton6Click
    end
    object Label13: TLabel
      Left = 52
      Top = 112
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Entrega:'
    end
    object Label5: TLabel
      Left = 64
      Top = 88
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Total:'
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 110
      Top = 8
      Width = 115
      Height = 21
      DropDownCount = 8
      DataField = 'UNIDADE'
      DataSource = DMCadPedido.dsPedido_Itens
      LookupField = 'UNIDADE'
      LookupDisplay = 'UNIDADE'
      LookupSource = DMCadPedido.dsUnidade
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 110
      Top = 32
      Width = 115
      Height = 21
      DataField = 'QTD'
      DataSource = DMCadPedido.dsPedido_Itens
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DBEdit5: TDBEdit
      Left = 110
      Top = 56
      Width = 115
      Height = 21
      DataField = 'VLR_UNITARIO'
      DataSource = DMCadPedido.dsPedido_Itens
      TabOrder = 2
      OnExit = DBEdit2Exit
    end
    object DBDateEdit1: TDBDateEdit
      Left = 110
      Top = 104
      Width = 115
      Height = 21
      DataField = 'DTENTREGA'
      DataSource = DMCadPedido.dsPedido_Itens
      NumGlyphs = 2
      TabOrder = 4
      StartOfWeek = Sun
    end
    object DBEdit1: TDBEdit
      Left = 110
      Top = 80
      Width = 115
      Height = 21
      DataField = 'VLR_TOTAL'
      DataSource = DMCadPedido.dsPedido_Itens
      TabOrder = 3
      OnExit = DBEdit2Exit
    end
  end
  object pnlCod_Barras: TPanel
    Left = 0
    Top = 0
    Width = 749
    Height = 35
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label20: TLabel
      Left = 52
      Top = 16
      Width = 84
      Height = 13
      Caption = 'C'#243'digo de Barras:'
    end
    object Edit1: TEdit
      Left = 140
      Top = 8
      Width = 153
      Height = 21
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 257
    Width = 749
    Height = 140
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 4
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = clMoneyGreen
      Caption = 'Obs. do Item do Pedido'
      object DBMemo2: TDBMemo
        Left = 0
        Top = 0
        Width = 745
        Height = 117
        Align = alClient
        DataField = 'OBS'
        DataSource = DMCadPedido.dsPedido_Itens
        MaxLength = 250
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
