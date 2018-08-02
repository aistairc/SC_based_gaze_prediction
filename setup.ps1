
# Download OMP.m
if (-Not (Test-Path "./OMP.m")) {
    Write-Host "> Download OMP.m."
    Invoke-WebRequest -Uri "https://raw.githubusercontent.com/jbhuang0604/FastSC/master/tools/dictionary%20learning/KSVD_Matlab_ToolBox/OMP.m" -Outfile "OMP.m"
}

# Download Code_WSC.rar
if (-Not (Test-Path "./Code_WSC.rar")) {
    Write-Host "> Download Code_WSC.rar"
    Invoke-WebRequest -Uri "https://www.researchgate.net/profile/Nianyi_Li2/publication/294874666_Code_WSC/data/56c4f01308aea564e304d9b3/Code-WSC.rar" -Outfile "Code_WSC.rar"
}

# Download GTEA_Gaze_Dataset
if (-Not (Test-Path "./GTEA_Gaze_Dataset.zip")) {
    Write-Host "> Download GTEA_Gaze_Dataset"
    Invoke-WebRequest -Uri "http://webshare.ipat.gatech.edu/coc-rim-wall-lab/web/afathi3/GTEA_Gaze/GTEA_Gaze_Dataset.zip" -Outfile "GTEA_Gaze_Dataset.zip"
}
if (Test-Path "./GTEA_Gaze_Dataset.zip") {
    Write-Host "> Expand GTEA_Gaze_Dataset archive."
    Expand-Archive -Path ./GTEA_Gaze_Dataset.zip -DestinationPath ./ -Force
}

