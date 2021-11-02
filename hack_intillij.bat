rem "Suppression du contenu du dossier eval d'intelliJ"
rd /S /Q C:\Users\utilisateur\AppData\Roaming\JetBrains\IntelliJIdea2021.2\eval

rem "Suppression des lignes contenant evlsprt dans le fichier other.xml"
type C:\Users\utilisateur\AppData\Roaming\JetBrains\IntelliJIdea2021.2\options\other.xml | findstr /v evlsprt > C:\Users\utilisateur\AppData\Roaming\JetBrains\IntelliJIdea2021.2\options\other2.xml

del C:\Users\utilisateur\AppData\Roaming\JetBrains\IntelliJIdea2021.2\options\other.xml

rename C:\Users\utilisateur\AppData\Roaming\JetBrains\IntelliJIdea2021.2\options\other2.xml other.xml

rem "Suppression de la clef"
reg delete HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains\idea /f

rem "Fin des operations"
