unit UDMCadFaixa_Simples;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadFaixa_Simples = class(TDataModule)
    sdsFaixa_Simples: TSQLDataSet;
    dspFaixa_Simples: TDataSetProvider;
    cdsFaixa_Simples: TClientDataSet;
    dsFaixa_Simples: TDataSource;
    sdsFaixa_SimplesID: TIntegerField;
    sdsFaixa_SimplesVLR_DE: TFloatField;
    sdsFaixa_SimplesVLR_ATE: TFloatField;
    sdsFaixa_SimplesPERC_ICMS: TFloatField;
    cdsFaixa_SimplesID: TIntegerField;
    cdsFaixa_SimplesVLR_DE: TFloatField;
    cdsFaixa_SimplesVLR_ATE: TFloatField;
    cdsFaixa_SimplesPERC_ICMS: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspFaixa_SimplesUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgFaixa_Simples: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclus�o
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadFaixa_Simples: TDMCadFaixa_Simples;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadFaixa_Simples.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsFaixa_Simples.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('FAIXA_SIMPLES',0);

  cdsFaixa_Simples.Insert;
  cdsFaixa_SimplesID.AsInteger := vAux;
end;

procedure TDMCadFaixa_Simples.prc_Excluir;
begin
  if not(cdsFaixa_Simples.Active) or (cdsFaixa_Simples.IsEmpty) then
    exit;
  cdsFaixa_Simples.Delete;
  cdsFaixa_Simples.ApplyUpdates(0);
end;

procedure TDMCadFaixa_Simples.prc_Gravar;
begin
  vMsgFaixa_Simples := '';
  if StrToFloat(FormatFloat('0.00',cdsFaixa_SimplesVLR_ATE.AsFloat)) <= 0 then
    vMsgFaixa_Simples := vMsgFaixa_Simples + #13 + '*** Valor final "at�" n�o foi informado!';
  if StrToFloat(FormatFloat('0.00',cdsFaixa_SimplesVLR_ATE.AsFloat)) <= StrToFloat(FormatFloat('0.00',cdsFaixa_SimplesVLR_DE.AsFloat)) then
    vMsgFaixa_Simples := vMsgFaixa_Simples + #13 + '*** Valor final n�o pode ser menor que o valor inicial!';
  if vMsgFaixa_Simples <> '' then
    exit;
    
  cdsFaixa_Simples.Post;
  cdsFaixa_Simples.ApplyUpdates(0);
end;

procedure TDMCadFaixa_Simples.prc_Localizar(ID: Integer);
begin
  cdsFaixa_Simples.Close;
  sdsFaixa_Simples.CommandText := ctCommand;
  if ID <> 0 then
    sdsFaixa_Simples.CommandText := sdsFaixa_Simples.CommandText +
                            ' WHERE ID = ' + IntToStr(ID);
  cdsFaixa_Simples.Open;
end;

procedure TDMCadFaixa_Simples.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsFaixa_Simples.CommandText;
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

procedure TDMCadFaixa_Simples.dspFaixa_SimplesUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadFaixa_Simples.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
