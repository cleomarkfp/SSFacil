object frmTalaoAux_ES: TfrmTalaoAux_ES
  Left = 275
  Top = 140
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Lote/Tal'#227'o Atelier (Saida/Retorno)'
  ClientHeight = 462
  ClientWidth = 886
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 886
    Height = 462
    Align = alClient
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 126
      Top = 114
      Width = 66
      Height = 13
      Caption = 'Tal'#227'o Auxiliar:'
    end
    object Label2: TLabel
      Left = 160
      Top = 24
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Op'#231#227'o:'
    end
    object Label3: TLabel
      Left = 344
      Top = 112
      Width = 167
      Height = 13
      Caption = 'Informe o tal'#227'o e pressione ENTER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 40
      Top = 248
      Width = 337
      Height = 157
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 169
      Top = 46
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
    end
    object Label7: TLabel
      Left = 356
      Top = 46
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hora:'
      Visible = False
    end
    object Label10: TLabel
      Left = 163
      Top = 70
      Width = 32
      Height = 13
      Caption = 'Atelier:'
      Visible = False
    end
    object Label11: TLabel
      Left = 600
      Top = 56
      Width = 258
      Height = 26
      Caption = 
        'Campo do Atelier em branco, assume o que estava no '#13#10'cadastro do' +
        ' produto na gera'#231#227'o dos Lotes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object cbOpcao_ES: TNxComboBox
      Left = 196
      Top = 16
      Width = 267
      Height = 21
      Cursor = crArrow
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      ReadOnly = True
      OnChange = cbOpcao_ESChange
      HideFocus = False
      Style = dsDropDownList
      AutoCompleteDelay = 0
      Items.Strings = (
        'Sa'#237'da para Atelier'
        'Retorno do Atelier'
        'Sa'#237'da para Atelier pela Ordem Produ'#231#227'o'
        'Retorno do Atelier pela Ordem Produ'#231#227'o')
    end
    object Edit1: TEdit
      Left = 196
      Top = 108
      Width = 146
      Height = 19
      Color = 16777119
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
    object DateEdit1: TDateEdit
      Left = 196
      Top = 38
      Width = 144
      Height = 21
      Ctl3D = False
      DefaultToday = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = DateEdit1Exit
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 384
      Top = 38
      Width = 78
      Height = 21
      EditType = etTime
      BorderStyle = bsNone
      TabOrder = 2
      Visible = False
    end
    object gbxOrdProducao: TRzGroupBox
      Left = 190
      Top = 139
      Width = 491
      Height = 92
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Informe o N'#186' da Ord. Produ'#231#227'o '
      Color = clSilver
      Ctl3D = True
      FlatColor = clNavy
      FlatColorAdjustment = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Visible = False
      VisualStyle = vsGradient
      object Label4: TLabel
        Left = 8
        Top = 24
        Width = 49
        Height = 13
        Caption = 'N'#186' Ordem:'
      end
      object Label8: TLabel
        Left = 25
        Top = 45
        Width = 32
        Height = 13
        Caption = 'Atelier:'
      end
      object Label9: TLabel
        Left = 232
        Top = 67
        Width = 217
        Height = 13
        Caption = 'Deixar em branco para gerar a sa'#237'da de todos'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 60
        Top = 16
        Width = 73
        Height = 21
        AutoSize = False
        Ctl3D = False
        DecimalPlaces = 0
        DisplayFormat = '0'
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CurrencyEdit1Exit
      end
      object btnConfirmar: TNxButton
        Left = 61
        Top = 58
        Width = 119
        Height = 28
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          AE060000424DAE06000000000000360000002800000017000000170000000100
          1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
          224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
          3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
          5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
          4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
          402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
          4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
          0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
          0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
          04550500550505560707540B065309065008044D06034D050042002F65312860
          2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
          54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
          044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
          0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
          550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
          2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
          C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
          00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
          FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
          002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
          FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
          07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
          DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
          C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
          5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
          FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
          000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
          056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
          022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
          9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
          B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
          8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
          FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
          B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
          2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
          0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
          5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
          299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
          C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
          36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
          4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
          984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
          FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
          7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
          B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
          CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 2
        Transparent = True
        OnClick = btnConfirmarClick
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 60
        Top = 36
        Width = 397
        Height = 21
        DropDownCount = 8
        Ctl3D = False
        LookupField = 'ID_ATELIER'
        LookupDisplay = 'NOME_ATELIER'
        LookupSource = DMBaixaPedido.dsAtelier_OP
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 196
      Top = 61
      Width = 397
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMBaixaPedido.dsAtelier
      ParentCtl3D = False
      TabOrder = 3
      Visible = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 427
      Width = 884
      Height = 34
      Align = alBottom
      Color = clSilver
      TabOrder = 6
      object btnImprimir: TNxButton
        Left = 10
        Top = 2
        Width = 153
        Height = 30
        Caption = 'Romaneio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          AE060000424DAE06000000000000360000002800000017000000170000000100
          1800000000007806000000000000000000000000000000000000FCFFFFFFFEFE
          FCFFFCF9FEFEF9FCFDFFFCFFF3FAFBF3FAFAF3FAFAF2FAFAF3FAFAF4F9FAF4F9
          FAF2FAFAF2FAFAF4F9FAF5FAFAFDFBFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FEFFFEFEFEFEFBFFFDFCFDFEFFFFFFD5EAF0489FC55DB4D15EB4D157B3D2
          5BB3D05BB4D458B2D359B3D25AB3D45DB1D352A8C3AFDDEAFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFFFDFEFDFEFCFFFCFFFDFEFFFFFFB5E2EA4AB8D0A1
          FAFC9EF1F597F1F69DF1F59AF1F699F1F69EF1F598F1F4A0F6FB58C7D98DCFE8
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FAFFFEFEFDFEFCFFFDFFFEFEFFFF
          FEB8E1EC53C0D899E8E97EBCC083BECA8CBEC189BCC582BCC785BEC282BAB899
          E0E667D1E08CCEE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFEFFFDFE
          FFFFFFFFFFFFFFFFFFC1E6F147BFDA84E1E860ADB05FAFB862B1B45AB1B559B1
          B659B1B54EA8AE70D9E25ED0E28FCFE9FFFFFFFFFFFFFFFFFFFFFFFFFDFFFF00
          0000FAFEFEFFFFFFDCDAD9D5D2D2E0D9D6AABFCD41C3DD8AF5FD8BDEE591E4EA
          92DFEA8FE0E78CE1E697DFEA8FDDEA8AF3FB4FD4E48FC6D5E1D8D5D5D3D2DBD9
          D9FDFDFDFDFFFF000000FFFFFFB5B1B371635E806E6B503A2F0E3B4C69E7FF6E
          E2F660C9D361CCD95FC7D65FC8D661C8D761CBD55DC7CD6BDFF069EEFF114764
          45322C776C666E6460AEAAA9FFFFFF000000FDFDFC827A78CFBFB9E9DDD66F5B
          52324448396F7A4373754974744574734674754B73764B727545757544747549
          6F75426D793646505F5049DDCDCAD1C1BE827B78FCFCFB000000FCFCFB87817D
          CCC0BADEDCD4D2C2BCAD9A9CAB9697AF9895AF9794AC9794A79994AC9693AD99
          8FAD9893A79897A89A92AC9B90AE9E98C1B7B2E8DBD9CFC0BD897F7CFBFBFA00
          0000FCFCFB8B807ED3C7C3E6E6E2EAE4E4F2ECECF6EEEBF3EEEEF7EEEEF7EEEF
          F0EFEEF5EFF0F4EFEEF7EEF0F5EDF2EFF1EFF1EFEEF2ECEEEBE6EAEAE4E3D3C8
          C4887F7DFCFBFB000000FCFCFC89817FDBCECEF7F2F2F7F0F4EBEAE7E4E3DEDF
          E3E1E4E1E2E3E0DFDDE1DFE2E0DFE1E0E0E1E0DEE5E0DDE4DDDCE0DDDDECE8E7
          F2F2F3F5F3F1DAD2D188827DFBFCFB000000FCFDFC8B8282DFD3D4FFFDFFE8EC
          EB7D797665605E68626165605F635E5D635D5B625C5C605A595F59595C58575B
          5655585453676362E9E8EAFFFDFDE1D4D189837EFAFCFC000000FCFDFD8B8482
          DED6D5FFFFFFC2C4C3514B4A322F2D3735353835353735353734343735353633
          333836353835343836353431304C4746AFB0B0FFFFFFE4D4DB8C8485FCFCFC00
          0000FCFCFD8F8986DCD5D1FFFFFFC6C5C4554F4D2F2E2D383838383838373838
          37383838373837393737383737393738373733302F4C4747B7B1B2FFFFFFDED6
          D0898884FCFBFD000000FBFCFC928C89D4CAC5DAD4D0BDBAB8605C5A2C2D2D25
          28282B2E2E313434333737343737363838363737353838363838343131514C4C
          ADA1AE7F70C2CEC2CA938B8BFAFBFC000000FFFFFF999490B7A9A2BEAFADAAA0
          A084807FA6A6A58182825C5C5C46474739383835363635333332323231333332
          32322F2D2D534C4FA1A19760AB80BAB8AA9A9290FCFFFF000000FFFFFFC6C1BE
          94817DC4AFACA39A98868784C9CACAB9BABBBABBBCB4B5B5A9AAAB9D9E9F9093
          938A87888482827A7B7C7F7F7E6D6669918D8195A67B847F79C1BEBFFFFFFF00
          0000FFFFFEFEFFFFB2A9A99F9494989895796C6EA69694A49593A1918EA0908C
          9B8D899A8C899889879987849686809882808C7C7C6359588E8B8BA4999EAEA9
          ACFFFFFFFFFFFF000000FEFCFEFCFEFFFFFFFFFFFFFFFFFFFF98AFC059919F6A
          9FA5689CA2689CA165989D679BA065989D5E999A56999D5E959F498295A2ABB4
          FFFFFFFFFFFFFFFFFFFEFFFFFFFFFF000000FDFDFDFCFDFEFEFEFCFAFDFDFFFF
          FF90D3EC50CEE37FF9FF7DF4FF7EF5FF7DF4FF7DF5FF7CF5FF7FF8FC7FF6FF89
          FAFF3DBBD5C8EAF1FFFFFFFDFDFDFEFFFFFDFEFEFFFFFF000000FBFEFEFAFDFE
          FDFFFCFCFDFEFFFFFF88C9E457CCDF8DFAFE89F4FC89F5FB89F6FB8AF6FC86F4
          FC8DF5FC8DF5FC91FBFF39B8D0B5E1EBFFFFFFFCFFFFFCFFFFFFFEFEFFFFFF00
          0000FDFEFFFFFDFFFEFFFDFFFDFEFFFFFFA7DBE44AA8C558B6D059B5CE5AB5CD
          59B5CD5AB5CF55B5CF5DB4D059B1D356B5D246A5C3D4ECF0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FEFDFFFDFDFFF7FFFFFCFEFBFFFDFEF8FEFEF1F9FAEF
          F8F9F0F8F9F0F8FAF0F8FAF0F8F9F0F8F9F0F8FAEEF8FAF0F7FAF3FAFAFCFDFF
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF000000}
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 0
        Transparent = True
        OnClick = btnImprimirClick
      end
    end
  end
end