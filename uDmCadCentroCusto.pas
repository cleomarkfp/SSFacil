unit uDmCadCentroCusto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TdmCadCentroCusto = class(TDataModule)
    sdsCentroCusto: TSQLDataSet;
    dspCentroCusto: TDataSetProvider;
    cdsCentroCusto: TClientDataSet;
    dsCentroCusto: TDataSource;
    sdsSuperior: TSQLDataSet;
    sdsSuperiorID: TIntegerField;
    sdsSuperiorCODIGO: TStringField;
    sdsSuperiorDESCRICAO: TStringField;
    dspSuperior: TDataSetProvider;
    cdsSuperior: TClientDataSet;
    cdsSuperiorID: TIntegerField;
    cdsSuperiorCODIGO: TStringField;
    cdsSuperiorDESCRICAO: TStringField;
    dsSuperior: TDataSource;
    sqProximo: TSQLQuery;
    sqProximoMAX: TStringField;
    sdsSuperiorNIVEL: TIntegerField;
    cdsSuperiorNIVEL: TIntegerField;
    sdsCentroCustoID: TIntegerField;
    sdsCentroCustoTIPO: TStringField;
    sdsCentroCustoCODIGO: TStringField;
    sdsCentroCustoDESCRICAO: TStringField;
    sdsCentroCustoNIVEL: TIntegerField;
    sdsCentroCustoAPROPRIACAO: TStringField;
    sdsCentroCustoSUPERIOR2: TStringField;
    sdsCentroCustoCOD_PRINCIPAL2: TIntegerField;
    sdsCentroCustoDT_CADASTRO2: TDateField;
    sdsCentroCustoNOME_AUX: TStringField;
    cdsCentroCustoID: TIntegerField;
    cdsCentroCustoTIPO: TStringField;
    cdsCentroCustoCODIGO: TStringField;
    cdsCentroCustoDESCRICAO: TStringField;
    cdsCentroCustoNIVEL: TIntegerField;
    cdsCentroCustoAPROPRIACAO: TStringField;
    cdsCentroCustoSUPERIOR: TStringField;
    cdsCentroCustoCOD_PRINCIPAL: TIntegerField;
    cdsCentroCustoDT_CADASTRO: TDateField;
    cdsCentroCustoNOME_AUX: TStringField;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaTIPO: TStringField;
    cdsConsultaCODIGO: TStringField;
    cdsConsultaDESCRICAO: TStringField;
    cdsConsultaNIVEL: TIntegerField;
    cdsConsultaAPROPRIACAO: TStringField;
    cdsConsultaSUPERIOR: TStringField;
    cdsConsultaCOD_PRINCIPAL: TIntegerField;
    cdsConsultaDT_CADASTRO: TDateField;
    cdsConsultaNOME_AUX: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCentroCustoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgCentroCusto : String;
    ctCommand : String;
    ctConsulta : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclus�o
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  dmCadCentroCusto: TdmCadCentroCusto;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TdmCadCentroCusto.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsCentroCusto.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CENTROCUSTO',0);

  cdsCentroCusto.Insert;
  cdsCentroCustoID.AsInteger := vAux;
end;

procedure TdmCadCentroCusto.prc_Excluir;
begin
  if not(cdsCentroCusto.Active) or (cdsCentroCusto.IsEmpty) then
    exit;

  cdsCentroCusto.Delete;
  cdsCentroCusto.ApplyUpdates(0);
end;

procedure TdmCadCentroCusto.prc_Gravar;
var
  i : Integer;
begin
  vMsgCentroCusto := '';
  if trim(cdsCentroCustoDESCRICAO.AsString) = '' then
    vMsgCentroCusto := '*** Nome n�o informado!';
  if (trim(cdsCentroCustoCODIGO.AsString) = '') then
    vMsgCentroCusto := vMsgCentroCusto + #13 + '*** C�digo do Centro de Custo n�o informado!';
  if vMsgCentroCusto <> '' then
    exit;
  i := pos('.',cdsCentroCustoCODIGO.AsString);
  if i > 0 then
    cdsCentroCustoCOD_PRINCIPAL.AsInteger := StrToInt(copy(cdsCentroCustoCODIGO.AsString,1,i-1))
  else
    cdsCentroCustoCOD_PRINCIPAL.AsInteger := StrToInt(cdsCentroCustoCODIGO.AsString);
  cdsCentroCusto.Post;
  cdsCentroCusto.ApplyUpdates(0);
end;

procedure TdmCadCentroCusto.prc_Localizar(ID : Integer);
begin
  cdsCentroCusto.Close;
  sdsCentroCusto.CommandText := ctCommand;
  if ID <> 0 then
    sdsCentroCusto.CommandText := sdsCentroCusto.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsCentroCusto.Open;
end;

procedure TdmCadCentroCusto.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand  := sdsCentroCusto.CommandText;
  ctConsulta := sdsConsulta.CommandText;

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
end;

procedure TdmCadCentroCusto.dspCentroCustoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TdmCadCentroCusto.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
