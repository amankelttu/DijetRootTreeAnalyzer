#!bin/bash


export PATH=$HOME/.local/bin:/cvmfs/cms-bril.cern.ch/brilconda/bin:$PATH
brilcalc lumi -c web -i Cert_Collisions2024_378981_386951_Golden.json -u /pb >2024_lumi.txt
brilcalc lumi -c web -i Cert_Collisions2025_391658_398860_Golden.json -u /pb >2025_lumi.txt



#brilcalc lumi -c web -i 2024C_Muon.json -u /pb >2024C_lumi_muon.txt
#brilcalc lumi -c web -i 2024F_Muon.json -u /pb >2024F_lumi_muon.txt
#brilcalc lumi -c web -i 2024G_Muon.json -u /pb >2024G_lumi_muon.txt
#brilcalc lumi -c web -i 2024H_Muon.json -u /pb >2024H_lumi_muon.txt
#brilcalc lumi -c web -i 2024I_Muon.json -u /pb >2024I_lumi_muon.txt
#brilcalc lumi -c web -i Cert_Collisions2025_391658_393461_Muon.json -u /pb >2025C_lumi_muon.txt
