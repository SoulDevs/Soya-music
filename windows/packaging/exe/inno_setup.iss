[Setup]
AppId=B9F6E402-0CAE-4045-BDE6-14BD6C39C4EA
AppVersion=1.11.2+24
AppName=Soya Music
AppPublisher=sadevelopment
AppPublisherURL=https://github.com/SoulDevs/Soya-music
AppSupportURL=https://github.com/SoulDevs/Soya-music
AppUpdatesURL=https://github.com/SoulDevs/Soya-music
DefaultDirName={autopf}\soyamusic
DisableProgramGroupPage=yes
OutputDir=.
OutputBaseFilename=soyamusic-1.11.2
Compression=lzma
SolidCompression=yes
SetupIconFile=..\..\windows\runner\resources\app_icon.ico
WizardStyle=modern
PrivilegesRequired=lowest
LicenseFile=..\..\LICENSE
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\..\build\windows\x64\runner\Release\soyamusic.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\Soya Music"; Filename: "{app}\soyamusic.exe"
Name: "{autodesktop}\Soya Music"; Filename: "{app}\soyamusic.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\soyamusic.exe"; Description: "{cm:LaunchProgram,{#StringChange('Soya Music', '&', '&&')}}"; Flags: nowait postinstall skipifsilent
