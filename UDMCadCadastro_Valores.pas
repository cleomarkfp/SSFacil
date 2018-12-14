unit UDMCadCadastro_Valores;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCadastro_Valores = class(TDataModule)
    sdsCadastro_Valores: TSQLDataSet;
    dspCadastro_Valores: TDataSetProvider;
    cdsCadastro_Valores: TClientDataSet;
    dsCadastro_Valores: TDataSource;
    sdsCadastro_ValoresID: TIntegerField;
    sdsCadastro_ValoresNOME: TStringField;
    cdsCadastro_ValoresID: TIntegerField;
    cdsCadastro_ValoresNOME: TStringField;
    sdsCadastro_ValoresID_CONTA_ORCAMENTO: TIntegerField;
    cdsCadastro_ValoresID_CONTA_ORCAMENTO: TIntegerField;
    sdsContaOrcamento: TSQLDataSet;
    dspContaOrcamento: TDataSetProvider;
    cdsContaOrcamento: TClientDataSet;
    cdsContaOrcamentoID: TIntegerField;
    cdsContaOrcamentoTIPO: TStringField;
    cdsContaOrcamentoCODIGO: TStringField;
    cdsContaOrcamentoDESCRICAO: TStringField;
    cdsContaOrcamentoNOME_AUX: TStringField;
    dsContaOrcamento: TDataSource;
    sdsCadastro_ValoresORDEM: TIntegerField;
    cdsCadastro_ValoresORDEM: TIntegerField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinEXIGIR_CONTA_ORC_DUP: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCadastro_ValoresUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclus�o
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadCadastro_Valores: TDMCadCadastro_Valores;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, UDMCadCombinacao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCadastro_Valores.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCadastro_Valores.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CADASTRO_VALORES',0);

  cdsCadastro_Valores.Insert;
  cdsCadastro_ValoresID.AsInteger := vAux;
end;

procedure TDMCadCadastro_Valores.prc_Excluir;
begin
  if not(cdsCadastro_Valores.Active) or (cdsCadastro_Valores.IsEmpty) then
    exit;
  cdsCadastro_Valores.Delete;
  cdsCadastro_Valores.ApplyUpdates(0);
end;

procedure TDMCadCadastro_Valores.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsCadastro_ValoresNOME.AsString) = '' then
    vMsgErro := 'Nome n�o informado!';
  if (qParametros_FinEXIGIR_CONTA_ORC_DUP.AsString = 'S') and (cdsCadastro_ValoresID_CONTA_ORCAMENTO.AsInteger <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Conta de Or�amento n�o informada!';
  if vMsgErro <> '' then
    exit;

  cdsCadastro_Valores.Post;
  cdsCadastro_Valores.ApplyUpdates(0);
end;

procedure TDMCadCadastro_Valores.prc_Localizar(ID: Integer);
begin
  cdsCadastro_Valores.Close;
  sdsCadastro_Valores.CommandText := ctCommand;
  if ID <> 0 then
    sdsCadastro_Valores.CommandText := sdsCadastro_Valores.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsCadastro_Valores.Open;
end;

procedure TDMCadCadastro_Valores.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsCadastro_Valores.CommandText;
  cdsContaOrcamento.Open;
  qParametros_Fin.Open;
  //*** Logs Implantado na vers�o .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

procedure TDMCadCadastro_Valores.dspCadastro_ValoresUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCadastro_Valores.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
