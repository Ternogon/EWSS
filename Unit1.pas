unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RunElevatedSupport, Winapi.ShellAPI,
  Vcl.Mask, Vcl.Grids, Vcl.ValEdit, IdIcmpClient, IdBaseComponent, IdComponent,
  IdRawBase, IdRawClient, Vcl.ExtCtrls, IdStack, KMSServers, Registry,
  Vcl.ComCtrls, Vcl.ButtonGroup, Vcl.WinXCtrls, Vcl.ActnMan, Vcl.ActnColorMaps,
  Vcl.Menus, Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.ToolWin, Vcl.WinXPanels,
  Vcl.ControlList, System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    ltopIsAdmin: TLabel;
    bNewHostname: TButton;
    eOSKey: TEdit;
    ltopPN: TLabel;
    bSetGVLK: TButton;
    bAct: TButton;
    lOSChosen: TLabel;
    icmpC1: TIdIcmpClient;
    gbKMSServers: TGroupBox;
    lKMS01: TLabel;
    lKMS02: TLabel;
    shOnline1: TShape;
    shOnline2: TShape;
    bSetServer: TButton;
    eNewHostname: TEdit;
    gbActivator: TGroupBox;
    cbOpenActivator: TCheckBox;
    ltopEditionID: TLabel;
    pTop: TPanel;
    pcMain: TPageControl;
    pcEZM: TTabSheet;
    pcEZC: TTabSheet;
    pcActivator: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    pcMMC: TTabSheet;
    GroupBox4: TGroupBox;
    bEZncpa: TButton;
    GroupBox3: TGroupBox;
    bEZfsmgmt: TButton;
    bEZdiskmgmt: TButton;
    bEZcleanmgr: TButton;
    GroupBox2: TGroupBox;
    bEZlusrmgr: TButton;
    bEZgpedit: TButton;
    lEZsecpol: TButton;
    AI1: TActivityIndicator;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    EWSSUtility1: TMenuItem;
    ernogonnet1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ObjectPascalDelphi1: TMenuItem;
    iLogo: TImage;
    Image1: TImage;
    iAdmin: TImage;
    ltopIsElevated: TLabel;
    iNotAdmin: TImage;
    Panel1: TPanel;
    bCMD: TSpeedButton;
    bPS: TSpeedButton;
    bREG: TSpeedButton;
    bSPA: TSpeedButton;
    bUAC: TSpeedButton;
    bControl: TSpeedButton;
    ImageList1: TImageList;
    bMSConfig: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ListView1: TListView;
    PageControl1: TPageControl;
    tsServers: TTabSheet;
    tsStandartOS: TTabSheet;
    ListView2: TListView;
    procedure FormCreate(Sender: TObject);
    procedure bNewHostnameClick(Sender: TObject);
    procedure emNewHostnameChange(Sender: TObject);
    procedure bChooseKeyClick(Sender: TObject);
    procedure bSetGVLKClick(Sender: TObject);
    procedure bSetServerClick(Sender: TObject);
    procedure bActClick(Sender: TObject);
    procedure cbOpenActivatorClick(Sender: TObject);
    procedure eNewHostnameChange(Sender: TObject);
    procedure bEzCMDAsClick(Sender: TObject);
    procedure bEzSPAClick(Sender: TObject);
    procedure bEzPowershellClick(Sender: TObject);
    procedure bEzControlClick(Sender: TObject);
    procedure bEzREGClick(Sender: TObject);
    procedure bEzMSConfigClick(Sender: TObject);
    procedure bEZlusrmgrClick(Sender: TObject);
    procedure bEZgpeditClick(Sender: TObject);
    procedure lEZsecpolClick(Sender: TObject);
    procedure bEZfsmgmtClick(Sender: TObject);
    procedure bEZdiskmgmtClick(Sender: TObject);
    procedure bEZcleanmgrClick(Sender: TObject);
    procedure bEZncpaClick(Sender: TObject);
    procedure bEzUACClick(Sender: TObject);
    procedure bCMDClick(Sender: TObject);
    procedure bPSClick(Sender: TObject);
    procedure bREGClick(Sender: TObject);
    procedure bSPAClick(Sender: TObject);
    procedure bUACClick(Sender: TObject);
    procedure bControlClick(Sender: TObject);
    procedure bMSConfigClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  HNDL: HWND;
  normalformW: Integer;
  normalformH: Integer;


implementation

{$R *.dfm}

//function RunAsAdmin(const Handle: Hwnd; const Path, Params: string): Boolean;
////var OK: Boolean;
//begin
//  ShellExecute(Handle, 'RunAs', PWideChar(Path), PWideChar(Params), nil, SW_SHOWNORMAL);
//  //if not OK then Result := False else Result := True;
//end;


function GetRegistryValue(KeyName: String; Value: String): String;
 var
   Registry: TRegistry;
 begin
   Registry := TRegistry.Create(KEY_READ);
   try
     Registry.RootKey := HKEY_LOCAL_MACHINE;

     // False because we do not want to create it if it doesn't exist
     Registry.OpenKeyReadOnly(KeyName);

     Result := Registry.ReadString(Value);
     Registry.CloseKey;
   finally
     Registry.Free;
   end;
 end;


procedure RunAsAdmin(const Path, Params: string);
//var OK: Boolean;
begin
  ShellExecute(HNDL, 'RunAs', PWideChar(Path), PWideChar(Params), nil, SW_HIDE);
  //if not OK then Result := False else Result := True;
end;

procedure RunAsAdminS(const Path, Params: string);
//var OK: Boolean;
begin
  ShellExecute(HNDL, 'RunAs', PWideChar(Path), PWideChar(Params), nil, SW_SHOW);
  //if not OK then Result := False else Result := True;
end;

function ExecuteProcess(const FileName, Params: string; Folder: string; WaitUntilTerminated, WaitUntilIdle, RunMinimized: boolean;
  var ErrorCode: integer): boolean;
var
  CmdLine: string;
  WorkingDirP: PChar;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  Result := true;
  CmdLine := '"' + FileName + '" ' + Params;
  if Folder = '' then Folder := ExcludeTrailingPathDelimiter(ExtractFilePath(FileName));
  ZeroMemory(@StartupInfo, SizeOf(StartupInfo));
  StartupInfo.cb := SizeOf(StartupInfo);
  if RunMinimized then
    begin
      StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
      StartupInfo.wShowWindow := SW_HIDE;
    end;
  if Folder <> '' then WorkingDirP := PChar(Folder)
  else WorkingDirP := nil;
  if not CreateProcess(nil, PChar(CmdLine), nil, nil, false, 0, nil, WorkingDirP, StartupInfo, ProcessInfo) then
    begin
      Result := false;
      ErrorCode := GetLastError;
      exit;
    end;
  with ProcessInfo do
    begin
      CloseHandle(hThread);
      if WaitUntilIdle then WaitForInputIdle(hProcess, INFINITE);
      if WaitUntilTerminated then
        repeat
          Application.ProcessMessages;
        until MsgWaitForMultipleObjects(1, hProcess, false, INFINITE, QS_ALLINPUT) <> WAIT_OBJECT_0 + 1;
      CloseHandle(hProcess);
    end;
end;

function PSExecuteAs(Command: String): Integer;
begin
  RunAsAdmin('powershell', Command);
end;

function PSExecute(Command: String): Integer;
var
  Error: Integer;
  OK: Boolean;
begin
  Form1.AI1.Animate := True;
  try
    OK := ExecuteProcess('Powershell.exe', Command, '', true, false, true, Error);
    if not OK then ShowMessage('Error: ' + IntToStr(Error));
  finally
    Form1.AI1.Animate := False;
  end;
end;

function PExecute(exe: String): Integer;
var
  Error: Integer;
  OK: Boolean;
begin
  OK := ExecuteProcess(exe, '', '', false, false, false, Error);
  if not OK then ShowMessage('Error: ' + IntToStr(Error));
end;

procedure InitKMS;
begin
  Form1.gbKMSServers.Visible := True;
  KMSServers.KMSServersListInit;
  KMSServers.CheckKMSIsOnline;
  Form1.lKMS01.Caption := KMSServers.kms_srv01;
  Form1.lKMS02.Caption := KMSServers.kms_srv02;
  if KMSServers.IsOnline01 = True then Form1.shOnline1.Brush.Color := clGreen else Form1.shOnline1.Brush.Color := clRed;
  if KMSServers.IsOnline02 = True then Form1.shOnline2.Brush.Color := clGreen else Form1.shOnline2.Brush.Color := clRed;
  if KMSServers.SelectedKMSServer = Form1.lKMS01.Caption then Form1.lKMS01.Font.Style := [fsBold] else Form1.lKMS01.Font.Style := [];
  if KMSServers.SelectedKMSServer = Form1.lKMS02.Caption then Form1.lKMS02.Font.Style := [fsBold] else Form1.lKMS02.Font.Style := [];
end;

function GetNetBIOSName: String;
var
  Length: DWord;
begin
  Length := 0;
  GetComputerName(nil, Length);
  SetLength(Result, Length - 1);
  GetComputerName(PChar(Result), Length);
end;

function doOpenActivator(): Boolean;
begin
  //Form1.Width := 590;
  //Form1.Height := normalformH + Form1.gbActivator.Height;
  Form1.gbActivator.Visible := True;
  Form1.gbActivator.Enabled := True;
  Result := True;
end;

function doCloseActivator(): Boolean;
begin
  //Form1.Width := normalformW;
  //Form1.Height := normalformH;
  Form1.gbActivator.Visible := False;
  Form1.gbActivator.Enabled := False;
  Result := False;
end;

function GetDosOutput(
      CommandLine: string; Work: string = 'C:\'): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of Char;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SA do begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(
          STD_INPUT_HANDLE); // не переадресовывать stdinput
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            Result := Result + Buffer;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;






procedure TForm1.bEzCMDAsClick(Sender: TObject);
begin
  RunAsAdminS('cmd', '');
end;

procedure TForm1.bEzSPAClick(Sender: TObject);
var
  Error: Integer;
begin
  RunAsAdminS('SystemPropertiesAdvanced.exe', '');
end;

procedure TForm1.bEzUACClick(Sender: TObject);
begin
  PSExecute('UserAccountControlSettings.exe');
end;

procedure TForm1.bMSConfigClick(Sender: TObject);
begin
  RunAsAdminS('msconfig.exe', '');
end;

procedure TForm1.bEzControlClick(Sender: TObject);
begin
  PExecute('control');
end;

procedure TForm1.bEZdiskmgmtClick(Sender: TObject);
begin
  PSExecute('diskmgmt');
end;

procedure TForm1.bEZfsmgmtClick(Sender: TObject);
begin
  PSExecute('fsmgmt');
end;

procedure TForm1.bEZgpeditClick(Sender: TObject);
begin
  PSExecute('gpedit');
end;

procedure TForm1.bEZlusrmgrClick(Sender: TObject);
begin
  PSExecute('lusrmgr');
end;

procedure TForm1.bEzMSConfigClick(Sender: TObject);
begin
  //RunAsAdminS('C:\Windows\SysNative\msconfig.exe', '')
  RunAsAdmin('powershell', '-c "C:\Windows\SysNative\msconfig.exe"');
end;

procedure TForm1.bEZncpaClick(Sender: TObject);
begin
  PSExecute('ncpa.cpl');
end;

procedure TForm1.bEzPowershellClick(Sender: TObject);
begin
  //RunAsAdminS('UserAccountControlSettings.exe', '');
  RunAsAdmin('powershell', '');
end;

procedure TForm1.bEzREGClick(Sender: TObject);
begin
  RunAsAdmin('regedit', '');
end;

procedure TForm1.cbOpenActivatorClick(Sender: TObject);
begin
  if not cbOpenActivator.Checked then doCloseActivator
  else doOpenActivator;
end;

procedure TForm1.bSetServerClick(Sender: TObject);
begin
  PSExecute('slmgr /skms ' + KMSServers.SelectedKMSServer);
  bAct.Enabled := True;
end;

procedure TForm1.bSPAClick(Sender: TObject);
begin
  RunAsAdminS('SystemPropertiesAdvanced.exe', '');
end;

procedure TForm1.bUACClick(Sender: TObject);
begin
  RunAsAdminS('UserAccountControlSettings.exe', '');
  //PSExecute('UserAccountControlSettings.exe');
end;

procedure TForm1.bEZcleanmgrClick(Sender: TObject);
begin
  PSExecute('cleanmgr');
end;

procedure TForm1.bActClick(Sender: TObject);
begin
  PSExecute('slmgr /ato');
  bAct.Enabled := False;
end;

procedure TForm1.bChooseKeyClick(Sender: TObject);
var
  I : Integer;
begin
  //I := vleOSKeys.Row;
  //lOSChosen.Caption := 'ОС: ' + vleOSKeys.Keys[I];
  //eOSKey.Text:= vleOSKeys.Cells[1,I];
  InitKMS;
  if ((StringReplace(eOSKey.Text, ' ', '', [rfReplaceAll, rfIgnoreCase]) <> '')) then bSetGVLK.Enabled := True else bSetGVLK.Enabled := False;
end;

procedure TForm1.bCMDClick(Sender: TObject);
begin
  RunAsAdminS('cmd', '');
end;

procedure TForm1.bControlClick(Sender: TObject);
begin
  RunAsAdminS('control.exe', '');
end;

procedure TForm1.bSetGVLKClick(Sender: TObject);
begin
  bSetGVLK.Enabled := false;
  try
    try
      PSExecute('slmgr /ipk ' + StringReplace(eOSKey.Text, ' ', '', [rfReplaceAll, rfIgnoreCase]) + '');
    except
      ShowMessage('Возможно что-то пошло не так. Обратитесь к разработчику. Код ошибки: 0x100');
    end;
  finally
    bSetGVLK.Enabled := True;
  end;

end;

procedure TForm1.bNewHostnameClick(Sender: TObject);
begin
  bNewHostname.Enabled := False;
  AI1.Animate := True;
  try
    try
      PSExecute('Rename-Computer -NewName "' + StringReplace(eNewHostname.Text, ' ', '', [rfReplaceAll, rfIgnoreCase]) + '"');
    except
      ShowMessage('В процессе установки NetBIOS имени возникла проблема. Имя не установлено.');
    end;
  finally
    bNewHostname.Enabled := True;
    ShowMessage('Изменения вступят в силу после перезагрузки.');
  end;
  AI1.Animate := False;
end;

procedure TForm1.bPSClick(Sender: TObject);
begin
  RunAsAdminS('powershell', '');
end;

procedure TForm1.bREGClick(Sender: TObject);
begin
  //RunAsAdmin('regedit', '');
  //PSExecute('regedit.exe');
  RunAsAdminS('regedit.exe', '');
  end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //Form1.Height := Form1.Height - gbActivator.Height;
  //normalformW := Form1.Width;
  //normalformH := Form1.Height;
  HNDL := Application.ActiveFormHandle;
  eNewHostname.Text := GetNetBIOSName;
  Form1.Text := Form1.Text + ' / ' + eNewHostname.Text;

  //Init Top labels w/ info about sys

  if IsElevated then
    begin
      iAdmin.Visible := True;
      iNotAdmin.Visible := False;
      ltopIsElevated.Caption := 'Режим администратора';
    end
  else
    begin
      iAdmin.Visible := False;
      iNotAdmin.Visible := True;
      ltopIsElevated.Caption := 'Без прав администратора';
    end;

  //ltopIsElevated.Caption := 'Is Elevated: ' + BoolToStr(IsElevated);
  //ltopIsAdmin.Caption := 'Is Admin: ' + BoolToStr(IsAdministrator);
  //ltopUAC.Caption := 'UAC: ' + BoolToStr(IsUACEnabled);
  ltopPN.Caption := GetRegistryValue('SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'ProductName');
  ltopEditionID.Caption := GetRegistryValue('SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'EditionID');


  // Init KMS servers status and publishing it to labels

  // Init PageControl pages order   (PAGEINDEX)
  pcEZM.PageIndex := 0;
  pcEZC.PageIndex := 1;
  pcActivator.PageIndex := 3;
  pcMMC.PageIndex := 2;
end;

procedure TForm1.lEZsecpolClick(Sender: TObject);
begin
  RunAsAdmin('secpol', '');
end;

procedure TForm1.emNewHostnameChange(Sender: TObject);
begin
  TMaskEdit(Sender).Modified := False;
end;

procedure TForm1.eNewHostnameChange(Sender: TObject);
begin
  bNewHostname.Enabled := True;
end;

end.
