#Auteur: Rémi Laramas
#Date de création: 22/06/2018
#Le script permet a un utilisateur de créer un compte administrateur sur une machine en local 

set-executionpolicy unrestricted #active les scripts powershell sur la machine 

$user = [Environment]::UserName # Récupère l'utilisateur actif 

Add-LocalGroupMember -Group "Administrateurs" -Member "$user"