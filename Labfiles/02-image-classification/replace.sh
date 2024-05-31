# Powershell script version  replace.ps1
# $storageAcct = 'customclassify14130'
# (Get-Content training-images/training_labels.json) -replace '<storageAccount>', $storageAcct | # Out-File training-images/training_labels.json

# The above script was converted to a bash script because i use a MacOS.

storageAcct='customclassify14130'
sed "s/<storageAccount>/$storageAcct/g" training-images/training_labels.json

