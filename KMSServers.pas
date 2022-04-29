unit KMSServers;

interface

procedure KMSServersListInit;
procedure CheckKMSIsOnline;

var
  kms_srv01: String;
  kms_srv02: String;
  SelectedKMSServer: String;
  IsOnline01: Boolean;
  IsOnline02: Boolean;

implementation

uses Unit1, IdStack, IdIcmpClient, IdBaseComponent, IdComponent;

procedure KMSServersListInit;
begin
  kms_srv01 := 'kms8.msguides.com';
  kms_srv02 := 'kms9.msguides.com';
  SelectedKMSServer := '';
end;

procedure CheckKMSIsOnline;
begin
  Form1.icmpC1.ReceiveTimeout := 500;
  begin
    Form1.icmpC1.Host := kms_srv01;
    try
      Form1.icmpC1.Ping;
      if Form1.icmpC1.ReplyStatus.ReplyStatusType = rsEcho then
        begin
          IsOnline01 := True;
        end
      else
      if Form1.icmpC1.ReplyStatus.ReplyStatusType = rsTimeout then
        begin
          IsOnline01 := False;
        end
    except
      on E : EIdSocketError do
        IsOnline01 := False;
    end;
  end;
  begin
    Form1.icmpC1.Host := kms_srv02;
    try
      Form1.icmpC1.Ping;
      if Form1.icmpC1.ReplyStatus.ReplyStatusType = rsEcho then
        begin
          IsOnline02 := True;
        end
      else
      if Form1.icmpC1.ReplyStatus.ReplyStatusType = rsTimeout then
        begin
          IsOnline02 := False;
        end
    except
      on E : EIdSocketError do
        IsOnline02 := False;
    end;
  end;
  if IsOnline01 then SelectedKMSServer := kms_srv01
  else SelectedKMSServer := kms_srv02
end;

end.
