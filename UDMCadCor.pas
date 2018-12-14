unit UDMCadCor;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadCor = class(TDataModule)
    sdsCor: TSQLDataSet;
    dspCor: TDataSetProvider;
    cdsCor: TClientDataSet;
    dsCor: TDataSource;
    sdsCorID: TIntegerField;
    sdsCorNOME: TStringField;
    sdsCorPANTONE: TStringField;
    cdsCorID: TIntegerField;
    cdsCorNOME: TStringField;
    cdsCorPANTONE: TStringField;
    qVerifica_Cor: TSQLQuery;
    qVerifica_CorID: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspCorUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgCor: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclus�o
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadCor: TDMCadCor;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadCor.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsCor.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('COR',0);

  cdsCor.Insert;
  cdsCorID.AsInteger := vAux;
end;

procedure TDMCadCor.prc_Excluir;
begin
  if not(cdsCor.Active) or (cdsCor.IsEmpty) then
    exit;
  cdsCor.Delete;
  cdsCor.ApplyUpdates(0);
end;

procedure TDMCadCor.prc_Gravar;
begin
  vMsgCor := '';
  if trim(cdsCorNOME.AsString) = '' then
    vMsgCor := 'Nome n�o informado!';
  if vMsgCor <> '' then
    exit;

  cdsCor.Post;
  cdsCor.ApplyUpdates(0);
end;

procedure TDMCadCor.prc_Localizar(ID: Integer);
begin
  cdsCor.Close;
  sdsCor.CommandText := ctCommand;
  if ID <> 0 then
    sdsCor.CommandText := sdsCor.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsCor.Open;
end;

procedure TDMCadCor.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsCor.CommandText;
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

procedure TDMCadCor.dspCorUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadCor.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
