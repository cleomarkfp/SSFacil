object fRelRecibo: TfRelRecibo
  Left = 176
  Top = 88
  Width = 1013
  Height = 588
  Caption = 'fRelRecibo'
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
    Left = 96
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DMCadRecibo.dsmImpNota
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 30
      Width = 734
      Height = 667
      DataSource = DMCadRecibo.dsmImpNota
      object RLSubDetail4: TRLSubDetail
        Left = 0
        Top = 13
        Width = 734
        Height = 476
        DataSource = DMCadRecibo.dsReciboImp
        object RLBand1: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 201
          BandType = btHeader
          object RLDraw10: TRLDraw
            Left = 128
            Top = 25
            Width = 606
            Height = 80
          end
          object RLDraw8: TRLDraw
            Left = 128
            Top = 1
            Width = 606
            Height = 26
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 1
            Width = 129
            Height = 104
          end
          object RLImage1: TRLImage
            Left = 4
            Top = 6
            Width = 118
            Height = 95
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Stretch = True
          end
          object RLLabel7: TRLLabel
            Left = 487
            Top = 9
            Width = 59
            Height = 14
            Caption = 'Dt.Emiss'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 167
            Top = 9
            Width = 70
            Height = 16
            Caption = 'Recibo N'#186':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 547
            Top = 9
            Width = 62
            Height = 14
            DataField = 'DTEMISSAO'
            DataSource = DMCadRecibo.dsReciboImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 243
            Top = 7
            Width = 113
            Height = 19
            DataField = 'NUM_RECIBO'
            DataSource = DMCadRecibo.dsReciboImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 137
            Top = 52
            Width = 45
            Height = 12
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlEndFilial: TRLLabel
            Left = 184
            Top = 52
            Width = 473
            Height = 12
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 184
            Top = 65
            Width = 305
            Height = 12
            AutoSize = False
            DataField = 'BAIRRO'
            DataSource = DMCadRecibo.dsFilial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 152
            Top = 65
            Width = 30
            Height = 12
            Caption = 'Bairro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 147
            Top = 78
            Width = 35
            Height = 12
            Caption = 'Cidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel57: TRLLabel
            Left = 375
            Top = 91
            Width = 31
            Height = 12
            Caption = 'CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 408
            Top = 91
            Width = 52
            Height = 12
            DataField = 'CNPJ_CPF'
            DataSource = DMCadRecibo.dsFilial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel58: TRLLabel
            Left = 500
            Top = 91
            Width = 50
            Height = 12
            Caption = 'Inscr. Est.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 551
            Top = 91
            Width = 55
            Height = 12
            DataField = 'INSCR_EST'
            DataSource = DMCadRecibo.dsFilial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel59: TRLLabel
            Left = 515
            Top = 78
            Width = 35
            Height = 12
            Caption = 'Estado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText19: TRLDBText
            Left = 551
            Top = 78
            Width = 16
            Height = 12
            DataField = 'UF'
            DataSource = DMCadRecibo.dsFilial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel60: TRLLabel
            Left = 138
            Top = 91
            Width = 45
            Height = 12
            Caption = 'Telefone :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText24: TRLDBText
            Left = 184
            Top = 91
            Width = 24
            Height = 11
            Alignment = taCenter
            AutoSize = False
            DataField = 'DDD1'
            DataSource = DMCadRecibo.dsFilial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText30: TRLDBText
            Left = 209
            Top = 91
            Width = 29
            Height = 12
            DataField = 'FONE'
            DataSource = DMCadRecibo.dsFilial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel61: TRLLabel
            Left = 527
            Top = 65
            Width = 23
            Height = 12
            Caption = 'Cep:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText35: TRLDBText
            Left = 551
            Top = 65
            Width = 22
            Height = 12
            DataField = 'CEP'
            DataSource = DMCadRecibo.dsFilial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText36: TRLDBText
            Left = 184
            Top = 78
            Width = 305
            Height = 12
            AutoSize = False
            DataField = 'CIDADE'
            DataSource = DMCadRecibo.dsFilial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText31: TRLDBText
            Left = 136
            Top = 32
            Width = 521
            Height = 14
            AutoSize = False
            DataField = 'NOME'
            DataSource = DMCadRecibo.dsFilial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 107
            Width = 734
            Height = 86
          end
          object RLLabel1: TRLLabel
            Left = 18
            Top = 113
            Width = 38
            Height = 14
            Caption = 'Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 60
            Top = 113
            Width = 415
            Height = 14
            AutoSize = False
            DataField = 'NOME_CLIENTE'
            DataSource = DMCadRecibo.dsReciboImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 198
            Top = 151
            Width = 415
            Height = 13
            AutoSize = False
            DataField = 'NOME_CIDADE'
            DataSource = DMCadRecibo.dsReciboImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 156
            Top = 151
            Width = 39
            Height = 13
            Caption = 'Cidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 25
            Top = 172
            Width = 31
            Height = 14
            Alignment = taRightJustify
            Caption = 'CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 60
            Top = 173
            Width = 127
            Height = 13
            AutoSize = False
            DataField = 'CNPJ_CPF'
            DataSource = DMCadRecibo.dsReciboImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 4
            Top = 132
            Width = 52
            Height = 14
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rlEndCliente: TRLLabel
            Left = 60
            Top = 132
            Width = 52
            Height = 14
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 31
            Top = 151
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Caption = 'CEP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 60
            Top = 151
            Width = 92
            Height = 13
            AutoSize = False
            DataField = 'CEP'
            DataSource = DMCadRecibo.dsReciboImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 642
            Top = 151
            Width = 39
            Height = 13
            Caption = 'Estado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 685
            Top = 151
            Width = 28
            Height = 13
            AutoSize = False
            DataField = 'UF'
            DataSource = DMCadRecibo.dsReciboImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 236
            Top = 172
            Width = 47
            Height = 14
            Caption = 'Insc.Est.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 286
            Top = 173
            Width = 127
            Height = 13
            AutoSize = False
            DataField = 'INSCR_EST'
            DataSource = DMCadRecibo.dsReciboImp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLSubDetail3: TRLSubDetail
          Left = 0
          Top = 201
          Width = 734
          Height = 72
          DataSource = DMCadRecibo.dsReciboImp_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Margins.TopMargin = 1.000000000000000000
          ParentFont = False
          object RLBand8: TRLBand
            Left = 0
            Top = 4
            Width = 734
            Height = 19
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Color = 14408667
            ParentColor = False
            Transparent = False
            object RLLabel22: TRLLabel
              Left = 5
              Top = 5
              Width = 48
              Height = 11
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel24: TRLLabel
              Left = 502
              Top = 5
              Width = 55
              Height = 11
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel25: TRLLabel
              Left = 601
              Top = 5
              Width = 56
              Height = 11
              Caption = 'Vlr.Unit'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
            object RLLabel26: TRLLabel
              Left = 689
              Top = 5
              Width = 41
              Height = 11
              Caption = 'Vlr.Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
            end
          end
          object RLBand9: TRLBand
            Left = 0
            Top = 23
            Width = 734
            Height = 19
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Completion = ctFullPage
            BeforePrint = RLBand9BeforePrint
            object RLDBText21: TRLDBText
              Left = 519
              Top = 5
              Width = 22
              Height = 12
              Alignment = taCenter
              DataField = 'QTD'
              DataSource = DMCadRecibo.dsReciboImp_Itens
            end
            object RLDBText22: TRLDBText
              Left = 582
              Top = 5
              Width = 71
              Height = 12
              Alignment = taRightJustify
              DataField = 'VLR_UNITARIO'
              DataSource = DMCadRecibo.dsReciboImp_Itens
            end
            object RLDBText23: TRLDBText
              Left = 676
              Top = 5
              Width = 54
              Height = 12
              Alignment = taRightJustify
              DataField = 'VLR_TOTAL'
              DataSource = DMCadRecibo.dsReciboImp_Itens
            end
            object RLDBMemo4: TRLDBMemo
              Left = 4
              Top = 4
              Width = 460
              Height = 12
              Behavior = [beSiteExpander]
              DataField = 'NOME_SERVICO_INT'
              DataSource = DMCadRecibo.dsReciboImp_Itens
            end
          end
          object RLBand12: TRLBand
            Left = 0
            Top = 42
            Width = 734
            Height = 5
            BandType = btFooter
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
          end
        end
        object RLBand10: TRLBand
          Left = 0
          Top = 273
          Width = 734
          Height = 27
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Margins.TopMargin = 1.000000000000000000
          ParentFont = False
          BeforePrint = RLBand10BeforePrint
          object RLLabel29: TRLLabel
            Left = 587
            Top = 7
            Width = 46
            Height = 14
            Caption = 'Vlr.Total:'
            Color = 13882323
            ParentColor = False
            Transparent = False
          end
          object RLLabel13: TRLLabel
            Left = 636
            Top = 7
            Width = 93
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vlr.Total:'
            Color = 13882323
            ParentColor = False
            Transparent = False
          end
        end
        object RLBand13: TRLBand
          Left = 0
          Top = 300
          Width = 734
          Height = 35
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Completion = ctFullPage
          Margins.TopMargin = 1.000000000000000000
          PageBreaking = pbAfterPrint
          BeforePrint = RLBand13BeforePrint
          object RLLabel11: TRLLabel
            Left = 14
            Top = 8
            Width = 26
            Height = 14
            Alignment = taRightJustify
            Caption = 'Obs:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLMemo1: TRLMemo
            Left = 43
            Top = 8
            Width = 665
            Height = 14
            Behavior = [beSiteExpander]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 13
        BeforePrint = RLBand2BeforePrint
        object RLLabel12: TRLLabel
          Left = 56
          Top = 2
          Width = 8
          Height = 10
          Caption = '.'
        end
      end
    end
  end
end