SetCompressor /SOLID lzma
SetCompressorDictSize 64
SetDatablockOptimize ON

!define PRODUCT_NAME "DAIL"
!define PRODUCT_VERSION "0.60"
!define PRODUCT_PUBLISHER "Kathanious"
!define PRODUCT_WEB_SITE "http://www.grimdawn.com/forums/showthread.php?t=46374"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAILnsi.txt"
; Components page
!insertmacro MUI_PAGE_COMPONENTS
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!insertmacro MUI_PAGE_FINISH
; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "DAIL_060.exe"
InstallDir "$PROGRAMFILES\steam\steamapps\common\Grim Dawn"
LangString SteamNotInstalled ${LANG_ENGLISH} "Steam is not installed!$\r$\nYou will have to figure out the Folder yourself!"

DirText "Choose the path to your GRIM DAWN installation folder (not the mods folder)"
ShowInstDetails show



;"DAIL Campaign Density ARZ files and Unique Text_EN.arc
Section "(NG)" SEC01
  SetOutPath "$INSTDIR\mods\DAIL\database"
  SetOverwrite on
  File /oname=DAIL.arz "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\ng\DAIL_ng.arz"
  SetOutPath "$INSTDIR\mods\DAIL\resources\"
  SetOverwrite on  
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\ng\Text_EN.arc"
SectionEnd

Section /o "(B)" SEC02
 SetOutPath "$INSTDIR\mods\DAIL\database\"
  SetOverwrite on
  File /oname=DAIL.arz  "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\b\DAIL_b.arz"
  SetOutPath "$INSTDIR\mods\DAIL\resources\"
  SetOverwrite on  
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\b\Text_EN.arc"
SectionEnd

Section /o "(S)" SEC03
  SetOutPath "$INSTDIR\mods\DAIL\database\"
  SetOverwrite on
  File /oname=DAIL.arz  "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\s\DAIL_s.arz"
  SetOutPath "$INSTDIR\mods\DAIL\resources\"
  SetOverwrite on
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\s\Text_EN.arc"
SectionEnd

Section /o "(X)" SEC04
 SetOutPath "$INSTDIR\mods\DAIL\database\"
 SetOverwrite on
 File /oname=DAIL.arz  "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\x\DAIL_x.arz"
 SetOutPath "$INSTDIR\mods\DAIL\resources\"
 SetOverwrite on
 File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\x\Text_EN.arc"
SectionEnd

Section /o "(SX)" SEC05
 SetOutPath "$INSTDIR\mods\DAIL\database\"
 SetOverwrite on
 File /oname=DAIL.arz  "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\sx\DAIL_sx.arz"
 SetOutPath "$INSTDIR\mods\DAIL\resources\"
 SetOverwrite on
 File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\sx\Text_EN.arc"
SectionEnd

Function un.onUninstSuccess
FunctionEnd

;Core Resource Files Campaign
Section !Required
  SectionIn RO
  SetOutPath "$INSTDIR\mods\DAIL\resources\"
  SetOverwrite on  
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Conversations.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Creatures.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Custom.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drx.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drxeffects.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drxsounds.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drxtextures.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\effects.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\fx.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\ingameui.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\items.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Meshes.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\particlesystems.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\PFX.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Quests.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\SFX.arc"
  ;File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\sound.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\soundeffects.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\sounds.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\textures.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\ui.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\wanez-dga.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\wanez-runes.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\wanez.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\xpack.arc"
;Core Resources DGA
SetOutPath "$INSTDIR\mods\DAIL - RIFT (DGA)\resources\"
  SetOverwrite on  
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Conversations.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Creatures.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Custom.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drx.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drxeffects.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drxsounds.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drxtextures.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\effects.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\fx.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\ingameui.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\items.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Meshes.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\particlesystems.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\PFX.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Quests.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\SFX.arc"
  ;File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\sound.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\soundeffects.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\sounds.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\textures.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\ui.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\wanez-dga.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\wanez-runes.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\wanez.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\xpack.arc"
;Core Resources GDE
SetOutPath "$INSTDIR\mods\DAIL - Survival (GD Eternal)\resources\"
  SetOverwrite on  
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Conversations.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Creatures.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Custom.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drx.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drxeffects.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drxsounds.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\drxtextures.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\effects.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\fx.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\ingameui.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\items.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Meshes.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\particlesystems.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\PFX.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\Quests.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\SFX.arc"
  ;File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\sound.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\soundeffects.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\sounds.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\textures.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\ui.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\wanez-dga.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\wanez-runes.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\wanez.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\xpack.arc"
;Mode Uniques
  ;Unique Resources for Campaign
  SetOutPath "$INSTDIR\mods\DAIL\resources\"
  SetOverwrite on  
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\campaign\scripts.arc" 
  ;Unique Resource for DGA
  SetOutPath "$INSTDIR\mods\DAIL - RIFT (DGA)\resources\"
  SetOverwrite on  
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\dga\Text_EN.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\dga_unique\levels_wa_map.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\dga_unique\scripts.arc" 
  SetOutPath "$INSTDIR\mods\DAIL - RIFT (DGA)\database\"
  SetOverwrite on  
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\dga\DAIL - Rift (DGA).arz"
  ;Unique Resource for GDE  
  SetOutPath "$INSTDIR\mods\DAIL - Survival (GD Eternal)\resources\"
  SetOverwrite on  
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\gde\Text_EN.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\gde_unique\maps.arc"
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\resources\gde_unique\scripts.arc"
  SetOutPath "$INSTDIR\mods\DAIL - Survival (GD Eternal)\database\"
  SetOverwrite on  
  File "c:\Program Files (x86)\Steam\steamapps\common\Grim Dawn\mods\_Bag_of_Holding\Build\DAIL\database\gde\DAIL - Survival (GD Eternal).arz"
SectionEnd

Function .onSelChange
!insertmacro StartRadioButtons $1
!insertmacro RadioButton "${SEC01}"
!insertmacro RadioButton "${SEC02}"
!insertmacro RadioButton "${SEC03}"
!insertmacro RadioButton "${SEC04}"
!insertmacro RadioButton "${SEC05}"
!insertmacro EndRadioButtons
FunctionEnd

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
!insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "Vanilla Joe"
!insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "Hero Slayer"
!insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "Bring it On"
!insertmacro MUI_DESCRIPTION_TEXT ${SEC04} "Nightmare"
!insertmacro MUI_DESCRIPTION_TEXT ${SEC05} "Hellborne"
!insertmacro MUI_FUNCTION_DESCRIPTION_END

Function .onInit
StrCpy $1 ${SEC01}
SetRegView 64
ReadRegStr $INSTDIR HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 219990" "InstallLocation"
SetRegView 32
FunctionEnd
