object fRelLote2: TfRelLote2
  Left = 221
  Top = 29
  Width = 959
  Height = 667
  Caption = 'fRelLote2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 48
    Top = 24
    Width = 794
    Height = 1123
    DataSource = DMCadLote.dsmLote
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 30
      Width = 742
      Height = 291
      DataSource = DMCadLote.dsmLote
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 148
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand1BeforePrint
        object RLDraw4: TRLDraw
          Left = 0
          Top = 85
          Width = 598
          Height = 61
        end
        object RLDBText1: TRLDBText
          Left = 0
          Top = 22
          Width = 169
          Height = 12
          AutoSize = False
          DataField = 'Nome_Filial'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 597
          Top = 20
          Width = 145
          Height = 126
        end
        object RLImage1: TRLImage
          Left = 603
          Top = 24
          Width = 135
          Height = 106
          Stretch = True
        end
        object RLDraw2: TRLDraw
          Left = 2
          Top = 36
          Width = 430
          Height = 2
          DrawKind = dkLine
        end
        object RLLabel1: TRLLabel
          Left = 42
          Top = 44
          Width = 54
          Height = 16
          Caption = 'N'#186' Lote:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 99
          Top = 44
          Width = 68
          Height = 16
          DataField = 'Num_Lote'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 64
          Width = 88
          Height = 16
          Alignment = taRightJustify
          Caption = 'N'#186' de Tal'#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 2
          Top = 85
          Width = 430
          Height = 1
          DrawKind = dkLine
        end
        object RLLabel3: TRLLabel
          Left = 302
          Top = 20
          Width = 59
          Height = 14
          Caption = 'Dt. Entrega:'
        end
        object RLDBText4: TRLDBText
          Left = 366
          Top = 20
          Width = 50
          Height = 14
          DataField = 'DtEntrega'
          DataSource = DMCadLote.dsmLote
        end
        object RLLabel4: TRLLabel
          Left = 231
          Top = 64
          Width = 88
          Height = 16
          Caption = 'Quantidade'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 322
          Top = 64
          Width = 104
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Color = clWhite
          DataField = 'Qtd'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw5: TRLDraw
          Left = 431
          Top = 20
          Width = 167
          Height = 66
        end
        object RLBarcode1: TRLBarcode
          Left = 432
          Top = 25
          Width = 165
          Height = 34
          Alignment = taCenter
          BarcodeType = bcCode128A
          Caption = '12345678901'
          Margins.LeftMargin = 1.000000000000000000
          Margins.RightMargin = 1.000000000000000000
        end
        object RLLabel5: TRLLabel
          Left = 437
          Top = 59
          Width = 153
          Height = 14
          Alignment = taCenter
          AutoSize = False
        end
        object RLLabel6: TRLLabel
          Left = 5
          Top = 90
          Width = 80
          Height = 14
          Caption = 'Refer'#234'ncia:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 89
          Top = 90
          Width = 75
          Height = 14
          Color = clWhite
          DataField = 'Referencia'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 22
          Top = 111
          Width = 61
          Height = 14
          Caption = 'Produto:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 88
          Top = 111
          Width = 506
          Height = 15
          AutoSize = False
          Color = clWhite
          DataField = 'Nome_Produto'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 265
          Top = 90
          Width = 52
          Height = 15
          Caption = 'Unidade:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 322
          Top = 90
          Width = 49
          Height = 15
          Color = clWhite
          DataField = 'Unidade'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw9: TRLDraw
          Left = 0
          Top = 7
          Width = 742
          Height = 5
          Pen.Style = psDot
        end
        object RLImage2: TRLImage
          Left = 4
          Top = 4
          Width = 32
          Height = 12
          Picture.Data = {
            0A544A504547496D616765B6140000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108003F009003012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FAC7
            FE0B91FF00071869BFF04DAF17C5F09FE176836BF107E365FC71B4D6F71BDF4F
            F0E09B1E509923C3DC5CC808D90232E030666E551FE33F0F7EC61FF0574FF828
            E5A5BEBDE27F8ADA8FC1BD2B525FB55B5ADE7889FC30D1AB0C8536DA6C6D709F
            757E599411BBFDEC70FF000E7C39A57C25FF0083C9B538FE2C292BA9F8CEEEF3
            429AF0911B5CDDD933E94C0BE3382F0A263237AA85CE057F492A307A6704D007
            E0B27FC1BDDFF0521D2ADADAEED7F6D9B86D4A17593CA9BE21F89BC8520827E6
            3136E1EC5307BD4979E2BFF82BF7FC133A36D4353B7D33F686F0AD81C491C514
            7E2069238D08071108350E460E71B890339AFDE666E7A0E9C7E9417C1C607B50
            07E66FFC12CBFE0E73F83FFB7D789AD3C05E38D3E7F835F15AE653691E93AB5D
            0934CD4EE37EC115B5DB2A11331FF963322364ED56948CD7E9891BC700E33CE6
            BF327FE0E0BFF8210F837FE0A19F043C45F123C15A1D9689F1D7C3564FA8417D
            656EB19F16C50C79367761702490A2858A53F3A9544C94E079F7FC1A9BFF0005
            7AD7FF006DCF83FAD7C18F895AB5CEB1F113E1759C777A76A5792EFBBD6B46DE
            21CCC49DD24B6D23451B48C32CB34258B3EE6201FAF19C1E87D293196EFED4E6
            7C67E5EF4D0793EBFD28006C05EBF852A8C8EFD7F3E695C90071F5A3764F4FF3
            C50021191C7E5EB42E7DCFBD0B260F41581F12BE2C7863E0DF8624D67C5DE22D
            07C2BA3C676BDF6AF7F1595BA93DB7C8CAB9F6CD007405378F6A42986CE0E7B5
            7E7EFED23FF073EFEC77FB37433C5FF0B16E3C7BA9DBAB1163E0FD39F516948F
            E1599BCBB6CFFBD281EF5F9E9FB4FF00FC1EDDAAEA1757967F073E0AD958DBAB
            15B7D5FC61AAB4F34A857826CAD82AC6C189FF00978901C0E2803FA0DD991D0D
            34039CE1BF2AFE393F68FF00F838A3F6C3FDA5E5916FFE33F88FC2964FB48B4F
            0830D05536924625B6DB37D4190838E6BE3CF1B78F75DF895AFC9AAF88B59D5B
            5FD5250164BCD4AF24BAB8703A02F212C7F3A00FEF83667D7DA9BB7E5CF4AFE3
            DBFE09ADF157FE0A09E25BEB51FB3A6B9F1DB59D2EDC98A38EDEE6E2F3C3F110
            543065BA2D64186D51C80C0715FD21FF00C13287EDC13E9B6F27ED407E09DAD8
            081D963D092E25F103CD9C2ACE6261628A00DD98CC84EEC616803C83FE0E03FF
            0082135BFF00C1523C0B61E3AF004F6BA0FC72F04DB18B4CB89A5F22DFC416AA
            DE60B29A40331C88C59A197A2B3B2BFCAC1E3F88BF614FF83A47E257EC3BE2A5
            F82DFB69F813C592EA7E1B31E9EFE248AD026BD68AA36ABDF5BC8545DAE36B7D
            A2370ECAA5B6CECD93FD01679FE63F2AF05FDBBFFE0997F05BFE0A4BE028F43F
            8B5E0AB0D79ACD5D74ED5E11F65D5F4927A9B7BA4C48AA4E098C931B955DC8D8
            1401D4FECB5FB6C7C28FDB77C0E9E21F855E3DF0F78DB4E31A492FD82E47DA6D
            377413C0D89616EBF2C88A7208ED5EA614B76EFEBD6BF9F2FDA0BFE0CFCF8B7F
            003C743C61FB2DFC6FF2AF74E76B8B3B7D5AF6E341D66D48048105F5A8647909
            C00584206492D5C9DA5BFF00C16B7F66D8349F0CC33FC41D5A0988B7B6BA9068
            1E296003EC0F35DC8B7122E739DD33838E4F43800FE847E33FC66F0E7ECEDF09
            FC45E38F17EA76DA2F863C2D612EA3A95EDC38548628D727193CB1E1557AB332
            81926BF9A3FF00834725D4FC59FF000596F166BFA3CCBA5E871F83B59BED5637
            62A925A4B7B68B14193C67CF92DD8027FE591F4AB1F1B3FE09C1FF000559FF00
            82AE699A743F16AD3C5377E1D86E434767E21D6F4BD0B4D82643B04EFA740F1E
            5D5647DB2F90CDB4B85639C1E63E22FF00C1A23FB627C29F01EA1AC68F73F0DF
            C57756E818E8FE1FF124E97F76A0F3B05C41044C40E706404F604F1401FD5109
            BCE019795232AC3907DF34024B67AFFF00AEBF861F067ED41F1C3F643F15EAFA
            37873E22FC51F86DAC69D752586A765A5F882FB499A19E176478A648E453B91F
            782AC38391EB5D8FC6AFF82B7FED37FB447840787FC63F1D7E26EB1A19B6FB1C
            DA7FF6ECD05B5EC59071711C4556E0E40E650C78EB401FD6D7ED49FF000584FD
            99FF006354B94F1FFC63F07E97A859E7CDD2ECEECEA5A8820ED2BF66B6124B90
            7A82BC77AFCDAFDA9FFE0F5AF865E108EE6C7E0F7C2CF1678CEF10CB126A7E24
            B88B47B1DC0E1258E28CCD34B19EB87F21B9E80D7F386F2191CB312CCC72493C
            935A9E07F026B9F13FC5B63A0F87348D535FD735393C9B3D3F4EB57BABABA7C1
            3B52340598E013803A03401FA1DFB527FC1D5DFB5D7ED15F6BB5D1BC59A4FC2F
            D22E8B0FB378574E486754200C7DAA6F326073CEE4646F7AF80BE2CFC6CF19FC
            7BF1649AFF008EBC5BE27F1A6BB322C726A3AF6A93EA376EAB9DAA659999C819
            3819E326BEE6FD9C3FE0D85FDAAFE377876E7C45E29F0DE89F063C21A7DACB7D
            79AC78EF511606DE08816958DAC4B2DCA154566FDEC71A903EF01CD7DCFF00F0
            487FF8369BF649FDB37E13CBF10A2F8DDE29F8E3A3E97AA4DA3DE47A46973785
            EC92EE2F2E431324EA6E88F2A589B702B9120208390003F03ADEDE4BCB848A24
            692595822222E59D8F00003A9AFAD7F659FF008214FED5BFB60F913F84BE0E78
            9AD74A99B0754D795345B3400805B7DD142E0673840C480700D7F4F9FB06FC04
            FD8EBE037C68F137C35F821F0FFC19A1F8F3C048CBAACABE1EB87D4A38D99378
            1AA5DC6CF728ACEAA764F22AB65782081F48F82BF685F04FC49F881AEF84F42F
            14E87AB788FC3676EA9A75B5DABDC59F09F332F7505D54B0C80D95277020007E
            12FECA5FF064AEAD7412F3E36FC63D36D0ABB6ED27C1366F75BD3E5DADF6CBA5
            8F04FCC0AFD9CE38C39AFD2EFD94BFE0DD5FD913F64C68EE34CF849A3F8C7568
            CE46A3E32FF89EC99F9704453036E8C08C864883024F35F4CC7FB57FC3DB8F8F
            F73F0B62F1359C9E3BB450D2E94892968D8DBFDA7CB3205F2FCD16E6395A3DDB
            D639A172A04B196E121FF82947C34B9FDBF66FD9BA1975E9BE21DA69716A3772
            C7A793A659BCB0BDC4568F3920F9EF6D1B4C30863DAA4170DF2D007BE595947A
            75BC70C31470C51A848E28C054403A00070053D57E4E8735F3C7ED07FF000538
            F86FFB35FED97F0B7E03EBB078BAEFC7DF16C96D1D34DD1DEE2CEDA2CCA3CD9E
            725542EE85C308FCC74055DD51087AEF3E3AFED85F0E3F669F1CFC3EF0D78DFC
            4F0E87AEFC54D63FB07C2D646DA79E5D5AF3E5CA28891B628DE99924DA8A5D41
            61B85007A506DA47A9E057E5BFFC151FFE0EA5F82BFB0BEABA8F83FE1DC2BF19
            7E22584AF6F75169D7222D0F4895720A4F7801F3640D8063815C0C3867465DA7
            C07FE0E1BFF82B3FC4EF8D5FB4D597EC49FB31FF0069CBE2FD7E74D2FC577FA6
            CAB1DD5ECD3A061A64131204112464BDCCA4AF1F296545977FD17FF049AFF836
            0BE0C7EC1DA169BE27F88FA7E97F177E2C058E692F353B7F3B45D0E51C94B2B5
            71B5C86C6279D59F28AC821CB2900FCD33FB657FC1563FE0B291CB73F0D74DF1
            BF84FC1931FB45BB785228BC1FA680BC1D9AA5C4914D3121C1318B96CF50831C
            7A369FFF0006D3FF00C1423E29F8B6EBC4DE2EFDA3B43D2356D4DC5CDC4BFF00
            09BEB33DCAC8A4941B628163555C9DA11B6A0E1401C57F43F05AA59DBC314688
            914481111142AA81800003803152B49BD71D2803F9A3FDA1FF00633FF82A07FC
            1177E1E4FF0010746F8D1E23F19782341B5D97B2E87E24B8F10D9E896B1A2451
            C9369DA8C5B551630A37C713AC4B1FCCC8AA0D7CBD3FFC1523FE0A11FF00054E
            D3B54F06687E3BF8ABE3F5B0B36BBD4B4AF04E910E9F3B5AB15898CC9A641149
            2424BAA957DCBF37239AFEB8BE230D0DBE1E6BABE261687C37FD9D72355FB581
            F67FB2796DE77999E36797BB39E319AFE6F3FE0CC3F0A5CDE7FC14FF00E2BEBB
            A7DA4EDE1DD37E1EDED8BDD2A131C2F3EADA7BDBC6CC380CE96F3103B889BD28
            03E13F05FF00C1103F6C1F8A9E238ADAD3F67AF8ACB797F29FDF6ADA3C9A6C4C
            C72C59E7BAF2E35CF3F333004F7C9AEF3E37FF00C1B65FB66FC07F025B788751
            F835A96B367242B25CC1E1DD4ACF5ABDD3DCB38F2E4B7B695E56202EE2D12BC6
            03AE5C1C81FD8613B89FD01A230B83C0C83401FC0DF8AFC1BABF8135B974DD73
            4AD4746D460FF59697F6CF6D3C7DB947018743DBB556D2359BBD03508AEEC6E6
            E2CAEE03BA39E090C72467A6558608FC2BFBA6FDA13F642F857FB57682FA6FC4
            AF877E0DF1BDAB2ED0359D221BA78F82A0A48CBBD1864E1958119E08AFCD7FDA
            C3FE0CE5FD9B7E30F9F7DF0CF58F187C22D44A854B482EDB5AD28100E498EE99
            AE32C48C9171818E16803F147F652FF83853F6A9FD94F443A0C5F1166F883E0E
            9A26B7B9F0E78EEDC7882C6E606431984BCD9B848B6923CB8E554C70548E2BF4
            6FFE098BFF00075EFC03FD9D7C089E08F107ECF307C1CD1EEEFE4BEB89FE1DDB
            C3369B25CCBB15EE25B6731CA0ED50090F2B048E340085007CC3FB55FF00C1A0
            BFB527C0F59AF3C087C27F17F4B8F2C1749D4134ED44280C4B1B7BB28A718036
            C72BB92400A6BF38BE377ECC7F11FF00669F103695F10FC07E30F03EA2A01FB3
            EBBA3DC583B039018095572A70704641C706803FB02FD837F6B3FD8C7F684F88
            FE20F1C7C0DF15FC30BCF1C78DDCFF006BCD02FF00676BB7D99998ABDB5CAC77
            288F31790A88D56491DA4C333963ECDF03FF00621F861FB3B7C60F1B78F7C1FE
            197D2FC59F112512EBD7F2EA779766E713CD71B628E795E3B78CCD733C852058
            D59A42482715FC31DA5DCB61751CF049243342C1E392362AD1B0390411C820F7
            AFB0FF0063FF00F82FB7ED5FFB138B2B4F0B7C59D6F58F0F59C88C742F1385D6
            EC248D4E7C95F3C34B04679C8B79223CF5079A00FEBF24FD9F3C132FC6D1F121
            FC35A59F1D0D3BFB286B5E57FA48B6C93B33D33C91BB1BB69DB9DBC56B27C35F
            0E8F1D1F140D0346FF008499ADD6CDB57FB0C5F6E685376D88CFB7CCD837BE17
            7606F6E3935F85FF00B26FFC1EC9A75E0B5B2F8DFF00086E6D1F0AB36ADE0CBA
            1321383B9BEC972C08C9C6009CE013C9AFD46FD913FE0B5FFB2F7EDBBE4C1E02
            F8C1E16935894A2FF62EB12B68DAA172858A25BDD08DA6DB8219A1DE808FBDD3
            201F426A5F07BC29AD7C4FD33C6B79E1BD0EEBC61A2D9CDA769FAE4B6313EA16
            56D290658639C8DE88E40CA8383CFA9AADF13BE06F83FE34CDE1D9FC57E1BD23
            C413784356875CD166BDB75924D26FA1E63B881BEF4720C9195232090720E2BA
            B8996745742363A8656072187A834EFBDEFEC2803F99EFF827CFC5CD03F625FF
            0083AC3E2C4DF1966B7F0DB6B9E2AF13E9D63A9EAD208A1B19AFEE5E6B29D9C9
            2B1A4D03AA2B12005B85C90335FD2F4770258D590ABA3FCCAC0E430F507A57C4
            DFF056CFF8210FC21FF82B5E996BA97891AF7C1DF1134884DB69DE2DD1E18DAE
            5A1E4ADBDDC4DF2DCC018EE55251D0E7648A19C37E70685FF0443FF8298FEC3B
            68346F821FB45DAEB7E14B356FB1D98F114D6D1C6A004555B5BC8DE143B15701
            5B6AE300D007EFDB1E17DAA9F887C4761E17D16E751D52F6CF4CD3ACE369AE2E
            EEE65861811465999D8855500124938E2BF0934DFD97FF00E0B47E3E47B6BDF8
            A9A56851229FDECBAB68D117E3180D6D6EEF9FAE3EB5BFE1BFF835F3F68CFDAF
            758B39FF006ACFDAC3C47AF68AA6292E346D26F6EB539650AC328B25C958226D
            BF764F265C1FE1340195FF0005C9FF0082FABFED8BF6CFD943F64382FBE236BF
            E389DB43D77C4BA2C4D3C575116292D8E9C40C4AB263125E67C9116ED8CE1FCD
            8FEF4FF82067FC122E0FF824D7EC8ADA5EB5259DF7C4FF001B4B16A7E2CBCB7F
            9A281D5488AC637CFCD1C01DC6E1C3BBC8C38200F5AFF827E7FC127BE067FC13
            2FC20FA7FC2AF06DBE9FAADD5B476DA97886FE4FB66B3AB05C64CD70C0615986
            E31C4B1C5BB908B5F470831E9400A1BE7EA7F0A4CF3C7AE734A4E0D341DEFF00
            5A00577DD8A518E3F2A4EBEBEF4BF2A9FCE800033D3B7E9593E39F87DA17C4DF
            0F4BA5788F45D2F5FD2A7E25B2D4ACE3BA824EA3947520F04F6AD5C807BFE14A
            081EA7DA803F3F3F6ADFF83623F63DFDA9229EE13E1DDC7C37D66E7603A9F822
            FCE96D18562D816AC24B3C9C905BECFB88FE2E063F36FF006A0FF8326BC67A0A
            DC5DFC1EF8BBA1F886300B45A778A6C9F4E9FEF0C2F9F0F9A8C42F728B923A0C
            D7F450B873DFE94D2C0F73401FC5AFED43FF00043DFDABBF640B898F8C7E08F8
            D64D3A08E49DF55D0AD3FB774E8E243832493D99952107A812946C761838F97A
            F3C3F7FA6CFE5DC595DC12671B248594E7E8457F7D65367CDEB58FADFC39D03C
            497EB71A9687A36A17008612DD58C72B820000EE65273803F21401FC7FFF00C1
            383F6CBFDBC7E1E788A2D2BF67AD5FE34788E285977E8D69A54FE21D32257213
            7496F3472C3129080798426D0A70CB826BFA53FF0082627C62FDB4BE266876AD
            FB4BFC24F85FE05859189BAD1F5E6FED270147965EC91AE61058E4B1FB4A919C
            794B8C57D8169656FA6D9ADBDBC315BC080858E340A8A3AF006077A9D6311B71
            FCE803FFD9}
          Stretch = True
        end
        object RLLabel8: TRLLabel
          Left = 100
          Top = 64
          Width = 88
          Height = 16
          Caption = 'N'#186' de Tal'#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 433
          Top = 90
          Width = 59
          Height = 15
          Caption = 'Tamanho:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 495
          Top = 90
          Width = 56
          Height = 15
          Color = clWhite
          DataField = 'Tamanho'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel15: TRLLabel
          Left = 200
          Top = 44
          Width = 62
          Height = 16
          Caption = 'Carimbo:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText10: TRLDBText
          Left = 266
          Top = 43
          Width = 159
          Height = 16
          AutoSize = False
          Color = clWhite
          DataField = 'Carimbo'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel11: TRLLabel
          Left = 32
          Top = 129
          Width = 51
          Height = 14
          Caption = 'Forma:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText9: TRLDBText
          Left = 88
          Top = 129
          Width = 506
          Height = 15
          AutoSize = False
          Color = clWhite
          DataField = 'Nome_Forma'
          DataSource = DMCadLote.dsmLote
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 166
        Width = 742
        Height = 45
        DataSource = DMCadLote.dsmTalao
        BeforePrint = RLSubDetail2BeforePrint
        object RLDetailGrid1: TRLDetailGrid
          Left = 0
          Top = 0
          Width = 742
          Height = 33
          ColCount = 12
          AfterPrint = RLDetailGrid1AfterPrint
          object RLLabel14: TRLLabel
            Left = 4
            Top = 1
            Width = 12
            Height = 14
            Caption = 'T:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 2
            Top = 16
            Width = 14
            Height = 14
            Caption = 'Q:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw6: TRLDraw
            Left = 16
            Top = 1
            Width = 44
            Height = 15
          end
          object RLDBText16: TRLDBText
            Left = 18
            Top = 3
            Width = 43
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'Tamanho'
            DataSource = DMCadLote.dsmTalao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw7: TRLDraw
            Left = 16
            Top = 15
            Width = 44
            Height = 15
          end
          object RLDBText18: TRLDBText
            Left = 18
            Top = 17
            Width = 37
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'Qtd'
            DataSource = DMCadLote.dsmTalao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 148
        Width = 742
        Height = 18
        BeforePrint = RLBand2BeforePrint
        object RLDraw8: TRLDraw
          Left = 0
          Top = 0
          Width = 742
          Height = 18
          Align = faClient
        end
        object RLMemo1: TRLMemo
          Left = 5
          Top = 2
          Width = 725
          Height = 14
          Behavior = [beSiteExpander]
        end
      end
      object RLSubDetail3: TRLSubDetail
        Left = 0
        Top = 211
        Width = 742
        Height = 58
        DataSource = DMCadLote.dsProduto_Consumo
        object RLDetailGrid2: TRLDetailGrid
          Left = 0
          Top = 7
          Width = 742
          Height = 14
          ColCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = RLDetailGrid2BeforePrint
          object RLDBText12: TRLDBText
            Left = 2
            Top = 1
            Width = 103
            Height = 12
            AutoSize = False
            DataField = 'NOME_POSICAO'
            DataSource = DMCadLote.dsProduto_Consumo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 105
            Top = 2
            Width = 192
            Height = 11
            AutoSize = False
            DataField = 'NOME_MATERIAL'
            DataSource = DMCadLote.dsProduto_Consumo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 324
            Top = 1
            Width = 43
            Height = 12
            Alignment = taRightJustify
            Caption = 'Consumo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 299
            Top = 1
            Width = 23
            Height = 12
            Alignment = taCenter
            AutoSize = False
            DataField = 'UNIDADE'
            DataSource = DMCadLote.dsProduto_Consumo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw12: TRLDraw
            Left = 368
            Top = -1
            Width = 1
            Height = 18
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 7
          BandType = btHeader
          BeforePrint = RLBand3BeforePrint
          object RLDraw10: TRLDraw
            Left = 3
            Top = 3
            Width = 736
            Height = 2
            DrawKind = dkLine
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 21
          Width = 742
          Height = 7
          BandType = btFooter
          BeforePrint = RLBand4BeforePrint
          object RLDraw11: TRLDraw
            Left = 3
            Top = 3
            Width = 736
            Height = 2
            DrawKind = dkLine
          end
        end
      end
    end
  end
end
