object fRelOSSimples: TfRelOSSimples
  Left = 402
  Top = 124
  Width = 842
  Height = 646
  Caption = 'fRelOSSimples'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 3
    Width = 794
    Height = 1123
    DataSource = DMCadOrdemServico.dsOrdemServico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.TopMargin = 3.000000000000000000
    PreviewOptions.ShowModal = True
    RecordRange = rrCurrentOnly
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 11
      Width = 718
      Height = 344
      DataSource = DMCadOrdemServico.dsOrdemServico
      RecordRange = rrCurrentOnly
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 167
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand1BeforePrint
        object RLDBText1: TRLDBText
          Left = 218
          Top = 0
          Width = 134
          Height = 19
          DataField = 'NOME_INTERNO'
          DataSource = DMCadOrdemServico.dsFilial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 66
          Top = 73
          Width = 350
          Height = 15
          AutoSize = False
          DataField = 'SOLICITANTE_NOME'
          DataSource = DMCadOrdemServico.dsOrdemServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 66
          Top = 88
          Width = 350
          Height = 15
          AutoSize = False
          DataField = 'SOLICITANTE_EMAIL'
          DataSource = DMCadOrdemServico.dsOrdemServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 66
          Top = 103
          Width = 350
          Height = 15
          AutoSize = False
          DataField = 'SOLICITANTE_FONE'
          DataSource = DMCadOrdemServico.dsOrdemServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 20
          Top = 73
          Width = 46
          Height = 14
          Alignment = taRightJustify
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 30
          Top = 88
          Width = 36
          Height = 14
          Alignment = taRightJustify
          Caption = 'EMAIL:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 33
          Top = 103
          Width = 33
          Height = 14
          Alignment = taRightJustify
          Caption = 'FONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 0
          Top = 150
          Width = 44
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'ITEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 44
          Top = 150
          Width = 446
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'SERVI'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 489
          Top = 150
          Width = 58
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'QTD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 547
          Top = 150
          Width = 84
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'VLR. UNIT.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 631
          Top = 150
          Width = 84
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'VLR. TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbTipo: TRLLabel
          Left = 503
          Top = 58
          Width = 109
          Height = 19
          Alignment = taRightJustify
          Caption = 'OR'#199'AMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 576
          Top = 79
          Width = 36
          Height = 15
          Alignment = taRightJustify
          Caption = 'DATA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 612
          Top = 79
          Width = 99
          Height = 15
          AutoSize = False
          DataField = 'DTEMISSAO'
          DataSource = DMCadOrdemServico.dsOrdemServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 416
          Top = 56
          Width = 3
          Height = 94
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText16: TRLDBText
          Left = 612
          Top = 94
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'HREMISSAO'
          DataSource = DMCadOrdemServico.dsOrdemServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 572
          Top = 94
          Width = 40
          Height = 15
          Alignment = taRightJustify
          Caption = 'HORA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbEndFilial: TRLLabel
          Left = 218
          Top = 35
          Width = 61
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbFone: TRLLabel
          Left = 218
          Top = 50
          Width = 41
          Height = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 523
          Top = 126
          Width = 89
          Height = 19
          Alignment = taRightJustify
          Caption = 'ENTREGA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 612
          Top = 124
          Width = 106
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          DataField = 'DTENTREGA'
          DataSource = DMCadOrdemServico.dsOrdemServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbNumOS: TRLLabel
          Left = 612
          Top = 56
          Width = 106
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLImage1: TRLImage
          Left = 0
          Top = 0
          Width = 215
          Height = 71
          Align = faLeftTop
          Center = True
          Stretch = True
          Transparent = False
        end
        object RLLabel14: TRLLabel
          Left = 218
          Top = 20
          Width = 38
          Height = 15
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 256
          Top = 20
          Width = 66
          Height = 15
          DataField = 'CNPJ_CPF'
          DataSource = DMCadOrdemServico.dsFilial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 13
          Top = 118
          Width = 53
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 66
          Top = 118
          Width = 350
          Height = 15
          AutoSize = False
          DataField = 'CNPJ_CPF'
          DataSource = DMCadOrdemServico.dsOrdemServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 40
          Top = 133
          Width = 26
          Height = 14
          Alignment = taRightJustify
          Caption = 'END:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbEndCliente: TRLLabel
          Left = 66
          Top = 133
          Width = 350
          Height = 15
          AutoSize = False
          Caption = 'Endereco, Num, Cidade, Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 167
        Width = 718
        Height = 166
        DataSource = DMCadOrdemServico.dsOrdemServico_Simples
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 15
          AutoSize = True
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBText7: TRLDBText
            Left = 0
            Top = 0
            Width = 44
            Height = 15
            AutoSize = False
            DataField = 'ITEM'
            DataSource = DMCadOrdemServico.dsOrdemServico_Simples
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText9: TRLDBText
            Left = 489
            Top = 0
            Width = 58
            Height = 14
            Alignment = taCenter
            AutoSize = False
            DataField = 'QTD'
            DataSource = DMCadOrdemServico.dsOrdemServico_Simples
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 547
            Top = 0
            Width = 84
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_UNITARIO'
            DataSource = DMCadOrdemServico.dsOrdemServico_Simples
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 631
            Top = 0
            Width = 84
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_TOTAL'
            DataSource = DMCadOrdemServico.dsOrdemServico_Simples
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBMemo3: TRLDBMemo
            Left = 45
            Top = 0
            Width = 444
            Height = 14
            Behavior = [beSiteExpander]
            DataField = 'clNomeServico'
            DataSource = DMCadOrdemServico.dsOrdemServico_Simples
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 30
          Width = 718
          Height = 51
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          BeforePrint = RLBand3BeforePrint
          object RLLabel12: TRLLabel
            Left = 536
            Top = 24
            Width = 96
            Height = 16
            Alignment = taRightJustify
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'VALOR TOTAL:'
          end
          object RLLabel13: TRLLabel
            Left = 515
            Top = 8
            Width = 117
            Height = 16
            Alignment = taRightJustify
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'VALOR ENTRADA:'
          end
          object lbVlrEntrada: TRLLabel
            Left = 632
            Top = 8
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '0.00'
          end
          object lbVlrTotal: TRLLabel
            Left = 632
            Top = 24
            Width = 84
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '0.00'
          end
          object RLDBMemo1: TRLDBMemo
            Left = 0
            Top = 35
            Width = 417
            Height = 14
            Behavior = [beSiteExpander]
            DataField = 'OBS'
            DataSource = DMCadOrdemServico.dsOrdemServico
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 7
            Top = 0
            Width = 96
            Height = 14
            Alignment = taRightJustify
            Caption = 'ATENDENTE / T'#201'C.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText14: TRLDBText
            Left = 104
            Top = 0
            Width = 206
            Height = 14
            AutoSize = False
            DataField = 'NOME_ATENDENTE'
            DataSource = DMCadOrdemServico.dsOrdemServico
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 31
            Top = 14
            Width = 72
            Height = 14
            Alignment = taRightJustify
            Caption = 'COND. PGTO.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 104
            Top = 14
            Width = 313
            Height = 14
            AutoSize = False
            DataField = 'CONDPGTO'
            DataSource = DMCadOrdemServico.dsOrdemServico
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 81
          Width = 718
          Height = 65
          AlignToBottom = True
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDBText2: TRLDBText
            Left = 40
            Top = 47
            Width = 302
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'NOME_ATENDENTE'
            DataSource = DMCadOrdemServico.dsOrdemServico
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 416
            Top = 47
            Width = 302
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            DataField = 'SOLICITANTE_NOME'
            DataSource = DMCadOrdemServico.dsOrdemServico
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 15
          Width = 718
          Height = 15
          AutoSize = True
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          BeforePrint = RLBand5BeforePrint
          object RLDBText8: TRLDBText
            Left = 0
            Top = 0
            Width = 718
            Height = 14
            Align = faClientTop
            DataField = 'DESCRICAO'
            DataSource = DMCadOrdemServico.dsOrdemServico_Simples
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
end
