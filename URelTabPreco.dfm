object fRelTabPreco: TfRelTabPreco
  Left = 30
  Top = 160
  Width = 1299
  Height = 532
  Caption = 'fRelTabPreco'
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
    Left = 32
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 26
      Top = 26
      Width = 742
      Height = 65
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 232
        Top = 18
        Width = 191
        Height = 16
        Caption = 'Relat'#243'rio da Tabela de Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 649
        Top = 2
        Width = 22
        Height = 12
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 675
        Top = 3
        Width = 32
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 629
        Top = 16
        Width = 42
        Height = 12
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 675
        Top = 17
        Width = 64
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 35
        Width = 60
        Height = 12
        Caption = 'Tabela Pre'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 3
        Width = 26
        Height = 14
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllbFilial: TRLLabel
        Left = 30
        Top = 3
        Width = 443
        Height = 14
        AutoSize = False
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 1
        Top = 50
        Width = 49
        Height = 12
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 63
        Width = 742
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel8: TRLLabel
        Left = 681
        Top = 50
        Width = 56
        Height = 12
        Caption = 'Pre'#231'o Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 66
        Top = 50
        Width = 35
        Height = 12
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 377
        Top = 50
        Width = 28
        Height = 12
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 527
        Top = 50
        Width = 28
        Height = 12
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllbOpcao: TRLLabel
        Left = 62
        Top = 35
        Width = 60
        Height = 12
        Caption = 'Tabela Pre'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 91
      Width = 742
      Height = 202
      DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
      object RLGroup1: TRLGroup
        Left = 0
        Top = 0
        Width = 742
        Height = 105
        DataFields = 'NOME_FORNECEDOR'
        object RLBand3: TRLBand
          Left = 0
          Top = 0
          Width = 742
          Height = 19
          BandType = btHeader
          object RLLabel9: TRLLabel
            Left = 8
            Top = 2
            Width = 70
            Height = 14
            Alignment = taRightJustify
            Caption = 'Fornecedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 82
            Top = 2
            Width = 471
            Height = 16
            AutoSize = False
            DataField = 'FANTASIA'
            DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
        end
        object RLBand2: TRLBand
          Left = 0
          Top = 19
          Width = 742
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDBText3: TRLDBText
            Left = 375
            Top = 2
            Width = 149
            Height = 12
            AutoSize = False
            DataField = 'NOMEGRUPO'
            DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 15
            Width = 742
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLDBMemo1: TRLDBMemo
            Left = 71
            Top = 2
            Width = 303
            Height = 12
            Behavior = [beSiteExpander]
            DataField = 'NOME_PRODUTO_COR'
            DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
          end
          object RLDBText2: TRLDBText
            Left = 525
            Top = 2
            Width = 133
            Height = 12
            AutoSize = False
            DataField = 'NOMEMARCA'
            DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 659
            Top = 2
            Width = 81
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLR_VENDA'
            DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 1
            Top = 2
            Width = 69
            Height = 12
            AutoSize = False
            DataField = 'REFERENCIA'
            DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  object RLReport2: TRLReport
    Left = 848
    Top = 19
    Width = 1123
    Height = 794
    DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand4: TRLBand
      Left = 26
      Top = 26
      Width = 1071
      Height = 65
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand4BeforePrint
      object RLLabel4: TRLLabel
        Left = 232
        Top = 18
        Width = 191
        Height = 16
        Caption = 'Relat'#243'rio da Tabela de Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 649
        Top = 2
        Width = 22
        Height = 12
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 675
        Top = 3
        Width = 32
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 629
        Top = 16
        Width = 42
        Height = 12
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 675
        Top = 17
        Width = 64
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 3
        Top = 3
        Width = 26
        Height = 14
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllbFilial2: TRLLabel
        Left = 30
        Top = 3
        Width = 443
        Height = 14
        AutoSize = False
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 1
        Top = 50
        Width = 49
        Height = 12
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 63
        Width = 1071
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel17: TRLLabel
        Left = 1011
        Top = 50
        Width = 56
        Height = 12
        Caption = 'Pre'#231'o Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 66
        Top = 50
        Width = 35
        Height = 12
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 374
        Top = 50
        Width = 28
        Height = 12
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 524
        Top = 50
        Width = 28
        Height = 12
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 859
        Top = 50
        Width = 30
        Height = 12
        Caption = 'Tabela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 700
        Top = 50
        Width = 28
        Height = 12
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 26
      Top = 91
      Width = 1071
      Height = 202
      DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 1071
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object RLDBText6: TRLDBText
          Left = 375
          Top = 2
          Width = 149
          Height = 12
          AutoSize = False
          DataField = 'NOMEGRUPO'
          DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 15
          Width = 1071
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBMemo2: TRLDBMemo
          Left = 71
          Top = 2
          Width = 303
          Height = 12
          Behavior = [beSiteExpander]
          DataField = 'NOME_PRODUTO_COR'
          DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
        end
        object RLDBText8: TRLDBText
          Left = 525
          Top = 2
          Width = 172
          Height = 12
          AutoSize = False
          DataField = 'NOMEMARCA'
          DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 987
          Top = 2
          Width = 81
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLR_VENDA'
          DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 1
          Top = 2
          Width = 69
          Height = 12
          AutoSize = False
          DataField = 'REFERENCIA'
          DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 859
          Top = 2
          Width = 126
          Height = 12
          AutoSize = False
          DataField = 'NOME'
          DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 698
          Top = 2
          Width = 159
          Height = 12
          AutoSize = False
          DataField = 'FANTASIA'
          DataSource = DMCadTab_Preco.dsTab_Preco_Consulta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
