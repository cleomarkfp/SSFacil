unit UDMCopiarNota;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress;

type
  TDMCopiarNota = class(TDataModule)
    sdsNotaFiscal: TSQLDataSet;
    dspNotaFiscal: TDataSetProvider;
    cdsNotaFiscal: TClientDataSet;
    dsNotaFiscal: TDataSource;
    sdsNotaFiscalID: TIntegerField;
    sdsNotaFiscalNUMNOTA: TIntegerField;
    sdsNotaFiscalDTEMISSAO: TDateField;
    sdsNotaFiscalID_CFOP: TIntegerField;                   
    sdsNotaFiscalID_CLIENTE: TIntegerField;
    sdsNotaFiscalID_CONDPGTO: TIntegerField;
    sdsNotaFiscalID_VENDEDOR: TIntegerField;
    sdsNotaFiscalVLR_ICMS: TFloatField;
    sdsNotaFiscalVLR_IPI: TFloatField;
    sdsNotaFiscalVLR_NOTA: TFloatField;
    sdsNotaFiscalVLR_ITENS: TFloatField;
    sdsNotaFiscalVLR_DUPLICATA: TFloatField;
    sdsNotaFiscalVLR_ENTRADA: TFloatField;
    sdsNotaFiscalPERC_DESCONTO: TFloatField;
    sdsNotaFiscalVLR_DESCONTO: TFloatField;
    sdsNotaFiscalVLR_FRETE: TFloatField;
    sdsNotaFiscalVLR_SEGURO: TFloatField;
    sdsNotaFiscalVLR_OUTRASDESP: TFloatField;
    sdsNotaFiscalBASE_ICMSTRANSF: TFloatField;
    sdsNotaFiscalPERC_TRANSF: TFloatField;
    sdsNotaFiscalVLR_TRANSF: TFloatField;
    sdsNotaFiscalVLR_PIS: TFloatField;
    sdsNotaFiscalVLR_COFINS: TFloatField;
    sdsNotaFiscalVLR_TAXACISCOMEX: TFloatField;
    sdsNotaFiscalVLR_OUTROS: TFloatField;
    sdsNotaFiscalBASE_ICMSSIMPLES: TFloatField;
    sdsNotaFiscalVLR_ICMSSIMPLES: TFloatField;
    sdsNotaFiscalPERC_ICMSSIMPLES: TFloatField;
    sdsNotaFiscalVLR_IMPORTACAO: TFloatField;
    sdsNotaFiscalBASE_ICMSSUBST: TFloatField;
    sdsNotaFiscalVLR_ICMSSUBST: TFloatField;
    sdsNotaFiscalBASE_ICMSOUTROS: TFloatField;
    sdsNotaFiscalVLR_ICMSOUTROS: TFloatField;
    sdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField;
    sdsNotaFiscalVLR_ADUANEIRA: TFloatField;
    sdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField;
    sdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField;
    sdsNotaFiscalPERC_ICMS_FRETE: TFloatField;
    sdsNotaFiscalPERC_DESCONTOORIG: TFloatField;
    sdsNotaFiscalQTDVOLUME: TIntegerField;
    sdsNotaFiscalESPECIE: TStringField;
    sdsNotaFiscalMARCA: TStringField;
    sdsNotaFiscalNUMEROVOLUME: TStringField;
    sdsNotaFiscalPESOBRUTO: TFloatField;
    sdsNotaFiscalPESOLIQUIDO: TFloatField;
    sdsNotaFiscalPLACA: TStringField;
    sdsNotaFiscalUFPLACA: TStringField;
    sdsNotaFiscalTIPO_FRETE: TStringField;
    sdsNotaFiscalID_TRANSPORTADORA: TIntegerField;
    sdsNotaFiscalID_REDESPACHO: TIntegerField;
    sdsNotaFiscalCANCELADA: TStringField;
    sdsNotaFiscalMOTIVO_CANCELADA: TStringField;
    sdsNotaFiscalDTSAIDAENTRADA: TDateField;
    sdsNotaFiscalHRSAIDAENTRADA: TTimeField;
    sdsNotaFiscalID_BANCO: TIntegerField;
    sdsNotaFiscalLOCALENTREGA: TStringField;
    sdsNotaFiscalID_EXTCOMISSAO: TIntegerField;
    sdsNotaFiscalDESCRICAO_DESC: TStringField;
    sdsNotaFiscalID_CLIENTETRIANG: TIntegerField;
    sdsNotaFiscalQTDTOTAL_ITENS: TIntegerField;
    sdsNotaFiscalNFERECIBO: TStringField;
    sdsNotaFiscalNFEPROTOCOLO: TStringField;
    sdsNotaFiscalNFECHAVEACESSO: TStringField;
    sdsNotaFiscalNFEPROTOCOLO_CANCELADA: TStringField;
    sdsNotaFiscalTIPO_ENVIONFE: TStringField;
    sdsNotaFiscalNFECODBARRA_CONTINGENCIA: TStringField;
    sdsNotaFiscalNFEVERSAO: TStringField;
    sdsNotaFiscalNFEFINALIDADE: TStringField;
    sdsNotaFiscalNFEAMBIENTE: TStringField;
    sdsNotaFiscalNUMNOTACOPIADA: TIntegerField;
    sdsNotaFiscalSERIECOPIADA: TStringField;
    sdsNotaFiscalDTCONTINGENCIA: TDateField;
    sdsNotaFiscalHRCONTINGENCIA: TTimeField;
    sdsNotaFiscalMOTIVO_CONTINGENCIA: TStringField;
    sdsNotaFiscalNFEVERSAOEMISSAO: TStringField;
    sdsNotaFiscalID_REGIMETRIB: TIntegerField;
    sdsNotaFiscalRNTC: TStringField;
    sdsNotaFiscalVAGAOBALSA_IDENTIF: TStringField;
    sdsNotaFiscalVAGAOBALSA_TIPOIDENTIF: TStringField;
    sdsNotaFiscalUFEMBEXPORTACAO: TStringField;
    sdsNotaFiscalLOCALEMBEXPORTACAO: TStringField;
    sdsNotaFiscalPISCOFINS_SOMAROUTRASDESP: TStringField;
    sdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField;
    sdsNotaFiscalGERARDUPL_FRETE: TStringField;
    sdsNotaFiscalGERARDUPL_SEGURO: TStringField;
    sdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField;
    sdsNotaFiscalNFEDENEGADA: TStringField;
    sdsNotaFiscalMOTIVO_DENEGADA: TStringField;
    cdsNotaFiscalFILIAL: TIntegerField;
    cdsNotaFiscalID: TIntegerField;
    cdsNotaFiscalSERIE: TStringField;
    cdsNotaFiscalNUMNOTA: TIntegerField;
    cdsNotaFiscalDTEMISSAO: TDateField;
    cdsNotaFiscalID_CFOP: TIntegerField;
    cdsNotaFiscalID_CLIENTE: TIntegerField;
    cdsNotaFiscalID_CONDPGTO: TIntegerField;
    cdsNotaFiscalID_VENDEDOR: TIntegerField;
    cdsNotaFiscalVLR_ICMS: TFloatField;
    cdsNotaFiscalVLR_IPI: TFloatField;
    cdsNotaFiscalVLR_NOTA: TFloatField;
    cdsNotaFiscalVLR_ITENS: TFloatField;
    cdsNotaFiscalVLR_DUPLICATA: TFloatField;
    cdsNotaFiscalVLR_ENTRADA: TFloatField;
    cdsNotaFiscalPERC_DESCONTO: TFloatField;
    cdsNotaFiscalVLR_DESCONTO: TFloatField;
    cdsNotaFiscalVLR_FRETE: TFloatField;
    cdsNotaFiscalVLR_SEGURO: TFloatField;
    cdsNotaFiscalVLR_OUTRASDESP: TFloatField;
    cdsNotaFiscalBASE_ICMSTRANSF: TFloatField;
    cdsNotaFiscalPERC_TRANSF: TFloatField;
    cdsNotaFiscalVLR_TRANSF: TFloatField;
    cdsNotaFiscalVLR_PIS: TFloatField;
    cdsNotaFiscalVLR_COFINS: TFloatField;
    cdsNotaFiscalVLR_TAXACISCOMEX: TFloatField;
    cdsNotaFiscalVLR_OUTROS: TFloatField;
    cdsNotaFiscalBASE_ICMSSIMPLES: TFloatField;
    cdsNotaFiscalVLR_ICMSSIMPLES: TFloatField;
    cdsNotaFiscalPERC_ICMSSIMPLES: TFloatField;
    cdsNotaFiscalVLR_IMPORTACAO: TFloatField;
    cdsNotaFiscalBASE_ICMSSUBST: TFloatField;
    cdsNotaFiscalVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscalBASE_ICMSOUTROS: TFloatField;
    cdsNotaFiscalVLR_ICMSOUTROS: TFloatField;
    cdsNotaFiscalVLR_DUPLICATAOUTROS: TFloatField;
    cdsNotaFiscalVLR_ADUANEIRA: TFloatField;
    cdsNotaFiscalPERC_ICMS_PISCOFINS: TFloatField;
    cdsNotaFiscalPERC_ICMS_OUTROSVALORES: TFloatField;
    cdsNotaFiscalPERC_ICMS_FRETE: TFloatField;
    cdsNotaFiscalPERC_DESCONTOORIG: TFloatField;
    cdsNotaFiscalQTDVOLUME: TIntegerField;
    cdsNotaFiscalESPECIE: TStringField;
    cdsNotaFiscalMARCA: TStringField;
    cdsNotaFiscalNUMEROVOLUME: TStringField;
    cdsNotaFiscalPESOBRUTO: TFloatField;
    cdsNotaFiscalPESOLIQUIDO: TFloatField;
    cdsNotaFiscalPLACA: TStringField;
    cdsNotaFiscalUFPLACA: TStringField;
    cdsNotaFiscalTIPO_FRETE: TStringField;
    cdsNotaFiscalID_TRANSPORTADORA: TIntegerField;
    cdsNotaFiscalID_REDESPACHO: TIntegerField;
    cdsNotaFiscalCANCELADA: TStringField;
    cdsNotaFiscalMOTIVO_CANCELADA: TStringField;
    cdsNotaFiscalDTSAIDAENTRADA: TDateField;
    cdsNotaFiscalHRSAIDAENTRADA: TTimeField;
    cdsNotaFiscalID_BANCO: TIntegerField;
    cdsNotaFiscalLOCALENTREGA: TStringField;
    cdsNotaFiscalID_EXTCOMISSAO: TIntegerField;
    cdsNotaFiscalDESCRICAO_DESC: TStringField;
    cdsNotaFiscalID_CLIENTETRIANG: TIntegerField;
    cdsNotaFiscalQTDTOTAL_ITENS: TIntegerField;
    cdsNotaFiscalNFERECIBO: TStringField;
    cdsNotaFiscalNFEPROTOCOLO: TStringField;
    cdsNotaFiscalNFECHAVEACESSO: TStringField;
    cdsNotaFiscalNFEPROTOCOLO_CANCELADA: TStringField;
    cdsNotaFiscalTIPO_ENVIONFE: TStringField;
    cdsNotaFiscalNFECODBARRA_CONTINGENCIA: TStringField;
    cdsNotaFiscalNFEVERSAO: TStringField;
    cdsNotaFiscalNFEFINALIDADE: TStringField;
    cdsNotaFiscalNFEAMBIENTE: TStringField;
    cdsNotaFiscalNUMNOTACOPIADA: TIntegerField;
    cdsNotaFiscalSERIECOPIADA: TStringField;
    cdsNotaFiscalDTCONTINGENCIA: TDateField;
    cdsNotaFiscalHRCONTINGENCIA: TTimeField;
    cdsNotaFiscalMOTIVO_CONTINGENCIA: TStringField;
    cdsNotaFiscalNFEVERSAOEMISSAO: TStringField;
    cdsNotaFiscalID_REGIMETRIB: TIntegerField;
    cdsNotaFiscalRNTC: TStringField;
    cdsNotaFiscalVAGAOBALSA_IDENTIF: TStringField;
    cdsNotaFiscalVAGAOBALSA_TIPOIDENTIF: TStringField;
    cdsNotaFiscalUFEMBEXPORTACAO: TStringField;
    cdsNotaFiscalLOCALEMBEXPORTACAO: TStringField;
    cdsNotaFiscalPISCOFINS_SOMAROUTRASDESP: TStringField;
    cdsNotaFiscalGERARDUPL_OUTROSVALORES: TStringField;
    cdsNotaFiscalGERARDUPL_FRETE: TStringField;
    cdsNotaFiscalGERARDUPL_SEGURO: TStringField;
    cdsNotaFiscalINFORMADO_NUMNOTAMANUAL: TStringField;
    cdsNotaFiscalNFEDENEGADA: TStringField;
    cdsNotaFiscalMOTIVO_DENEGADA: TStringField;
    dsNotaFiscal_Mestre: TDataSource;
    sdsNotaFiscal_Itens: TSQLDataSet;
    cdsNotaFiscal_Itens: TClientDataSet;
    dsNotaFiscal_Itens: TDataSource;
    sdsNotaFiscal_Desconto: TSQLDataSet;
    cdsNotaFiscal_Desconto: TClientDataSet;
    dsNotaFiscal_Desconto: TDataSource;
    sdsNotaFiscal_Lacre: TSQLDataSet;
    cdsNotaFiscal_Lacre: TClientDataSet;
    dsNotaFiscal_Lacre: TDataSource;
    sdsNotaFiscal_NFe: TSQLDataSet;
    cdsNotaFiscal_NFe: TClientDataSet;
    dsNotaFiscal_NFe: TDataSource;
    sdsNotaFiscal_Parc: TSQLDataSet;
    cdsNotaFiscal_Parc: TClientDataSet;
    dsNotaFiscal_Parc: TDataSource;
    sdsNotaFiscal_Reboque: TSQLDataSet;
    cdsNotaFiscal_Reboque: TClientDataSet;
    dsNotaFiscal_Reboque: TDataSource;
    sdsNotaFiscal_ItensID: TIntegerField;
    sdsNotaFiscal_ItensITEM: TIntegerField;
    sdsNotaFiscal_ItensID_PRODUTO: TIntegerField;
    sdsNotaFiscal_ItensID_COR: TIntegerField;
    sdsNotaFiscal_ItensTAMANHO: TStringField;
    sdsNotaFiscal_ItensID_NCM: TIntegerField;
    sdsNotaFiscal_ItensUNIDADE: TStringField;
    sdsNotaFiscal_ItensQTD: TFloatField;
    sdsNotaFiscal_ItensID_CFOP: TIntegerField;
    sdsNotaFiscal_ItensID_CSTICMS: TIntegerField;
    sdsNotaFiscal_ItensID_CSTIPI: TIntegerField;
    sdsNotaFiscal_ItensID_PIS: TIntegerField;
    sdsNotaFiscal_ItensID_COFINS: TIntegerField;
    sdsNotaFiscal_ItensPERC_ICMS: TFloatField;
    sdsNotaFiscal_ItensPERC_IPI: TFloatField;
    sdsNotaFiscal_ItensVLR_UNITARIO: TFloatField;
    sdsNotaFiscal_ItensVLR_TOTAL: TFloatField;
    sdsNotaFiscal_ItensPERC_DESCONTO: TFloatField;
    sdsNotaFiscal_ItensVLR_DESCONTO: TFloatField;
    sdsNotaFiscal_ItensBASE_ICMS: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMS: TFloatField;
    sdsNotaFiscal_ItensVLR_IPI: TFloatField;
    sdsNotaFiscal_ItensPERC_PIS: TFloatField;
    sdsNotaFiscal_ItensPERC_COFINS: TFloatField;
    sdsNotaFiscal_ItensVLR_PIS: TFloatField;
    sdsNotaFiscal_ItensVLR_COFINS: TFloatField;
    sdsNotaFiscal_ItensORIGEM_PROD: TStringField;
    sdsNotaFiscal_ItensBASE_ICMSSIMPLES: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSSIMPLES: TFloatField;
    sdsNotaFiscal_ItensCALCULARICMSSOBREIPI: TStringField;
    sdsNotaFiscal_ItensNOME_PRODUTO: TStringField;
    sdsNotaFiscal_ItensREFERENCIA: TStringField;
    sdsNotaFiscal_ItensID_MOVESTOQUE: TIntegerField;
    sdsNotaFiscal_ItensGERAR_DUPLICATA: TStringField;
    sdsNotaFiscal_ItensNUMERO_OC: TStringField;
    sdsNotaFiscal_ItensNUMERO_OS: TStringField;
    sdsNotaFiscal_ItensITEM_PEDIDO: TIntegerField;
    sdsNotaFiscal_ItensPERC_COMISSAO: TFloatField;
    sdsNotaFiscal_ItensQTDRESTANTE: TFloatField;
    sdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField;
    sdsNotaFiscal_ItensSOMAR_TRANSF_ICMS: TStringField;
    sdsNotaFiscal_ItensOBS_COMPLEMENTAR: TStringField;
    sdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO: TStringField;
    sdsNotaFiscal_ItensVLR_FRETE: TFloatField;
    sdsNotaFiscal_ItensVLR_OUTRASDESPESAS: TFloatField;
    sdsNotaFiscal_ItensVLR_SEGURO: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSFRETE: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS: TFloatField;
    sdsNotaFiscal_ItensBASE_ICMSSUBST: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSSUBST: TFloatField;
    sdsNotaFiscal_ItensVLR_IMPORTACAO: TFloatField;
    sdsNotaFiscal_ItensVLR_ADUANEIRA: TFloatField;
    cdsNotaFiscalsdsNotaFiscal_Itens: TDataSetField;
    cdsNotaFiscal_ItensID: TIntegerField;
    cdsNotaFiscal_ItensITEM: TIntegerField;
    cdsNotaFiscal_ItensID_PRODUTO: TIntegerField;
    cdsNotaFiscal_ItensID_COR: TIntegerField;
    cdsNotaFiscal_ItensTAMANHO: TStringField;
    cdsNotaFiscal_ItensID_NCM: TIntegerField;
    cdsNotaFiscal_ItensUNIDADE: TStringField;
    cdsNotaFiscal_ItensQTD: TFloatField;
    cdsNotaFiscal_ItensID_CFOP: TIntegerField;
    cdsNotaFiscal_ItensID_CSTICMS: TIntegerField;
    cdsNotaFiscal_ItensID_CSTIPI: TIntegerField;
    cdsNotaFiscal_ItensID_PIS: TIntegerField;
    cdsNotaFiscal_ItensID_COFINS: TIntegerField;
    cdsNotaFiscal_ItensPERC_ICMS: TFloatField;
    cdsNotaFiscal_ItensPERC_IPI: TFloatField;
    cdsNotaFiscal_ItensVLR_UNITARIO: TFloatField;
    cdsNotaFiscal_ItensVLR_TOTAL: TFloatField;
    cdsNotaFiscal_ItensPERC_DESCONTO: TFloatField;
    cdsNotaFiscal_ItensVLR_DESCONTO: TFloatField;
    cdsNotaFiscal_ItensBASE_ICMS: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMS: TFloatField;
    cdsNotaFiscal_ItensVLR_IPI: TFloatField;
    cdsNotaFiscal_ItensPERC_PIS: TFloatField;
    cdsNotaFiscal_ItensPERC_COFINS: TFloatField;
    cdsNotaFiscal_ItensVLR_PIS: TFloatField;
    cdsNotaFiscal_ItensVLR_COFINS: TFloatField;
    cdsNotaFiscal_ItensORIGEM_PROD: TStringField;
    cdsNotaFiscal_ItensBASE_ICMSSIMPLES: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSSIMPLES: TFloatField;
    cdsNotaFiscal_ItensCALCULARICMSSOBREIPI: TStringField;
    cdsNotaFiscal_ItensNOME_PRODUTO: TStringField;
    cdsNotaFiscal_ItensREFERENCIA: TStringField;
    cdsNotaFiscal_ItensID_MOVESTOQUE: TIntegerField;
    cdsNotaFiscal_ItensGERAR_DUPLICATA: TStringField;
    cdsNotaFiscal_ItensNUMERO_OC: TStringField;
    cdsNotaFiscal_ItensNUMERO_OS: TStringField;
    cdsNotaFiscal_ItensITEM_PEDIDO: TIntegerField;
    cdsNotaFiscal_ItensPERC_COMISSAO: TFloatField;
    cdsNotaFiscal_ItensQTDRESTANTE: TFloatField;
    cdsNotaFiscal_ItensQTDDEVOLVIDA: TFloatField;
    cdsNotaFiscal_ItensSOMAR_TRANSF_ICMS: TStringField;
    cdsNotaFiscal_ItensOBS_COMPLEMENTAR: TStringField;
    cdsNotaFiscal_ItensSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsNotaFiscal_ItensVLR_FRETE: TFloatField;
    cdsNotaFiscal_ItensVLR_OUTRASDESPESAS: TFloatField;
    cdsNotaFiscal_ItensVLR_SEGURO: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSFRETE: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSOUTRASDESPESAS: TFloatField;
    cdsNotaFiscal_ItensBASE_ICMSSUBST: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSSUBST: TFloatField;
    cdsNotaFiscal_ItensVLR_IMPORTACAO: TFloatField;
    cdsNotaFiscal_ItensVLR_ADUANEIRA: TFloatField;
    sdsNotaFiscal_DescontoID: TIntegerField;
    sdsNotaFiscal_DescontoITEM: TIntegerField;
    sdsNotaFiscal_DescontoPERC_DESCONTO: TFloatField;
    cdsNotaFiscalsdsNotaFiscal_Desconto: TDataSetField;
    cdsNotaFiscal_DescontoID: TIntegerField;
    cdsNotaFiscal_DescontoITEM: TIntegerField;
    cdsNotaFiscal_DescontoPERC_DESCONTO: TFloatField;
    sdsNotaFiscal_LacreID: TIntegerField;
    sdsNotaFiscal_LacreITEM: TIntegerField;
    sdsNotaFiscal_LacreNUMLACRE: TStringField;
    cdsNotaFiscalsdsNotaFiscal_Lacre: TDataSetField;
    cdsNotaFiscal_LacreID: TIntegerField;
    cdsNotaFiscal_LacreITEM: TIntegerField;
    cdsNotaFiscal_LacreNUMLACRE: TStringField;
    sdsNotaFiscal_NFeID: TIntegerField;
    sdsNotaFiscal_NFeITEM: TIntegerField;
    sdsNotaFiscal_NFeTIPO: TStringField;
    sdsNotaFiscal_NFeITEMTIPO: TIntegerField;
    sdsNotaFiscal_NFeDESCRICAO: TStringField;
    sdsNotaFiscal_NFeMOTIVO: TMemoField;
    sdsNotaFiscal_NFeNFEPROTOCOLO: TStringField;
    sdsNotaFiscal_NFeNFERECIBO: TStringField;
    sdsNotaFiscal_NFeDATAHORAAUT: TSQLTimeStampField;
    sdsNotaFiscal_NFeXML: TMemoField;
    sdsNotaFiscal_NFeDTCADASTRO: TDateField;
    sdsNotaFiscal_NFeHRCADASTRO: TTimeField;
    cdsNotaFiscalsdsNotaFiscal_NFe: TDataSetField;
    cdsNotaFiscal_NFeID: TIntegerField;
    cdsNotaFiscal_NFeITEM: TIntegerField;
    cdsNotaFiscal_NFeTIPO: TStringField;
    cdsNotaFiscal_NFeITEMTIPO: TIntegerField;
    cdsNotaFiscal_NFeDESCRICAO: TStringField;
    cdsNotaFiscal_NFeMOTIVO: TMemoField;
    cdsNotaFiscal_NFeNFEPROTOCOLO: TStringField;
    cdsNotaFiscal_NFeNFERECIBO: TStringField;
    cdsNotaFiscal_NFeDATAHORAAUT: TSQLTimeStampField;
    cdsNotaFiscal_NFeXML: TMemoField;
    cdsNotaFiscal_NFeDTCADASTRO: TDateField;
    cdsNotaFiscal_NFeHRCADASTRO: TTimeField;
    sdsNotaFiscal_ParcID: TIntegerField;
    sdsNotaFiscal_ParcITEM: TIntegerField;
    sdsNotaFiscal_ParcDTVENCIMENTO: TDateField;
    sdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField;
    sdsNotaFiscal_ParcID_TIPOCOBRANCA: TIntegerField;
    sdsNotaFiscal_ParcID_CONTA: TIntegerField;
    cdsNotaFiscalsdsNotaFiscal_Parc: TDataSetField;
    cdsNotaFiscal_ParcID: TIntegerField;
    cdsNotaFiscal_ParcITEM: TIntegerField;
    cdsNotaFiscal_ParcDTVENCIMENTO: TDateField;
    cdsNotaFiscal_ParcVLR_VENCIMENTO: TFloatField;
    cdsNotaFiscal_ParcID_TIPOCOBRANCA: TIntegerField;
    cdsNotaFiscal_ParcID_CONTA: TIntegerField;
    sdsNotaFiscal_ReboqueID: TIntegerField;
    sdsNotaFiscal_ReboqueITEM: TIntegerField;
    sdsNotaFiscal_ReboquePLACA: TStringField;
    sdsNotaFiscal_ReboqueUF: TStringField;
    sdsNotaFiscal_ReboqueRNTC: TStringField;
    cdsNotaFiscalsdsNotaFiscal_Reboque: TDataSetField;
    cdsNotaFiscal_ReboqueID: TIntegerField;
    cdsNotaFiscal_ReboqueITEM: TIntegerField;
    cdsNotaFiscal_ReboquePLACA: TStringField;
    cdsNotaFiscal_ReboqueUF: TStringField;
    cdsNotaFiscal_ReboqueRNTC: TStringField;
    sdsNotaFiscal_Ref: TSQLDataSet;
    cdsNotaFiscal_Ref: TClientDataSet;
    dsNotaFiscal_Ref: TDataSource;
    sdsNotaFiscal_RefID: TIntegerField;
    sdsNotaFiscal_RefITEM: TIntegerField;
    sdsNotaFiscal_RefTIPO: TStringField;
    sdsNotaFiscal_RefID_NOTAREF: TIntegerField;
    sdsNotaFiscal_RefNUMNOTA_REF: TIntegerField;
    sdsNotaFiscal_RefSERIE_REF: TStringField;
    sdsNotaFiscal_RefUF_REF: TStringField;
    sdsNotaFiscal_RefANO_REF: TIntegerField;
    sdsNotaFiscal_RefMES_REF: TIntegerField;
    sdsNotaFiscal_RefCNPJ_REF: TStringField;
    sdsNotaFiscal_RefMODELO_REF: TStringField;
    sdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField;
    sdsNotaFiscal_RefID_FORNECEDOR: TIntegerField;
    sdsNotaFiscal_RefDESCRICAO_TIPO: TStringField;
    sdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField;
    sdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField;
    sdsNotaFiscal_RefCUPOM_MODELO: TStringField;
    sdsNotaFiscal_RefINSCESTADUAL_REF: TStringField;
    cdsNotaFiscalsdsNotaFiscal_Ref: TDataSetField;
    cdsNotaFiscal_RefID: TIntegerField;
    cdsNotaFiscal_RefITEM: TIntegerField;
    cdsNotaFiscal_RefTIPO: TStringField;
    cdsNotaFiscal_RefID_NOTAREF: TIntegerField;
    cdsNotaFiscal_RefNUMNOTA_REF: TIntegerField;
    cdsNotaFiscal_RefSERIE_REF: TStringField;
    cdsNotaFiscal_RefUF_REF: TStringField;
    cdsNotaFiscal_RefANO_REF: TIntegerField;
    cdsNotaFiscal_RefMES_REF: TIntegerField;
    cdsNotaFiscal_RefCNPJ_REF: TStringField;
    cdsNotaFiscal_RefMODELO_REF: TStringField;
    cdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField;
    cdsNotaFiscal_RefID_FORNECEDOR: TIntegerField;
    cdsNotaFiscal_RefDESCRICAO_TIPO: TStringField;
    cdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField;
    cdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField;
    cdsNotaFiscal_RefCUPOM_MODELO: TStringField;
    cdsNotaFiscal_RefINSCESTADUAL_REF: TStringField;
    dsNotaFiscal_Mestre_Item: TDataSource;
    sdsNotaFiscal_Ped: TSQLDataSet;
    cdsNotaFiscal_Ped: TClientDataSet;
    dsNotaFiscal_Ped: TDataSource;
    sdsNotaFiscal_PedID: TIntegerField;
    sdsNotaFiscal_PedITEM: TIntegerField;
    sdsNotaFiscal_PedITEM_PEDIDO: TIntegerField;
    sdsNotaFiscal_PedQTD: TFloatField;
    cdsNotaFiscal_ItenssdsNotaFiscal_Ped: TDataSetField;
    cdsNotaFiscal_PedID: TIntegerField;
    cdsNotaFiscal_PedITEM: TIntegerField;
    cdsNotaFiscal_PedITEM_PEDIDO: TIntegerField;
    cdsNotaFiscal_PedQTD: TFloatField;
    sdsNotaFiscal_NDevolvida: TSQLDataSet;
    sdsNotaFiscal_NDevolvidaID: TIntegerField;
    sdsNotaFiscal_NDevolvidaITEM: TIntegerField;
    sdsNotaFiscal_NDevolvidaITEM_NDEV: TIntegerField;
    sdsNotaFiscal_NDevolvidaID_FORNECEDOR: TIntegerField;
    sdsNotaFiscal_NDevolvidaFILIAL_NTE: TIntegerField;
    sdsNotaFiscal_NDevolvidaID_NTE: TIntegerField;
    sdsNotaFiscal_NDevolvidaITEM_NTE: TIntegerField;
    sdsNotaFiscal_NDevolvidaQTD: TFloatField;
    sdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE: TStringField;
    cdsNotaFiscal_ItenssdsNotaFiscal_NDevolvida: TDataSetField;
    cdsNotaFiscal_NDevolvida: TClientDataSet;
    cdsNotaFiscal_NDevolvidaID: TIntegerField;
    cdsNotaFiscal_NDevolvidaITEM: TIntegerField;
    cdsNotaFiscal_NDevolvidaITEM_NDEV: TIntegerField;
    cdsNotaFiscal_NDevolvidaID_FORNECEDOR: TIntegerField;
    cdsNotaFiscal_NDevolvidaFILIAL_NTE: TIntegerField;
    cdsNotaFiscal_NDevolvidaID_NTE: TIntegerField;
    cdsNotaFiscal_NDevolvidaITEM_NTE: TIntegerField;
    cdsNotaFiscal_NDevolvidaQTD: TFloatField;
    cdsNotaFiscal_NDevolvidaNFECHAVEACESSO_NTE: TStringField;
    dsNotaFiscal_NDevolvida: TDataSource;
    sdsNotaFiscal_Imp: TSQLDataSet;
    cdsNotaFiscal_Imp: TClientDataSet;
    dsNotaFiscal_Imp: TDataSource;
    dsNotaFiscal_Mestre_Imp: TDataSource;
    cdsNotaFiscal_Imp_Ad: TClientDataSet;
    dsNotaFiscal_Imp_Ad: TDataSource;
    sdsNotaFiscalDADOS_ADICIONAIS: TMemoField;
    cdsNotaFiscalDADOS_ADICIONAIS: TMemoField;
    sdsNotaFiscalBASE_ICMS: TFloatField;
    cdsNotaFiscalBASE_ICMS: TFloatField;
    sdsNotaFiscalDTINICIO_DUPLICATA: TDateField;
    cdsNotaFiscalDTINICIO_DUPLICATA: TDateField;
    sdsNotaFiscal_ItensGERAR_ESTOQUE: TStringField;
    cdsNotaFiscal_ItensGERAR_ESTOQUE: TStringField;
    sdsNotaFiscalTIPO_DESCONTO: TStringField;
    cdsNotaFiscalTIPO_DESCONTO: TStringField;
    sdsNotaFiscal_ItensVLR_DESCONTORATEIO: TFloatField;
    cdsNotaFiscal_ItensVLR_DESCONTORATEIO: TFloatField;
    sdsNotaFiscal_ItensNCM: TStringField;
    cdsNotaFiscal_ItensNCM: TStringField;
    sdsNotaFiscalTIPO_PRAZO: TStringField;
    cdsNotaFiscalTIPO_PRAZO: TStringField;
    sdsNotaFiscalPERC_COMISSAO: TFloatField;
    cdsNotaFiscalPERC_COMISSAO: TFloatField;
    sdsNotaFiscalTIPO_NOTA: TStringField;
    cdsNotaFiscalTIPO_NOTA: TStringField;
    sdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA: TIntegerField;
    sdsNotaFiscal_NDevolvidaSERIE_ENTRADA: TStringField;
    cdsNotaFiscal_NDevolvidaNUMNOTA_ENTRADA: TIntegerField;
    cdsNotaFiscal_NDevolvidaSERIE_ENTRADA: TStringField;
    sdsNotaFiscal_NDevolvidaMODELO: TStringField;
    cdsNotaFiscal_NDevolvidaMODELO: TStringField;
    sdsNotaFiscal_NDevolvidaNOMEFORNECEDOR: TStringField;
    cdsNotaFiscal_NDevolvidaNOMEFORNECEDOR: TStringField;
    sdsNotaFiscal_NDevolvidaCNPJ_CPF: TStringField;
    sdsNotaFiscal_NDevolvidaUF: TStringField;
    cdsNotaFiscal_NDevolvidaCNPJ_CPF: TStringField;
    cdsNotaFiscal_NDevolvidaUF: TStringField;
    sdsNotaFiscalSIMPLES_FILIAL: TStringField;
    cdsNotaFiscalSIMPLES_FILIAL: TStringField;
    sdsNotaFiscal_ItensTIPO_PIS: TStringField;
    sdsNotaFiscal_ItensTIPO_COFINS: TStringField;
    cdsNotaFiscal_ItensTIPO_PIS: TStringField;
    cdsNotaFiscal_ItensTIPO_COFINS: TStringField;
    sdsNotaFiscalFILIAL: TIntegerField;
    sdsNotaFiscalSERIE: TStringField;
    sdsNotaFiscalTIPO_REG: TStringField;
    cdsNotaFiscalTIPO_REG: TStringField;
    sdsNotaFiscal_ItensCODCFOP: TStringField;
    cdsNotaFiscal_ItensCODCFOP: TStringField;
    sdsNotaFiscal_ItensCOD_CST: TStringField;
    sdsNotaFiscal_ItensCOD_IPI: TStringField;
    sdsNotaFiscal_ItensCODCOFINS: TStringField;
    sdsNotaFiscal_ItensCODPIS: TStringField;
    cdsNotaFiscal_ItensCOD_CST: TStringField;
    cdsNotaFiscal_ItensCOD_IPI: TStringField;
    cdsNotaFiscal_ItensCODCOFINS: TStringField;
    cdsNotaFiscal_ItensCODPIS: TStringField;
    sdsNotaFiscal_ItensQTD_ADEVOLVER: TFloatField;
    cdsNotaFiscal_ItensQTD_ADEVOLVER: TFloatField;
    sdsNotaFiscal_ItensQTD_PACOTE: TFloatField;
    sdsNotaFiscal_ItensITEM_DEVOL: TStringField;
    cdsNotaFiscal_ItensQTD_PACOTE: TFloatField;
    cdsNotaFiscal_ItensITEM_DEVOL: TStringField;
    sdsNotaFiscal_NDevolvidaDTEMISSAO_NTE: TDateField;
    cdsNotaFiscal_NDevolvidaDTEMISSAO_NTE: TDateField;
    sdsNotaFiscal_PedITEM_NOTAPED: TIntegerField;
    cdsNotaFiscal_PedITEM_NOTAPED: TIntegerField;
    sdsNotaFiscal_PedID_PEDIDO: TIntegerField;
    cdsNotaFiscal_PedID_PEDIDO: TIntegerField;
    sdsNotaFiscal_ItensID_PEDIDO: TIntegerField;
    cdsNotaFiscal_ItensID_PEDIDO: TIntegerField;
    sdsNotaFiscalID_OPERACAO_NOTA: TIntegerField;
    cdsNotaFiscalID_OPERACAO_NOTA: TIntegerField;
    sdsNotaFiscal_ItensID_OPERACAO_NOTA: TIntegerField;
    cdsNotaFiscal_ItensID_OPERACAO_NOTA: TIntegerField;
    sdsNotaFiscalFINALIDADE: TStringField;
    cdsNotaFiscalFINALIDADE: TStringField;
    sdsNotaFiscal_ItensFINALIDADE: TStringField;
    cdsNotaFiscal_ItensFINALIDADE: TStringField;
    sdsNotaFiscalID_VARIACAO: TIntegerField;
    cdsNotaFiscalID_VARIACAO: TIntegerField;
    sdsNotaFiscal_ItensID_VARIACAO: TIntegerField;
    cdsNotaFiscal_ItensID_VARIACAO: TIntegerField;
    sdsNotaFiscal_ItensPERC_TRIBICMS: TFloatField;
    cdsNotaFiscal_ItensPERC_TRIBICMS: TFloatField;
    sdsNotaFiscal_ItensPERC_TABCSTICMS: TFloatField;
    cdsNotaFiscal_ItensPERC_TABCSTICMS: TFloatField;
    sdsNotaFiscal_ItensMAOOBRA: TStringField;
    cdsNotaFiscal_ItensMAOOBRA: TStringField;
    sdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField;
    cdsNotaFiscal_ItensCOD_PRODUTO_FORN: TStringField;
    sdsNotaFiscal_ItensCOD_BARRA: TStringField;
    cdsNotaFiscal_ItensCOD_BARRA: TStringField;
    sdsNotaFiscal_ImpID: TIntegerField;
    sdsNotaFiscal_ImpITEM: TIntegerField;
    sdsNotaFiscal_ImpITEM_IMP: TIntegerField;
    sdsNotaFiscal_ImpNUMDI: TStringField;
    sdsNotaFiscal_ImpDTREGISTRO: TDateField;
    sdsNotaFiscal_ImpDTDESEMBARACO: TDateField;
    sdsNotaFiscal_ImpCODEXPORTADOR: TStringField;
    cdsNotaFiscal_ImpID: TIntegerField;
    cdsNotaFiscal_ImpITEM: TIntegerField;
    cdsNotaFiscal_ImpITEM_IMP: TIntegerField;
    cdsNotaFiscal_ImpNUMDI: TStringField;
    cdsNotaFiscal_ImpDTREGISTRO: TDateField;
    cdsNotaFiscal_ImpDTDESEMBARACO: TDateField;
    cdsNotaFiscal_ImpCODEXPORTADOR: TStringField;
    cdsNotaFiscal_Imp_AdID: TIntegerField;
    cdsNotaFiscal_Imp_AdITEM: TIntegerField;
    cdsNotaFiscal_Imp_AdITEM_IMP: TIntegerField;
    cdsNotaFiscal_Imp_AdITEM_AD: TIntegerField;
    cdsNotaFiscal_Imp_AdNUMADICAO: TIntegerField;
    cdsNotaFiscal_Imp_AdCODFABRICANTE: TStringField;
    cdsNotaFiscal_Imp_AdVLR_DESCONTO_DI: TFloatField;
    sdsNotaFiscal_ImpLOCAL_DESEMBARACO: TStringField;
    cdsNotaFiscal_ImpLOCAL_DESEMBARACO: TStringField;
    sdsNotaFiscal_ImpUF: TStringField;
    cdsNotaFiscal_ImpUF: TStringField;
    cdsNotaFiscal_ItenssdsNotaFiscal_Imp: TDataSetField;
    sdsNotaFiscal_Imp_Ad: TSQLDataSet;
    sdsNotaFiscal_Imp_AdID: TIntegerField;
    sdsNotaFiscal_Imp_AdITEM: TIntegerField;
    sdsNotaFiscal_Imp_AdITEM_IMP: TIntegerField;
    sdsNotaFiscal_Imp_AdITEM_AD: TIntegerField;
    sdsNotaFiscal_Imp_AdNUMADICAO: TIntegerField;
    sdsNotaFiscal_Imp_AdCODFABRICANTE: TStringField;
    sdsNotaFiscal_Imp_AdVLR_DESCONTO_DI: TFloatField;
    cdsNotaFiscal_ImpsdsNotaFiscal_Imp_Ad: TDataSetField;
    sdsNotaFiscal_ItensIMP_OC_NOTA: TStringField;
    cdsNotaFiscal_ItensIMP_OC_NOTA: TStringField;
    sdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField;
    cdsNotaFiscal_ItensNUM_PEDIDO: TIntegerField;
    sdsNotaFiscal_PedNUM_PEDIDO: TIntegerField;
    cdsNotaFiscal_PedNUM_PEDIDO: TIntegerField;
    sdsNotaFiscal_ItensID_NTE: TIntegerField;
    sdsNotaFiscal_ItensITEM_NTE: TIntegerField;
    cdsNotaFiscal_ItensID_NTE: TIntegerField;
    cdsNotaFiscal_ItensITEM_NTE: TIntegerField;
    sdsNotaFiscal_ItensQTD_NOTAATUAL: TFloatField;
    cdsNotaFiscal_ItensQTD_NOTAATUAL: TFloatField;
    sdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField;
    cdsNotaFiscal_ItensVLR_DUPLICATA: TFloatField;
    qNotaEntrada_Itens: TSQLQuery;
    qNotaEntrada_ItensID: TIntegerField;
    qNotaEntrada_ItensITEM: TIntegerField;
    qNotaEntrada_ItensID_PRODUTO: TIntegerField;
    qNotaEntrada_ItensQTD: TFloatField;
    qNotaEntrada_ItensQTDRESTANTE: TFloatField;
    qNotaEntrada_ItensQTDDEVOLVIDA: TFloatField;
    sdsNotaFiscal_PedTIPO_NOTA: TStringField;
    cdsNotaFiscal_PedTIPO_NOTA: TStringField;
    sdsNotaFiscal_NDevolvidaTIPO_NOTA: TStringField;
    cdsNotaFiscal_NDevolvidaTIPO_NOTA: TStringField;
    qCFOP: TSQLQuery;
    qCFOPID: TIntegerField;
    qCFOPCODCFOP: TStringField;
    sdsNotaFiscal_ImpNUMFATURA: TStringField;
    cdsNotaFiscal_ImpNUMFATURA: TStringField;
    sdsNotaFiscal_ItensPERC_IMPORTACAO: TFloatField;
    sdsNotaFiscal_ItensPERC_MVA: TFloatField;
    sdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField;
    sdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField;
    sdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField;
    sdsNotaFiscal_ItensITEM_CLIENTE: TIntegerField;
    sdsNotaFiscal_ItensNUM_FCI: TStringField;
    sdsNotaFiscal_ItensPERC_USADO_FCI: TFloatField;
    sdsNotaFiscal_ItensID_OBS_LEI_NCM: TIntegerField;
    sdsNotaFiscal_ItensID_VALE: TIntegerField;
    sdsNotaFiscal_ItensITEM_VALE: TIntegerField;
    sdsNotaFiscal_ItensNUM_VALE: TIntegerField;
    cdsNotaFiscal_ItensPERC_IMPORTACAO: TFloatField;
    cdsNotaFiscal_ItensPERC_MVA: TFloatField;
    cdsNotaFiscal_ItensPERC_REDUCAO_ICMSSUBST: TFloatField;
    cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID: TIntegerField;
    cdsNotaFiscal_ItensCENTRO_CUSTO_ID: TIntegerField;
    cdsNotaFiscal_ItensITEM_CLIENTE: TIntegerField;
    cdsNotaFiscal_ItensNUM_FCI: TStringField;
    cdsNotaFiscal_ItensPERC_USADO_FCI: TFloatField;
    cdsNotaFiscal_ItensID_OBS_LEI_NCM: TIntegerField;
    cdsNotaFiscal_ItensID_VALE: TIntegerField;
    cdsNotaFiscal_ItensITEM_VALE: TIntegerField;
    cdsNotaFiscal_ItensNUM_VALE: TIntegerField;
    sdsNotaFiscalID_CONTA: TIntegerField;
    sdsNotaFiscalID_TIPO_COBRANCA: TIntegerField;
    sdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField;
    sdsNotaFiscalVLR_ICMSSUBST_PROPRIO: TFloatField;
    sdsNotaFiscalBASE_ICMSSUBST_PROPRIO: TFloatField;
    sdsNotaFiscalHREMISSAO: TTimeField;
    sdsNotaFiscalTIPO_DESTINO_OPERACAO: TSmallintField;
    sdsNotaFiscalTIPO_CONSUMIDOR: TSmallintField;
    sdsNotaFiscalTIPO_ATENDIMENTO: TSmallintField;
    sdsNotaFiscalLOCALDESPEXPORTACAO: TStringField;
    sdsNotaFiscalVLR_ICMSDESONERADO: TFloatField;
    cdsNotaFiscalID_CONTA: TIntegerField;
    cdsNotaFiscalID_TIPO_COBRANCA: TIntegerField;
    cdsNotaFiscalID_CONTA_ORCAMENTO: TIntegerField;
    cdsNotaFiscalVLR_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaFiscalBASE_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaFiscalHREMISSAO: TTimeField;
    cdsNotaFiscalTIPO_DESTINO_OPERACAO: TSmallintField;
    cdsNotaFiscalTIPO_CONSUMIDOR: TSmallintField;
    cdsNotaFiscalTIPO_ATENDIMENTO: TSmallintField;
    cdsNotaFiscalLOCALDESPEXPORTACAO: TStringField;
    cdsNotaFiscalVLR_ICMSDESONERADO: TFloatField;
    sdsNotaFiscal_ItensTIPO_NOTA: TStringField;
    sdsNotaFiscal_ItensTIPO_REG: TStringField;
    sdsNotaFiscal_ItensVLR_TRIBUTOS: TFloatField;
    sdsNotaFiscal_ItensPOSSUI_VALE: TStringField;
    sdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO: TFloatField;
    sdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO: TFloatField;
    sdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSDESONERADO: TFloatField;
    sdsNotaFiscal_ItensCOD_DESONERACAO: TSmallintField;
    cdsNotaFiscal_ItensTIPO_NOTA: TStringField;
    cdsNotaFiscal_ItensTIPO_REG: TStringField;
    cdsNotaFiscal_ItensVLR_TRIBUTOS: TFloatField;
    cdsNotaFiscal_ItensPOSSUI_VALE: TStringField;
    cdsNotaFiscal_ItensPERC_ICMSSUBST_INTERNO: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSSUBST_INTERNO: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaFiscal_ItensBASE_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSDESONERADO: TFloatField;
    cdsNotaFiscal_ItensCOD_DESONERACAO: TSmallintField;
    sdsNotaFiscal_RefCTECHAVEACESSO_REF: TStringField;
    cdsNotaFiscal_RefCTECHAVEACESSO_REF: TStringField;
    sdsNotaFiscal_ImpTIPO_VIA_TRANSORTE: TSmallintField;
    sdsNotaFiscal_ImpVLR_AFRMM: TFloatField;
    sdsNotaFiscal_ImpTIPO_INTERMEDIO: TSmallintField;
    sdsNotaFiscal_ImpCNPJ: TStringField;
    sdsNotaFiscal_ImpUF_TERCEIRO: TStringField;
    cdsNotaFiscal_ImpTIPO_VIA_TRANSORTE: TSmallintField;
    cdsNotaFiscal_ImpVLR_AFRMM: TFloatField;
    cdsNotaFiscal_ImpTIPO_INTERMEDIO: TSmallintField;
    cdsNotaFiscal_ImpCNPJ: TStringField;
    cdsNotaFiscal_ImpUF_TERCEIRO: TStringField;
    sdsNotaFiscal_Imp_AdNUM_SEQ: TIntegerField;
    sdsNotaFiscal_Imp_AdNUM_DRAWBACK: TStringField;
    cdsNotaFiscal_Imp_AdNUM_SEQ: TIntegerField;
    cdsNotaFiscal_Imp_AdNUM_DRAWBACK: TStringField;
    sdsNotaFiscal_DrawBack: TSQLDataSet;
    sdsNotaFiscal_DrawBackID: TIntegerField;
    sdsNotaFiscal_DrawBackITEM: TIntegerField;
    sdsNotaFiscal_DrawBackITEM_DRAWBACK: TIntegerField;
    sdsNotaFiscal_DrawBackNUM_DRAWBACK: TStringField;
    sdsNotaFiscal_DrawBackNUM_REG_EXPORTACAO: TStringField;
    sdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE: TStringField;
    sdsNotaFiscal_DrawBackQTD: TFloatField;
    cdsNotaFiscal_DrawBack: TClientDataSet;
    cdsNotaFiscal_DrawBackID: TIntegerField;
    cdsNotaFiscal_DrawBackITEM: TIntegerField;
    cdsNotaFiscal_DrawBackITEM_DRAWBACK: TIntegerField;
    cdsNotaFiscal_DrawBackNUM_DRAWBACK: TStringField;
    cdsNotaFiscal_DrawBackNUM_REG_EXPORTACAO: TStringField;
    cdsNotaFiscal_DrawBackNUM_CHAVE_ACESSO_NFE: TStringField;
    cdsNotaFiscal_DrawBackQTD: TFloatField;
    dsNotaFiscal_DrawBack: TDataSource;
    cdsNotaFiscal_ItenssdsNotaFiscal_DrawBack: TDataSetField;
    sdsNotaFiscal_ItensVLR_ICMSOPERACAO: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSOPERACAO: TFloatField;
    sdsNotaFiscalSTATUS_MANIFESTO: TStringField;
    sdsNotaFiscalCALCULAR_IMP_ITEM: TStringField;
    sdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField;
    sdsNotaFiscalVLR_TRIBUTOS: TFloatField;
    sdsNotaFiscalUSA_TRANSFICMS: TStringField;
    sdsNotaFiscalID_NOTACOPIADA: TIntegerField;
    sdsNotaFiscalNOTA_ESTORNO: TStringField;
    sdsNotaFiscalCOD_MODELO: TStringField;
    sdsNotaFiscalCOD_CONS_EE: TStringField;
    sdsNotaFiscalCOD_CONS_AGUA: TStringField;
    sdsNotaFiscalVLR_TRIBUTOS_ESTADUAL: TFloatField;
    sdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    sdsNotaFiscalFONTE_TRIBUTOS: TStringField;
    sdsNotaFiscalVERSAO_TRIBUTOS: TStringField;
    sdsNotaFiscalVLR_TRIBUTOS_FEDERAL: TFloatField;
    sdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL: TFloatField;
    sdsNotaFiscal_ItensITEM_PEDIDO_FUT: TIntegerField;
    sdsNotaFiscal_ItensNUM_OSERVICO: TIntegerField;
    sdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL: TFloatField;
    sdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField;
    sdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL: TFloatField;
    sdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    sdsNotaFiscal_ItensVERSAO_TRIBUTO: TStringField;
    sdsNotaFiscal_ItensFONTE_TRIBUTO: TStringField;
    sdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL: TFloatField;
    cdsNotaFiscalSTATUS_MANIFESTO: TStringField;
    cdsNotaFiscalCALCULAR_IMP_ITEM: TStringField;
    cdsNotaFiscalGRAVOU_DADOSADICIONAIS: TStringField;
    cdsNotaFiscalVLR_TRIBUTOS: TFloatField;
    cdsNotaFiscalUSA_TRANSFICMS: TStringField;
    cdsNotaFiscalID_NOTACOPIADA: TIntegerField;
    cdsNotaFiscalNOTA_ESTORNO: TStringField;
    cdsNotaFiscalCOD_MODELO: TStringField;
    cdsNotaFiscalCOD_CONS_EE: TStringField;
    cdsNotaFiscalCOD_CONS_AGUA: TStringField;
    cdsNotaFiscalVLR_TRIBUTOS_ESTADUAL: TFloatField;
    cdsNotaFiscalVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    cdsNotaFiscalFONTE_TRIBUTOS: TStringField;
    cdsNotaFiscalVERSAO_TRIBUTOS: TStringField;
    cdsNotaFiscalVLR_TRIBUTOS_FEDERAL: TFloatField;
    cdsNotaFiscal_ItensPERC_TRIBUTO_FEDERAL: TFloatField;
    cdsNotaFiscal_ItensITEM_PEDIDO_FUT: TIntegerField;
    cdsNotaFiscal_ItensNUM_OSERVICO: TIntegerField;
    cdsNotaFiscal_ItensPERC_TRIBUTO_ESTADUAL: TFloatField;
    cdsNotaFiscal_ItensPERC_TRIBUTO_MUNICIPAL: TFloatField;
    cdsNotaFiscal_ItensVLR_TRIBUTOS_ESTADUAL: TFloatField;
    cdsNotaFiscal_ItensVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    cdsNotaFiscal_ItensVERSAO_TRIBUTO: TStringField;
    cdsNotaFiscal_ItensFONTE_TRIBUTO: TStringField;
    cdsNotaFiscal_ItensVLR_TRIBUTOS_FEDERAL: TFloatField;
    sdsNotaFiscal_ItensITEM_ORIGINAL: TIntegerField;
    sdsNotaFiscal_ItensPERC_DIFERIMENTO: TFloatField;
    sdsNotaFiscal_ItensDIFERENCA_ICMS: TStringField;
    sdsNotaFiscal_ItensNUM_LOTE_CONTROLE: TStringField;
    sdsNotaFiscal_ItensID_ENQIPI: TIntegerField;
    cdsNotaFiscal_ItensITEM_ORIGINAL: TIntegerField;
    cdsNotaFiscal_ItensPERC_DIFERIMENTO: TFloatField;
    cdsNotaFiscal_ItensDIFERENCA_ICMS: TStringField;
    cdsNotaFiscal_ItensNUM_LOTE_CONTROLE: TStringField;
    cdsNotaFiscal_ItensID_ENQIPI: TIntegerField;
    sdsNotaFiscalID_LOCAL_ESTOQUE: TIntegerField;
    sdsNotaFiscalVLR_ADIANTAMENTO: TFloatField;
    cdsNotaFiscalID_LOCAL_ESTOQUE: TIntegerField;
    cdsNotaFiscalVLR_ADIANTAMENTO: TFloatField;
    sdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    sdsNotaFiscalVLR_ICMS_FCP: TFloatField;
    sdsNotaFiscalVLR_ICMS_UF_DEST: TFloatField;
    sdsNotaFiscalVLR_ICMS_UF_REMET: TFloatField;
    sdsNotaFiscalVLR_BASE_COMISSAO: TFloatField;
    cdsNotaFiscalPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsNotaFiscalVLR_ICMS_FCP: TFloatField;
    cdsNotaFiscalVLR_ICMS_UF_DEST: TFloatField;
    cdsNotaFiscalVLR_ICMS_UF_REMET: TFloatField;
    cdsNotaFiscalVLR_BASE_COMISSAO: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMSDIFERIDO: TFloatField;
    sdsNotaFiscal_ItensVLR_TAXACISCOMEX: TFloatField;
    sdsNotaFiscal_ItensPERC_ICMS_FCP: TFloatField;
    sdsNotaFiscal_ItensPERC_ICMS_UF_DEST: TFloatField;
    sdsNotaFiscal_ItensPERC_ICMS_PARTILHA: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMS_FCP: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMS_UF_DEST: TFloatField;
    sdsNotaFiscal_ItensVLR_ICMS_UF_REMET: TFloatField;
    sdsNotaFiscal_ItensPERC_ICMS_INTER: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMSDIFERIDO: TFloatField;
    cdsNotaFiscal_ItensVLR_TAXACISCOMEX: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMS_FCP: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMS_UF_DEST: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMS_PARTILHA: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMS_FCP: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMS_UF_DEST: TFloatField;
    cdsNotaFiscal_ItensVLR_ICMS_UF_REMET: TFloatField;
    cdsNotaFiscal_ItensPERC_ICMS_INTER: TFloatField;
    sdsNotaFiscal_ParcPERC_BASE_COMISSAO: TFloatField;
    cdsNotaFiscal_ParcPERC_BASE_COMISSAO: TFloatField;
    sdsNotaFiscal_Tam: TSQLDataSet;
    sdsNotaFiscal_TamID: TIntegerField;
    sdsNotaFiscal_TamITEM: TIntegerField;
    sdsNotaFiscal_TamTAMANHO: TStringField;
    sdsNotaFiscal_TamQTD: TFMTBCDField;
    sdsNotaFiscal_TamID_PEDIDO: TIntegerField;
    sdsNotaFiscal_TamITEM_PEDIDO: TIntegerField;
    sdsNotaFiscal_TamID_MOVESTOQUE: TIntegerField;
    cdsNotaFiscal_Tam: TClientDataSet;
    cdsNotaFiscal_TamID: TIntegerField;
    cdsNotaFiscal_TamITEM: TIntegerField;
    cdsNotaFiscal_TamTAMANHO: TStringField;
    cdsNotaFiscal_TamQTD: TFMTBCDField;
    cdsNotaFiscal_TamID_PEDIDO: TIntegerField;
    cdsNotaFiscal_TamITEM_PEDIDO: TIntegerField;
    cdsNotaFiscal_TamID_MOVESTOQUE: TIntegerField;
    dsNotaFiscal_Tam: TDataSource;
    cdsNotaFiscal_ItenssdsNotaFiscal_Tam: TDataSetField;
    sdsNotaFiscal_ItensGRAVACAO_COM_ERRO: TStringField;
    sdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO: TStringField;
    cdsNotaFiscal_ItensGRAVACAO_COM_ERRO: TStringField;
    cdsNotaFiscal_ItensGRAVOU_TAB_TAMANHO: TStringField;
    sdsNotaFiscalQTD_TOTAL_PRODUTOS: TFloatField;
    cdsNotaFiscalQTD_TOTAL_PRODUTOS: TFloatField;
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  DMCopiarNota: TDMCopiarNota;

implementation

uses DmdDatabase, Math, uUtilPadrao;

{$R *.dfm}

{ TDMCadCFOP}

end.
