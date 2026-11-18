#define analysisClass_cxx
#include "analysisClass.h"
#include <TH2.h>
#include <TH1F.h>
#include <TStyle.h>
#include <TCanvas.h>
#include <TLorentzVector.h>
#include <TVector2.h>
#include <TVector3.h>
#include "correction.h"

//ATTENTION: In the big trees we save AK4 PUPPI jets as "AK8". Here whichever variable has the name AK8 it means AK4PUPPI

analysisClass::analysisClass(string * inputList, string * cutFile, string * treeName, string * outputFileName, string * cutEfficFile)
  :baseClass(inputList, cutFile, treeName, outputFileName, cutEfficFile)
{
  std::cout << "analysisClass::analysisClass(): begins " << std::endl;

  std::string jetAlgo = getPreCutString1("jetAlgo");
  double rParam = getPreCutValue1("DeltaR");

  if( jetAlgo == "AntiKt" )
    fjJetDefinition = JetDefPtr( new fastjet::JetDefinition(fastjet::antikt_algorithm, rParam) );
  else if( jetAlgo == "Kt" )
    fjJetDefinition = JetDefPtr( new fastjet::JetDefinition(fastjet::kt_algorithm, rParam) );
  else 
    fjJetDefinition = JetDefPtr( new fastjet::JetDefinition(fastjet::cambridge_algorithm, rParam) );
    

  // For JECs
  if( int(getPreCutValue1("useJECs"))==1 )
  {
    std::cout << "Reapplying JECs on the fly" << std::endl;
   std::cout << "Using IOV implementation for periodic JEC..." << std::endl;
    
    // Using IOV JEC now. Now that's 2016. See include/IOV.h for changing versions.
    // Note that the IOV implementation can be used with just one JEC if wanted. Juska.


   //JEC/JER recommended summer24 redirects
    JetCorrector_data = new FactorizedJetCorrector(); // Will be filled later
    std::cout << "l1path" << std::endl;
    std::string L1Path = "data/Run3/Summer23BPixPrompt23_V1_MC/Summer23BPixPrompt23_V1_MC_L1FastJet_AK4PFPuppi.txt";
    std::cout << "l2path" << std::endl;
    std::string L2Path = "data/Run3/Summer24Prompt24_V1_MC/Summer24Prompt24_V1_MC_L2Relative_AK4PFPuppi.txt";
    std::cout << "l3path" << std::endl;
    std::string L3Path = "data/Run3/Summer23BPixPrompt23_V1_MC/Summer23BPixPrompt23_V1_MC_L3Absolute_AK4PFPuppi.txt";
    std::cout << "l1datapath" << std::endl;

    std::string L1DATAPath = "data/Run3/Summer23BPixPrompt23_V1_MC/Summer23BPixPrompt23_V1_MC_L1FastJet_AK4PFPuppi.txt";
    std::cout << "l2datapath" << std::endl;
    std::string L2DATAPath = "data/Run3/Summer24Prompt24_V1_MC/Summer24Prompt24_V1_MC_L2Relative_AK4PFPuppi.txt";
    std::cout << "l3datapath" << std::endl;
    std::string L3DATAPath = "data/Run3/Summer23BPixPrompt23_V1_MC/Summer23BPixPrompt23_V1_MC_L3Absolute_AK4PFPuppi.txt";
    std::cout << "l2l3" << std::endl;
 
    std::string L2L3ResidualPath = "data/Run3/Summer23BPixPrompt23_V1_MC/Summer23BPixPrompt23_V1_MC_L2L3Residual_AK4PFPuppi.txt";
    std::cout << "uncert" << std::endl;
          
    unc = new JetCorrectionUncertainty("data/Run3/Winter24Prompt24_V1_MC/Winter24Prompt24_V1_MC_Uncertainty_AK4PFPuppi.txt");
    
    L1Par = new JetCorrectorParameters(L1Path);
    L2Par = new JetCorrectorParameters(L2Path);
    L3Par = new JetCorrectorParameters(L3Path);
    
    L1DATAPar = new JetCorrectorParameters(L1DATAPath);
    L2DATAPar = new JetCorrectorParameters(L2DATAPath);
    L3DATAPar = new JetCorrectorParameters(L3DATAPath);
    L2L3Residual = new JetCorrectorParameters(L2L3ResidualPath);
    

    std::vector<JetCorrectorParameters> vPar;
    vPar.push_back(*L1Par);
    vPar.push_back(*L2Par);
    vPar.push_back(*L3Par);

      
    //residuals are applied only to data
    std::vector<JetCorrectorParameters> vPar_data;
    vPar_data.push_back(*L1DATAPar);
    vPar_data.push_back(*L2DATAPar);
    vPar_data.push_back(*L3DATAPar);
    vPar_data.push_back(*L2L3Residual);
    

   JetCorrector = new FactorizedJetCorrector(vPar); assert(JetCorrector);
   JetCorrector_data = new FactorizedJetCorrector(vPar_data); assert(JetCorrector_data);
    
  }
  std::cout << "analysisClass::analysisClass(): ends " << std::endl;
}

analysisClass::~analysisClass()
{
  std::cout << "analysisClass::~analysisClass(): begins " << std::endl;

  std::cout << "analysisClass::~analysisClass(): ends " << std::endl;
}

void analysisClass::Loop()
{
   std::cout << "analysisClass::Loop() begins" <<std::endl;   
    
   if (fChain == 0) return;
   
   //////////book histos here

   // TH1F *h_nJetFinal = new TH1F ("h_nJetFinal","",10,0,10);
   // h_nJetFinal->Sumw2();      
   // TH1F *h_nVtx = new TH1F ("h_nVtx","",30,0,30);
   // h_nVtx->Sumw2(); 
   // TH1F *h_trueVtx = new TH1F ("h_trueVtx","",40,0,40);
   // h_trueVtx->Sumw2();  
   // TH1F *h_pT1stJet = new TH1F ("h_pT1stJet","",100,0,3000);
   // h_pT1stJet->Sumw2();
   // TH1F *h_pT2ndJet = new TH1F ("h_pT2ndJet","",100,0,3000);
   // h_pT2ndJet->Sumw2();
   // TH1F *h_eta1stJet = new TH1F ("h_eta1stJet","",5,-2.5,2.5);
   // h_eta1stJet->Sumw2();
   // TH1F *h_eta2ndJet = new TH1F ("h_eta2ndJet","",5,-2.5,2.5);
   // h_eta2ndJet->Sumw2();
   // TH1F *h_DijetMass = new TH1F ("h_DijetMass","",600,0,6000);
   // h_DijetMass->Sumw2();
   // TH1F *h_DeltaETAjj = new TH1F ("h_DeltaETAjj","",120,0,3.);
   // h_DeltaETAjj->Sumw2();

   // variable binning for mjj trigger efficiency plots
   const int nMassBins = 103;

   double massBoundaries[nMassBins+1] = {1, 3, 6, 10, 16, 23, 31, 40, 50, 61, 74, 88, 103, 119, 137, 156, 176, 197, 220, 244, 270, 296, 325,
     354, 386, 419, 453, 489, 526, 565, 606, 649, 693, 740, 788, 838, 890, 944, 1000, 1058, 1118, 1181, 1246, 1313, 1383, 1455, 1530, 1607, 1687,
     1770, 1856, 1945, 2037, 2132, 2231, 2332, 2438, 2546, 2659, 2775, 2895, 3019, 3147, 3279, 3416, 3558, 3704, 3854, 4010, 4171, 4337, 4509,
     4686, 4869, 5058, 5253, 5455, 5663, 5877, 6099, 6328, 6564, 6808, 7060, 7320, 7589, 7866, 8152, 8447, 8752, 9067, 9391, 9726, 10072, 10430, 
     10798, 11179, 11571, 11977, 12395, 12827, 13272, 13732, 14000};
  
   auto cset=correction::CorrectionSet::from_file("/cvmfs/cms.cern.ch/rsync/cms-nanoAOD/jsonpog-integration/POG/BTV/2024_Summer24/btagging_preliminary.json.gz");
   

 char* HLTname[50]    = {"noTrig","PFHT1050","PFJet550","Mu50", "AK8PFJet550","CaloJet550","AllJet","PFHT1050_not_OR_from_others","PFJet550_not_OR_from_others","AK8PFJet550_not_OR_from_others","CaloJet550_not_OR_from_others","PFHT1050_OR_AK8PFJet550","PFHT1050_OR_PFJet550","PFHT1050_OR_CaloJet550"};


   TH1F* h_mjj_HLTpass[7];
   //TH1F* h_mjj_HLTpass_bb[7];
   char name_histoHLT[50];
   //char name_histoHLT_bb[50];

   for (int i=0; i<7; i++){  
     sprintf(name_histoHLT,"h_mjj_HLTpass_%s",HLTname[i]);
     h_mjj_HLTpass[i]= new TH1F(name_histoHLT,"",103,massBoundaries);

     //sprintf(name_histoHLT_bb,"h_mjj_HLTpass_bb_%s",HLTname[i]);
     //h_mjj_HLTpass_bb[i]= new TH1F(name_histoHLT_bb,"",103,massBoundaries);
   }

  

   /////////initialize variables

   Long64_t nentries = fChain->GetEntriesFast();
   std::cout << "analysisClass::Loop(): nentries = " << nentries << std::endl;   

   ////// The following ~7 lines have been taken from rootNtupleClass->Loop() /////
   ////// If the root version is updated and rootNtupleClass regenerated,     /////
   ////// these lines may need to be updated.                                 /////    
   Long64_t nbytes = 0, nb = 0;
   for (Long64_t jentry=0; jentry<nentries;jentry++) { //event loop
  // for (Long64_t jentry=0; jentry<100000;jentry++) { //event loop
   //for (Long64_t jentry=0; jentry<5;jentry++) {
   //for (Long64_t jentry=0; jentry<nentries;jentry=jentry+10) {   //takes every 10th en
     Long64_t ientry = LoadTree(jentry);
     if (ientry < 0) break;
     nb = fChain->GetEntry(jentry);   nbytes += nb;
     if(jentry < 10 || jentry%50000 == 0) std::cout << "analysisClass::Loop(): jentry = " << jentry << std::endl;   
     // if (Cut(ientry) < 0) continue;

     ////////////////////// User's code starts here ///////////////////////

     ///Stuff to be done for every event
    
//	if(runNo<382298 || runNo>=383247) continue; //nib2 JEC run F

     size_t no_jets_AK8=jetPtAK8->size();

     vector<TLorentzVector> widejets;
     TLorentzVector wj1, wj2, wdijet; 
     TLorentzVector wj1_shift, wj2_shift, wdijet_shift; 

     vector<TLorentzVector> AK8jets;
     TLorentzVector AK8j1, AK8j2, AK8dijet;      

     resetCuts();

     //find intime BX
     int idx_InTimeBX=-1;
     for(size_t j=0; j<PileupOriginBX->size(); ++j)
       {
	 //cout << PileupOriginBX->at(j) << endl;	 
	 if(PileupOriginBX->at(j)==0)
	   {
	     idx_InTimeBX = j;
	     //cout << "idx_InTimeBX: " << idx_InTimeBX << endl; 
	   }
       }

     std::vector<double> jecFactors;
     std::vector<double> jecUncertainty;
     // new JECs could change the jet pT ordering. the vector below
     // holds sorted jet indices after the new JECs had been applied
     std::vector<unsigned> sortedJetIdx;
     bool isData = 0;
     if(idx_InTimeBX > -1 ) isData = 0;
     else isData = 1;

     if( int(getPreCutValue1("useJECs"))==1 )
       {
	 // sort jets by increasing pT
	 std::multimap<double, unsigned> sortedJets;
	 for(size_t j=0; j<no_jets_AK8; ++j)
	   {
	     JetCorrector->setJetEta(jetEtaAK8->at(j));
	     JetCorrector->setJetPhi(jetPhiAK8->at(j));
	     JetCorrector->setJetPt(jetPtAK8->at(j)/jetJecAK8->at(j)); //pTraw
	     JetCorrector->setJetA(jetAreaAK8->at(j));
	     JetCorrector->setRho(rho);
	     
   //   JetCorrector_data = iov->get(runNo); // Get IOV dependent JEC

        
  	     JetCorrector_data->setJetEta(jetEtaAK8->at(j));
      	     JetCorrector_data->setJetPhi(jetPhiAK8->at(j));
	     JetCorrector_data->setJetPt(jetPtAK8->at(j)/jetJecAK8->at(j)); //pTraw
	     JetCorrector_data->setJetA(jetAreaAK8->at(j));
	     JetCorrector_data->setRho(rho);


  	     //nominal value of JECs
	     double correction;//, old_correction, nominal_correction;
	     //if( int(getPreCutValue1("shiftJECs"))==0 ){
	     if (isData == 1) correction = JetCorrector_data->getCorrection();
                              
	     else correction = JetCorrector->getCorrection();

//cout << correction << endl;
	     //nominal_correction=correction;
	     //old_correction = jetJecAK8->at(j);u
	     //}
	     //JEC uncertainties
	     unc->setJetEta(jetEtaAK8->at(j));
	     unc->setJetPhi(jetPhiAK8->at(j));
	     unc->setJetPt(jetPtAK8->at(j)/jetJecAK8->at(j)*correction);
	     double uncertainty = unc->getUncertainty(true);
	     jecUncertainty.push_back(uncertainty); 

	     // std::cout << "run:" << runNo << "    lumi:" << lumi << "   event:" << evtNo << "   jet pt:" << jetPtAK8->at(j)/jetJecAK8->at(j)*correction << "   correction:" << correction <<   "   uncertainty:" <<  uncertainty  << "  nominal correction:" << nominal_correction  << " old correction: " << old_correction << std::endl;
	     //use "shifted" JECs for study of systematic uncertainties 
	     if( int(getPreCutValue1("shiftJECs"))==1 ){
	       //flat shift
	       //if (isData == 1) correction = JetCorrector_data->getCorrection() * getPreCutValue2("shiftJECs");
	       //else correction = JetCorrector->getCorrection() * getPreCutValue2("shiftJECs");
	       //shift of the corresponding unc
	       correction = correction + getPreCutValue2("shiftJECs")*uncertainty*correction;
	       //  std::cout << "run:" << runNo << "    lumi:" << lumi << "   event:" << evtNo << "   jet pt:" << jetPtAK3->at(j)/jetJecAK8->at(j)*correction << "   correction:" << correction << "   uncertainty:" <<  uncertainty  << std::endl << std::endl;
	       
	   }

	 jecFactors.push_back(correction);
	 sortedJets.insert(std::make_pair((jetPtAK8->at(j)/jetJecAK8->at(j))*correction, j));

       }
     // get jet indices in decreasing pT order
     for(std::multimap<double, unsigned>::const_reverse_iterator it = sortedJets.rbegin(); it != sortedJets.rend(); ++it)
	 sortedJetIdx.push_back(it->second);
     
     }
     else if( int(getPreCutValue1("noJECs"))==1  )
       {
	 // sort jets by increasing pT
	 std::multimap<double, unsigned> sortedJets;
	 for(size_t j=0; j<no_jets_AK8; ++j) //same ordering of original root trees
	   {
	     jecUncertainty.push_back(0.); 
	     jecFactors.push_back(1.);
	     sortedJets.insert(std::make_pair((jetPtAK8->at(j)/jetJecAK8->at(j)), j)); //raw
	   }       
	 // get jet indices in decreasing pT order
	 for(std::multimap<double, unsigned>::const_reverse_iterator it = sortedJets.rbegin(); it != sortedJets.rend(); ++it)
	   sortedJetIdx.push_back(it->second);
       }
     else
       {
	 for(size_t j=0; j<no_jets_AK8; ++j) //same ordering of original root trees
	   {
	     jecFactors.push_back(jetJecAK8->at(j));
	     jecUncertainty.push_back(0.); 
	     sortedJetIdx.push_back(j);
	   }
       }

  // Create JetID vector for every jet in the event (do not use the existing jetID vector from the big trees)
  //----  Be careful: NHF<0.9 for prompt 2022 CDE and NHF<0.99 for the rest of runs -----
     std::vector<int> *JetID = new std::vector<int>;

     for(size_t ijet=0; ijet<no_jets_AK8; ++ijet)
     {
	 int passJetID = ( jetNhfAK8->at(ijet)<0.99 && jetNemfAK8->at(ijet)<0.9 && chMultAK8->at(ijet)+neMultAK8->at(ijet)>1 && jetMufAK8->at(ijet)<0.7 && jetChfAK8->at(ijet)>0.01 && chMultAK8->at(ijet)>0 && jetCemfAK8->at(ijet)<0.8 );
 	 JetID->push_back(passJetID);
     }

     //#############################################################
     //########## NOTE: from now on sortedJetIdx[ijet] should be used
     //#############################################################

     // if(no_jets_AK8>=2){
     //  if(!(fabs(jetEtaAK8->at(0)) < getPreCutValue1("jetFidRegion") && idTAK8->at(0) == getPreCutValue1("tightJetID"))){
     //    std::cout << " JET 0 FAIL " << jetEtaAK8->at(0) << " JET 0  ID " << idTAK8->at(0) << std::endl;
     //  }
     //  if(!(fabs(jetEtaAK8->at(1)) < getPreCutValue1("jetFidRegion") && idTAK8->at(1) == getPreCutValue1("tightJetID"))){
     //    std::cout << " JET 1 FAIL " << jetEtaAK8->at(1) << " JET 1  ID " << idTAK8->at(1) << std::endl;
     //  }  
     // }

     //count AK8 jets passing pt threshold and id criteria
     int NAK8 = 0;
     double HTAK8 = 0;
     for(size_t ijet=0; ijet<no_jets_AK8; ++ijet)
       {	 
	  //cout << "ijet=" << ijet << " , sortedJetIdx[ijet]=" << sortedJetIdx[ijet] 
	  //     << " , raw pT=" << jetPtAK8->at(sortedJetIdx[ijet])/jetJecAK8->at(sortedJetIdx[ijet]) 
	  //     << " , final corrected pT - old =" << jetPtAK8->at(sortedJetIdx[ijet] ) 
	  //     << " , final corrected pT - new =" << (jecFactors[sortedJetIdx[ijet]]/jetJecAK8->at(sortedJetIdx[ijet]))*jetPtAK8->at(sortedJetIdx[ijet])
	  //     << endl;

	 //////////////cout << "id Tight jet" << sortedJetIdx[1] << " = " << idTAK8->at(sortedJetIdx[1]) << endl;
	 if(fabs(jetEtaAK8->at(sortedJetIdx[ijet])) < getPreCutValue1("jetFidRegion")
	    && JetID->at(sortedJetIdx[ijet]) == getPreCutValue1("tightJetID") 
	    && (jecFactors[sortedJetIdx[ijet]]/jetJecAK8->at(sortedJetIdx[ijet]))*jetPtAK8->at(sortedJetIdx[ijet]) > getPreCutValue1("ptCut"))
	   {
	     NAK8 += 1;
	     HTAK8 += (jecFactors[sortedJetIdx[ijet]]/jetJecAK8->at(sortedJetIdx[ijet]))*jetPtAK8->at(sortedJetIdx[ijet]);
	   }
       }

     if( int(getPreCutValue1("useFastJet"))==1 )
     {
       // vector of AK8 jets used for wide jet clustering
       std::vector<fastjet::PseudoJet> fjInputs, fjInputs_shift;

       for(size_t j=0; j<no_jets_AK8; ++j)
       {

 	if( !(jetEtaAK8->at(sortedJetIdx[j]) < getPreCutValue1("jetFidRegion")
	       && JetID->at(sortedJetIdx[j]) == getPreCutValue1("tightJetID")  ) ) continue;

	 double rescale = (jecFactors[sortedJetIdx[j]]/jetJecAK8->at(sortedJetIdx[j])); 

	 if( j==0 && !( rescale*jetPtAK8->at(sortedJetIdx[j]) > getPreCutValue1("pt0Cut")) ) continue;
	 else if( j==1 && !( rescale*jetPtAK8->at(sortedJetIdx[j]) > getPreCutValue1("pt1Cut")) ) continue;
	 else if( !( rescale*jetPtAK8->at(sortedJetIdx[j]) > getPreCutValue1("ptCut")) ) continue;

	 TLorentzVector tempJet, tempJet_shift;

	 tempJet.SetPtEtaPhiM( rescale*jetPtAK8->at(sortedJetIdx[j]) , jetEtaAK8->at(sortedJetIdx[j]) , jetPhiAK8->at(sortedJetIdx[j]) , rescale*jetMassAK8->at(sortedJetIdx[j]));
	 tempJet_shift.SetPtEtaPhiM( (1+jecUncertainty[sortedJetIdx[j]])* rescale*jetPtAK8->at(sortedJetIdx[j]) , jetEtaAK8->at(sortedJetIdx[j]) , jetPhiAK8->at(sortedJetIdx[j]) ,  (1+jecUncertainty[sortedJetIdx[j]])* rescale*jetMassAK8->at(sortedJetIdx[j]));

	 fjInputs.push_back(fastjet::PseudoJet(tempJet.Px(),tempJet.Py(),tempJet.Pz(),tempJet.E()));
	 fjInputs_shift.push_back(fastjet::PseudoJet(tempJet_shift.Px(),tempJet_shift.Py(),tempJet_shift.Pz(),tempJet_shift.E()));
       }

       fjClusterSeq = ClusterSequencePtr( new fastjet::ClusterSequence( fjInputs, *fjJetDefinition ) );
       fjClusterSeq_shift = ClusterSequencePtr( new fastjet::ClusterSequence( fjInputs_shift, *fjJetDefinition ) );

       std::vector<fastjet::PseudoJet> inclusiveWideJets = fastjet::sorted_by_pt( fjClusterSeq->inclusive_jets(0.) );
       std::vector<fastjet::PseudoJet> inclusiveWideJets_shift = fastjet::sorted_by_pt( fjClusterSeq_shift->inclusive_jets(0.) );

       if( inclusiveWideJets.size()>1 )
       {
	 wj1.SetPxPyPzE(inclusiveWideJets.at(0).px(), inclusiveWideJets.at(0).py(), inclusiveWideJets.at(0).pz(), inclusiveWideJets.at(0).e());
	 wj2.SetPxPyPzE(inclusiveWideJets.at(1).px(), inclusiveWideJets.at(1).py(), inclusiveWideJets.at(1).pz(), inclusiveWideJets.at(1).e());
	 wj1_shift.SetPxPyPzE(inclusiveWideJets_shift.at(0).px(), inclusiveWideJets_shift.at(0).py(), inclusiveWideJets_shift.at(0).pz(), inclusiveWideJets_shift.at(0).e());
	 wj2_shift.SetPxPyPzE(inclusiveWideJets_shift.at(1).px(), inclusiveWideJets_shift.at(1).py(), inclusiveWideJets_shift.at(1).pz(), inclusiveWideJets_shift.at(1).e());
       }
     }
     else
     {
       TLorentzVector wj1_tmp, wj2_tmp;
       TLorentzVector wj1_shift_tmp, wj2_shift_tmp;
       double wideJetDeltaR_ = getPreCutValue1("DeltaR");

       if(no_jets_AK8>=2)
	 {

	   if(fabs(jetEtaAK8->at(sortedJetIdx[0])) < getPreCutValue1("jetFidRegion")  &&  JetID->at(sortedJetIdx[0]) == getPreCutValue1("tightJetID")
	      && (jecFactors[sortedJetIdx[0]]/jetJecAK8->at(sortedJetIdx[0]))*jetPtAK8->at(sortedJetIdx[sortedJetIdx[0]]) > getPreCutValue1("pt0Cut"))
	     {
	       if(fabs(jetEtaAK8->at(sortedJetIdx[1])) < getPreCutValue1("jetFidRegion") && JetID->at(sortedJetIdx[1]) == getPreCutValue1("tightJetID")
		  && (jecFactors[sortedJetIdx[1]]/jetJecAK8->at(sortedJetIdx[1]))*jetPtAK8->at(sortedJetIdx[1]) > getPreCutValue1("pt1Cut"))
		 {
		   TLorentzVector jet1, jet2, jet1_shift, jet2_shift;
		   jet1.SetPtEtaPhiM( (jecFactors[sortedJetIdx[0]]/jetJecAK8->at(sortedJetIdx[0])) *jetPtAK8->at(sortedJetIdx[0])
				      ,jetEtaAK8->at(sortedJetIdx[0]),jetPhiAK8->at(sortedJetIdx[0])
				      , (jecFactors[sortedJetIdx[0]]/jetJecAK8->at(sortedJetIdx[0])) * jetMassAK8->at(sortedJetIdx[0]));
		   jet2.SetPtEtaPhiM( (jecFactors[sortedJetIdx[1]]/jetJecAK8->at(sortedJetIdx[1])) *jetPtAK8->at(sortedJetIdx[1])
				      ,jetEtaAK8->at(sortedJetIdx[1]),jetPhiAK8->at(sortedJetIdx[1])
				      , (jecFactors[sortedJetIdx[1]]/jetJecAK8->at(sortedJetIdx[1])) * jetMassAK8->at(sortedJetIdx[1]));
		   jet1_shift.SetPtEtaPhiM( (1+jecUncertainty[sortedJetIdx[0]])*(jecFactors[sortedJetIdx[0]]/jetJecAK8->at(sortedJetIdx[0])) *jetPtAK8->at(sortedJetIdx[0])
				      ,jetEtaAK8->at(sortedJetIdx[0]),jetPhiAK8->at(sortedJetIdx[0])
				      , (1+jecUncertainty[sortedJetIdx[0]])*(jecFactors[sortedJetIdx[0]]/jetJecAK8->at(sortedJetIdx[0])) * jetMassAK8->at(sortedJetIdx[0]));
		   jet2_shift.SetPtEtaPhiM( (1+jecUncertainty[sortedJetIdx[1]])* (jecFactors[sortedJetIdx[1]]/jetJecAK8->at(sortedJetIdx[1])) *jetPtAK8->at(sortedJetIdx[1])
				      ,jetEtaAK8->at(sortedJetIdx[1]),jetPhiAK8->at(sortedJetIdx[1])
				      , (1+jecUncertainty[sortedJetIdx[0]])*(jecFactors[sortedJetIdx[1]]/jetJecAK8->at(sortedJetIdx[1])) * jetMassAK8->at(sortedJetIdx[1]));
		   
		   for(Long64_t ijet=0; ijet<no_jets_AK8; ijet++)
		     { //jet loop for AK8
		       TLorentzVector currentJet;
								        		       
		       if(fabs(jetEtaAK8->at(sortedJetIdx[ijet])) < getPreCutValue1("jetFidRegion") 
			  && JetID->at(sortedJetIdx[ijet]) == getPreCutValue1("tightJetID") 
			  && (jecFactors[sortedJetIdx[ijet]]/jetJecAK8->at(sortedJetIdx[ijet]))*jetPtAK8->at(sortedJetIdx[ijet]) > getPreCutValue1("ptCut"))
			 {
			   TLorentzVector currentJet, currentJet_shift;
			   currentJet.SetPtEtaPhiM( (jecFactors[sortedJetIdx[ijet]]/jetJecAK8->at(sortedJetIdx[ijet])) *jetPtAK8->at(sortedJetIdx[ijet])
						    ,jetEtaAK8->at(sortedJetIdx[ijet]),jetPhiAK8->at(sortedJetIdx[ijet])
						    , (jecFactors[sortedJetIdx[ijet]]/jetJecAK8->at(sortedJetIdx[ijet])) *jetMassAK8->at(sortedJetIdx[ijet]));   
			   currentJet_shift.SetPtEtaPhiM( (1+jecUncertainty[sortedJetIdx[ijet]])*(jecFactors[sortedJetIdx[ijet]]/jetJecAK8->at(sortedJetIdx[ijet])) *jetPtAK8->at(sortedJetIdx[ijet])
						    ,jetEtaAK8->at(sortedJetIdx[ijet]),jetPhiAK8->at(sortedJetIdx[ijet])
						    , (1+jecUncertainty[sortedJetIdx[ijet]])*(jecFactors[sortedJetIdx[ijet]]/jetJecAK8->at(sortedJetIdx[ijet])) *jetMassAK8->at(sortedJetIdx[ijet]));   
			   
			   double DeltaR1 = currentJet.DeltaR(jet1);
			   double DeltaR2 = currentJet.DeltaR(jet2);
			   
			   if(DeltaR1 < DeltaR2 && DeltaR1 < wideJetDeltaR_)
			     {
			       wj1_tmp += currentJet;
			       wj1_shift_tmp += currentJet_shift;
			     }
			   else if(DeltaR2 < wideJetDeltaR_)
			     {
			       wj2_tmp += currentJet;
			       wj2_shift_tmp += currentJet_shift;
			     }			 
			 } // if AK8 jet passes fid and jetid.
		     } //end of AK8 jet loop		     

		   // if(wj1_tmp.Pt()==0 && wj2_tmp.Pt() ==0) 
		   // std::cout << " wj1_tmp.Pt() IN  " <<wj1_tmp.Pt()  << " wj2_tmp.Pt() " <<  wj2_tmp.Pt()  << std::endl;		     

		 } //fid, jet id, pt cut
	     } //fid, jet id, pt cut
	 } // end of two jets

       // Re-order the wide jets in pt
       if( wj1_tmp.Pt() > wj2_tmp.Pt())
	 {
	   wj1 = wj1_tmp;
	   wj2 = wj2_tmp;
	   wj1_shift = wj1_shift_tmp;
	   wj2_shift = wj2_shift_tmp;
	 }
       else
	 {
	   wj1 = wj2_tmp;
	   wj2 = wj1_tmp;
	   wj1_shift = wj2_shift_tmp;
	   wj2_shift = wj1_shift_tmp;
	 }
     }

     //cout<<wj1.Pt()<<" wide jet pt "<<wj2.Pt()<<endl;
     double MJJWide = 0; 
     double DeltaEtaJJWide = 0;
     double DeltaPhiJJWide = 0;
     double MJJWide_shift = 0; 
     if( wj1.Pt()>0 && wj2.Pt()>0 )
     {
       // Create dijet system
       wdijet = wj1 + wj2;
       MJJWide = wdijet.M();
       DeltaEtaJJWide = fabs(wj1.Eta()-wj2.Eta());
       DeltaPhiJJWide = fabs(wj1.DeltaPhi(wj2));
       
       wdijet_shift = wj1_shift + wj2_shift;
       MJJWide_shift = wdijet_shift.M();

       // Put widejets in the container
       widejets.push_back( wj1 );
       widejets.push_back( wj2 );
     }

     //AK8 jets
     if(no_jets_AK8>=2)
       //cout << "eta j1 " << jetEtaAK8->at(sortedJetIdx[0]) << endl;
       //cout << "pt j1 " << (jecFactors[sortedJetIdx[0]]/jetJecAK8->at(sortedJetIdx[0])) *jetPtAK8->at(sortedJetIdx[0]) << endl;
       {
	 if(fabs(jetEtaAK8->at(sortedJetIdx[0])) < getPreCutValue1("jetFidRegion") && JetID->at(sortedJetIdx[0]) == getPreCutValue1("tightJetID")
	    && (jecFactors[sortedJetIdx[0]]/jetJecAK8->at(sortedJetIdx[0]))*jetPtAK8->at(sortedJetIdx[0]) > getPreCutValue1("pt0Cut"))
	   {
	     if(fabs(jetEtaAK8->at(sortedJetIdx[1])) < getPreCutValue1("jetFidRegion")  && JetID->at(sortedJetIdx[1]) == getPreCutValue1("tightJetID")
		&& (jecFactors[sortedJetIdx[1]]/jetJecAK8->at(sortedJetIdx[1]))*jetPtAK8->at(sortedJetIdx[1]) > getPreCutValue1("pt1Cut"))
	       {
		 //cout << "filling AK8j1 and AK8j2" << endl;
		 //cout << "pt AK8 j1 = " << (jecFactors[sortedJetIdx[0]]/jetJecAK8->at(sortedJetIdx[0])) *jetPtAK8->at(sortedJetIdx[0]) << endl;
		 AK8j1.SetPtEtaPhiM( (jecFactors[sortedJetIdx[0]]/jetJecAK8->at(sortedJetIdx[0])) *jetPtAK8->at(sortedJetIdx[0])
				     ,jetEtaAK8->at(sortedJetIdx[0])
				     ,jetPhiAK8->at(sortedJetIdx[0])
				     , (jecFactors[sortedJetIdx[0]]/jetJecAK8->at(sortedJetIdx[0])) *jetMassAK8->at(sortedJetIdx[0]));
		 AK8j2.SetPtEtaPhiM( (jecFactors[sortedJetIdx[1]]/jetJecAK8->at(sortedJetIdx[1])) *jetPtAK8->at(sortedJetIdx[1])
				     ,jetEtaAK8->at(sortedJetIdx[1])
				     ,jetPhiAK8->at(sortedJetIdx[1])
				     , (jecFactors[sortedJetIdx[1]]/jetJecAK8->at(sortedJetIdx[1])) *jetMassAK8->at(sortedJetIdx[1]));
	       }
	   }
       }   


     double MJJAK8 = 0; 
     double DeltaEtaJJAK8 = 0;
     double DeltaPhiJJAK8 = 0;
    
     //std::cout << "AK8j1.Pt()=" << AK8j1.Pt() << "   AK8j2.Pt()=" << AK8j2.Pt() << std::endl;
     if( AK8j1.Pt()>0 && AK8j2.Pt()>0 )
     {
       // Create dijet system
       AK8dijet = AK8j1 + AK8j2;
       MJJAK8 = AK8dijet.M();
       DeltaEtaJJAK8 = fabs(AK8j1.Eta()-AK8j2.Eta());
       DeltaPhiJJAK8 = fabs(AK8j1.DeltaPhi(AK8j2));

       // Put widejets in the container
       AK8jets.push_back( AK8j1 );
       AK8jets.push_back( AK8j2 );
     }
  
     //== Fill Variables ==

     fillVariableWithValue("run",runNo);     
     fillVariableWithValue("event",evtNo);     
     fillVariableWithValue("lumi",lumi);     
     fillVariableWithValue("nVtx",nvtx);     
     fillVariableWithValue("nJet",widejets.size());
     fillVariableWithValue("metSig",metSig);
     fillVariableWithValue("weight",weight);
     fillVariableWithValue("NAK8",NAK8);
     fillVariableWithValue( "PassJSON", passJSON (runNo, lumi, isData));

     fillVariableWithValue("Flag_NotAffectedByPrefire",Flag_NotAffectedByPrefire);
     fillVariableWithValue("Flag_IsUnprefirable",Flag_IsUnprefirable);
     fillVariableWithValue("passL1_Initial_bx0_473",passL1_Initial_bx0_473);
  
     if( AK8jets.size() >=1 ){
       //cout << "AK8jets.size() " <<  AK8jets.size() << endl;
       fillVariableWithValue( "IdTight_j1",JetID->at(sortedJetIdx[0]));
       fillVariableWithValue( "pTAK8_j1", AK8jets[0].Pt());
       fillVariableWithValue( "etaAK8_j1", AK8jets[0].Eta());
       fillVariableWithValue( "phiAK8_j1", AK8jets[0].Phi());
       
       //fillVariableWithValue( "jetPtAK8matchCaloJet_j1", jetPtAK8matchCaloJet->at(sortedJetIdx[0]));
       
       fillVariableWithValue( "jetJecAK8_j1", jecFactors[sortedJetIdx[0]] );
       fillVariableWithValue( "jetJecUncAK8_j1", jecUncertainty[sortedJetIdx[0]] );
       
       //fillVariableWithValue( "jetCSVAK8_j1", jetCSVAK8->at(sortedJetIdx[0]) );
       fillVariableWithValue("jetHflavour_j1",hFlavourAK8->at(sortedJetIdx[0]));

       //jetID
       fillVariableWithValue( "neutrHadEnFrac_j1", jetNhfAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "chargedHadEnFrac_j1", jetChfAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "photonEnFrac_j1", jetPhfAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "eleEnFract_j1", jetElfAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "muEnFract_j1", jetMufAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "neutrElectromFrac_j1", jetNemfAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "chargedElectromFrac_j1", jetCemfAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "chargedMult_j1", chMultAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "neutrMult_j1", neMultAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "photonMult_j1", phoMultAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "pFlavourAK8_j1",pFlavourAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "hFlavourAK8_j1",hFlavourAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParTProbbAK8_j1",jetParTProbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParTProbbbAK8_j1",jetParTProbbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParTProbcAK8_j1",jetParTProbcAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParTProbudsAK8_j1",jetParTProbudsAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParTProbgAK8_j1",jetParTProbgAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParTProblepbAK8_j1",jetParTProblepbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTProbbAK8_j1",jetUParTProbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTProbbbAK8_j1",jetUParTProbbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTProbcAK8_j1",jetUParTProbcAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTProbuAK8_j1",jetUParTProbuAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTProbdAK8_j1",jetUParTProbdAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTProbsAK8_j1",jetUParTProbsAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTProbgAK8_j1",jetUParTProbgAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTProblepbAK8_j1",jetUParTProblepbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTV1ProbbAK8_j1",jetUParTV1ProbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTV1ProbbbAK8_j1",jetUParTV1ProbbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTV1ProbcAK8_j1",jetUParTV1ProbcAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTV1ProbuAK8_j1",jetUParTV1ProbuAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTV1ProbdAK8_j1",jetUParTV1ProbdAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTV1ProbsAK8_j1",jetUParTV1ProbsAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTV1ProbgAK8_j1",jetUParTV1ProbgAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetUParTV1ProblepbAK8_j1",jetUParTV1ProblepbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParticleNetProbbAK8_j1",jetParticleNetProbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParticleNetProbcAK8_j1",jetParticleNetProbcAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParticleNetProbudsAK8_j1",jetParticleNetProbudsAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParticleNetProbgAK8_j1",jetParticleNetProbgAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParticleNetFromMiniAODAK4PuppiCentralProbbAK8_j1",jetParticleNetFromMiniAODAK4PuppiCentralProbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParticleNetFromMiniAODAK4PuppiCentralProbcAK8_j1",jetParticleNetFromMiniAODAK4PuppiCentralProbcAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParticleNetFromMiniAODAK4PuppiCentralProbudsAK8_j1",jetParticleNetFromMiniAODAK4PuppiCentralProbudsAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetParticleNetFromMiniAODAK4PuppiCentralProbgAK8_j1",jetParticleNetFromMiniAODAK4PuppiCentralProbgAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetDeepCsvProbbAK8_j1",jetDeepCsvProbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetDeepCsvProbbbAK8_j1",jetDeepCsvProbbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetDeepCsvProbcAK8_j1",jetDeepCsvProbcAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetDeepCsvProbudsgAK8_j1",jetDeepCsvProbudsgAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetDeepFlavourProbbAK8_j1",jetDeepFlavourProbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetDeepFlavourProbbbAK8_j1",jetDeepFlavourProbbbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetDeepFlavourProblepbAK8_j1",jetDeepFlavourProblepbAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetDeepFlavourProbcAK8_j1",jetDeepFlavourProbcAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetDeepFlavourProbudsAK8_j1",jetDeepFlavourProbudsAK8->at(sortedJetIdx[0]));
       fillVariableWithValue( "jetDeepFlavourProbgAK8_j1",jetDeepFlavourProbgAK8->at(sortedJetIdx[0]));
     }
     if( AK8jets.size() >=2 ){
       fillVariableWithValue( "IdTight_j2",JetID->at(sortedJetIdx[1]));
       fillVariableWithValue( "pTAK8_j2", AK8jets[1].Pt() );
       fillVariableWithValue( "etaAK8_j2", AK8jets[1].Eta());
       fillVariableWithValue( "phiAK8_j2", AK8jets[1].Phi());
       //fillVariableWithValue( "jetPtAK8matchCaloJet_j2", jetPtAK8matchCaloJet->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetJecAK8_j2", jecFactors[sortedJetIdx[1]]); 
       fillVariableWithValue( "jetJecUncAK8_j2", jecUncertainty[sortedJetIdx[1]] );
       //fillVariableWithValue( "jetCSVAK8_j2", jetCSVAK8->at(sortedJetIdx[1]) );
       fillVariableWithValue("jetHflavour_j2",hFlavourAK8->at(sortedJetIdx[1]));

       //jetID
       fillVariableWithValue( "neutrHadEnFrac_j2", jetNhfAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "chargedHadEnFrac_j2", jetChfAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "photonEnFrac_j2", jetPhfAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "eleEnFract_j2", jetElfAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "muEnFract_j2", jetMufAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "neutrElectromFrac_j2", jetNemfAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "chargedElectromFrac_j2", jetCemfAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "chargedMult_j2", chMultAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "neutrMult_j2", neMultAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "photonMult_j2", phoMultAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "pFlavourAK8_j2",pFlavourAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "hFlavourAK8_j2",hFlavourAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParTProbbAK8_j2",jetParTProbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParTProbbbAK8_j2",jetParTProbbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParTProbcAK8_j2",jetParTProbcAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParTProbudsAK8_j2",jetParTProbudsAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParTProbgAK8_j2",jetParTProbgAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParTProblepbAK8_j2",jetParTProblepbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTProbbAK8_j2",jetUParTProbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTProbbbAK8_j2",jetUParTProbbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTProbcAK8_j2",jetUParTProbcAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTProbuAK8_j2",jetUParTProbuAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTProbdAK8_j2",jetUParTProbdAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTProbsAK8_j2",jetUParTProbsAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTProbgAK8_j2",jetUParTProbgAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTProblepbAK8_j2",jetUParTProblepbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTV1ProbbAK8_j2",jetUParTV1ProbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTV1ProbbbAK8_j2",jetUParTV1ProbbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTV1ProbcAK8_j2",jetUParTV1ProbcAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTV1ProbuAK8_j2",jetUParTV1ProbuAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTV1ProbdAK8_j2",jetUParTV1ProbdAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTV1ProbsAK8_j2",jetUParTV1ProbsAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTV1ProbgAK8_j2",jetUParTV1ProbgAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetUParTV1ProblepbAK8_j2",jetUParTProblepbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParticleNetProbbAK8_j2",jetParticleNetProbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParticleNetProbcAK8_j2",jetParticleNetProbcAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParticleNetProbudsAK8_j2",jetParticleNetProbudsAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParticleNetProbgAK8_j2",jetParticleNetProbgAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParticleNetFromMiniAODAK4PuppiCentralProbbAK8_j2",jetParticleNetFromMiniAODAK4PuppiCentralProbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParticleNetFromMiniAODAK4PuppiCentralProbcAK8_j2",jetParticleNetFromMiniAODAK4PuppiCentralProbcAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParticleNetFromMiniAODAK4PuppiCentralProbudsAK8_j2",jetParticleNetFromMiniAODAK4PuppiCentralProbudsAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetParticleNetFromMiniAODAK4PuppiCentralProbgAK8_j2",jetParticleNetFromMiniAODAK4PuppiCentralProbgAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetDeepCsvProbbAK8_j2",jetDeepCsvProbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetDeepCsvProbbbAK8_j2",jetDeepCsvProbbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetDeepCsvProbcAK8_j2",jetDeepCsvProbcAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetDeepCsvProbudsgAK8_j2",jetDeepCsvProbudsgAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetDeepFlavourProbbAK8_j2",jetDeepFlavourProbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetDeepFlavourProbbbAK8_j2",jetDeepFlavourProbbbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetDeepFlavourProblepbAK8_j2",jetDeepFlavourProblepbAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetDeepFlavourProbcAK8_j2",jetDeepFlavourProbcAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetDeepFlavourProbudsAK8_j2",jetDeepFlavourProbudsAK8->at(sortedJetIdx[1]));
       fillVariableWithValue( "jetDeepFlavourProbgAK8_j2",jetDeepFlavourProbgAK8->at(sortedJetIdx[1]));
       //dijet
       fillVariableWithValue( "Dijet_MassAK8", MJJAK8) ; //remember that here was AK8
       fillVariableWithValue( "CosThetaStarAK8", TMath::TanH( (AK8jets[0].Eta()-AK8jets[1].Eta())/2 )); 
       fillVariableWithValue( "deltaETAjjAK8", DeltaEtaJJAK8 ) ;
       fillVariableWithValue( "deltaPHIjjAK8", DeltaPhiJJAK8 ) ;
     }

     if( widejets.size() >= 1 ){
         fillVariableWithValue( "pTWJ_j1", widejets[0].Pt() );
         fillVariableWithValue( "etaWJ_j1", widejets[0].Eta());
	 //no cuts on these variables, just to store in output
         fillVariableWithValue( "massWJ_j1", widejets[0].M());
         fillVariableWithValue( "phiWJ_j1", widejets[0].Phi());
       }

     if( widejets.size() >= 2 ){
         fillVariableWithValue( "pTWJ_j2", widejets[1].Pt() );
         fillVariableWithValue( "etaWJ_j2", widejets[1].Eta());
	 fillVariableWithValue( "deltaETAjj", DeltaEtaJJWide ) ;
         fillVariableWithValue( "mjj", MJJWide ) ;
         fillVariableWithValue( "mjj_shiftJEC", MJJWide_shift ) ;
	 //no cuts on these variables, just to store in output
         fillVariableWithValue( "massWJ_j2", widejets[1].M());
         fillVariableWithValue( "phiWJ_j2", widejets[1].Phi());	
	 //dijet
         fillVariableWithValue( "CosThetaStarWJ", TMath::TanH( (widejets[0].Eta()-widejets[1].Eta())/2 )); 
	 fillVariableWithValue( "deltaPHIjj", DeltaPhiJJWide ) ;
       }
     //no cuts on these variables, just to store in output

     if(!isData){
       //Here i am implementing the strategy needed to calculate the scale factors for b tagging
       
       auto cset_wp=cset->at("UParTAK4_wp_values");
       auto cset_b=cset->at("UParTAK4_kinfit");
       //auto cset_light=cset->at("robustParticleTransformer_light");
       double sf_nt_1_m=1,sf_nt_2_m=1,sf_nt_1_l=1,sf_nt_2_l=1,sf_nt_1_t=1,sf_nt_2_t=1, sf_j1_l=1,sf_j2_l=1,sf_j1_m=1,sf_j2_m=1,sf_j1_t=1,sf_j2_t=1,eff=1,eff_nt=1,eff_2=1,eff_nt_2=1,eff_m=1,eff_nt_m=1,eff_2_m=1,eff_nt_2_m=1,eff_t=1,eff_nt_t=1,eff_2_t=1,eff_nt_2_t=1,tagged_m=0,tagged_l=0,tagged_t=0,tagged_m_2=0,tagged_l_2=0,tagged_t_2=0,loose=1,medium=1,tight=1,loose_medium=1,loose_tight=1,tight_medium=1;
       //       std::cout<<"Start: "<<std::endl;
       if( AK8jets.size() >=1 ){
	 //check if b/c
       	 if (hFlavourAK8->at(sortedJetIdx[0])==5){
	   if (jetUParTProbbAK8->at(sortedJetIdx[0]) >= 0.0246 || jetUParTProbbbAK8->at(sortedJetIdx[0]) >= 0.0246 || jetUParTProblepbAK8->at(sortedJetIdx[0]) >= 0.0246) {
	     tagged_l+=1;
	     //	     std::cout<<"Does it fail on command?: "<<std::endl;
	     //	     std::cout<<"hflav: "<<hFlavourAK8->at(sortedJetIdx[0])<<" eta "<<std::abs(AK8jets[0].Eta())<<" PT "<<AK8jets[0].Pt()<< std::endl;
	     sf_j1_l=cset_b->evaluate({std::string("central"),std::string("L"),hFlavourAK8->at(sortedJetIdx[0]),std::abs(AK8jets[0].Eta()),AK8jets[0].Pt()});
	     //	     std::cout<<"test for loose j1: cset: "<<sf_j1_l<<std::endl;
	   }
	   else sf_nt_1_l=cset_b->evaluate({std::string("central"),std::string("L"),hFlavourAK8->at(sortedJetIdx[0]),std::abs(AK8jets[0].Eta()),AK8jets[0].Pt()});
	   if (jetUParTProbbAK8->at(sortedJetIdx[0]) >= 0.1272 || jetUParTProbbbAK8->at(sortedJetIdx[0]) >= 0.1272 || jetUParTProblepbAK8->at(sortedJetIdx[0]) >= 0.1272) {
	     tagged_m+=1;
	     sf_j1_m=cset_b->evaluate({std::string("central"),std::string("M"),hFlavourAK8->at(sortedJetIdx[0]),std::abs(AK8jets[0].Eta()),AK8jets[0].Pt()});}
	   else sf_nt_1_m=cset_b->evaluate({std::string("central"),std::string("M"),hFlavourAK8->at(sortedJetIdx[0]),std::abs(AK8jets[0].Eta()),AK8jets[0].Pt()});
	   if (jetUParTProbbAK8->at(sortedJetIdx[0]) >= 0.4648 || jetUParTProbbbAK8->at(sortedJetIdx[0]) >= 0.4648 || jetUParTProblepbAK8->at(sortedJetIdx[0]) >= 0.4648) {
	     tagged_t+=1;
	     sf_j1_t=cset_b->evaluate({std::string("central"),std::string("T"),hFlavourAK8->at(sortedJetIdx[0]),std::abs(AK8jets[0].Eta()),AK8jets[0].Pt()});}
	   else sf_nt_1_t=cset_b->evaluate({std::string("central"),std::string("T"),hFlavourAK8->at(sortedJetIdx[0]),std::abs(AK8jets[0].Eta()),AK8jets[0].Pt()});	   
	 }
       }     
       if( AK8jets.size() >=2 ){
	 if (hFlavourAK8->at(sortedJetIdx[1])==5){
	   if (jetUParTProbbAK8->at(sortedJetIdx[1]) >= 0.0246 || jetUParTProbbbAK8->at(sortedJetIdx[1]) >= 0.0246 || jetUParTProblepbAK8->at(sortedJetIdx[1]) >= 0.0246) {
	     tagged_l_2+=1;
	     sf_j2_l=cset_b->evaluate({std::string("central"),std::string("L"),hFlavourAK8->at(sortedJetIdx[1]),std::abs(AK8jets[1].Eta()),AK8jets[1].Pt()});
	   }
	   else sf_nt_2_l=cset_b->evaluate({std::string("central"),std::string("L"),hFlavourAK8->at(sortedJetIdx[1]),std::abs(AK8jets[1].Eta()),AK8jets[1].Pt()});
	   if (jetUParTProbbAK8->at(sortedJetIdx[1]) >= 0.1272 || jetUParTProbbbAK8->at(sortedJetIdx[1]) >= 0.1272 || jetUParTProblepbAK8->at(sortedJetIdx[1]) >= 0.1272) {
	     tagged_m_2+=1;
	     sf_j2_m=cset_b->evaluate({std::string("central"),std::string("M"),hFlavourAK8->at(sortedJetIdx[1]),std::abs(AK8jets[1].Eta()),AK8jets[1].Pt()});}
	   else sf_nt_2_m=cset_b->evaluate({std::string("central"),std::string("M"),hFlavourAK8->at(sortedJetIdx[1]),std::abs(AK8jets[1].Eta()),AK8jets[1].Pt()});
	   if (jetUParTProbbAK8->at(sortedJetIdx[1]) >= 0.4648 || jetUParTProbbbAK8->at(sortedJetIdx[1]) >= 0.4648 || jetUParTProblepbAK8->at(sortedJetIdx[1]) >= 0.4648) {
	     tagged_t_2+=1;
	     sf_j2_t=cset_b->evaluate({std::string("central"),std::string("T"),hFlavourAK8->at(sortedJetIdx[1]),std::abs(AK8jets[1].Eta()),AK8jets[1].Pt()});}
	   else sf_nt_2_t=cset_b->evaluate({std::string("central"),std::string("T"),hFlavourAK8->at(sortedJetIdx[1]),std::abs(AK8jets[1].Eta()),AK8jets[1].Pt()});
	 }
       
       }
     
       if( AK8jets.size() >=2 ){
	 eff=tagged_l/AK8jets.size();
	 eff_m=tagged_m/AK8jets.size();
	 eff_t=tagged_t/AK8jets.size();
	 eff_2_t=tagged_t_2/AK8jets.size();
	 eff_2_m=tagged_m_2/AK8jets.size();
	 eff_2=tagged_l_2/AK8jets.size();      

	 eff_nt=(AK8jets.size()-tagged_l)/AK8jets.size();
	 eff_nt_m=(AK8jets.size()-tagged_m)/AK8jets.size();
	 eff_nt_t=(AK8jets.size()-tagged_t)/AK8jets.size();
	 eff_nt_2=(AK8jets.size()-tagged_l_2)/AK8jets.size();
	 eff_nt_2_t=(AK8jets.size()-tagged_t_2)/AK8jets.size();
	 eff_nt_2_m=(AK8jets.size()-tagged_m_2)/AK8jets.size();
	 bool l1=fabs(1-eff_nt)<1e-12;
	 bool m1=fabs(1-eff_nt_m)<1e-12;
	 bool t1=fabs(1-eff_nt_t)<1e-12;
	 bool l2=fabs(1-eff_nt_2)<1e-12;
	 bool m2=fabs(1-eff_nt_2_m)<1e-12;
	 bool t2=fabs(1-eff_nt_2_t)<1e-12;
	 
	 if ((eff==0 && eff_2==0)||(l1 && l2) ){ loose=1;}
	 else if (eff==0){loose=(sf_j2_l)*((1-(sf_nt_2_l*eff_nt_2))/(1-eff_nt_2));}
	 else if(eff_2==0){loose=(sf_j1_l)*((1-(sf_nt_1_l*eff_nt))/(1-eff_nt));}
	 else {loose=(sf_j1_l)*(sf_j2_l)*((1-(sf_nt_1_l*eff_nt))/(1-eff_nt))*((1-(sf_nt_2_l*eff_nt_2))/(1-eff_nt_2));}
	 if ((eff_m==0 && eff_2_m==0)||(m1 && m2)){ medium=1;}
	 else if (eff_m==0){medium=(sf_j2_m)*((1-(sf_nt_2_m*eff_nt_2_m))/(1-eff_nt_2_m));}
	 else if(eff_2_m==0){medium=(sf_j1_m)*((1-(sf_nt_1_m*eff_nt_m))/(1-eff_nt_m));}
	 else {medium=(sf_j1_m)*((1-(sf_nt_1_m*eff_nt_m))/(1-eff_nt_m))*(sf_j2_m)*((1-(sf_nt_2_m*eff_nt_2_m))/(1-eff_nt_2_m));} 
	 if ((eff_t==0 && eff_2_t==0)||(t1 && t2)){ tight=1;}
	 else if (eff_t==0){tight=(sf_j2_t)*((1-(sf_nt_2_t*eff_nt_2_t))/(1-eff_nt_2_t));}
	 else if(eff_2_t==0){tight=(sf_j1_t)*((1-(sf_nt_1_t*eff_nt_t))/(1-eff_nt_t));}
	 else {tight=(sf_j1_t)*((1-(sf_nt_1_t*eff_nt_t))/(1-eff_nt_t))*(sf_j2_t)*((1-(sf_nt_2_t*eff_nt_2_t))/(1-eff_nt_2_t));}
	 
	 
	 if ((eff_t==0 && eff_2_m==0)||(eff_2_t==0 && eff_m==0)){tight_medium=1;}	 
	 else if (((jetUParTProbbAK8->at(sortedJetIdx[0]) >= 0.4648) || (jetUParTProbbbAK8->at(sortedJetIdx[0]) >= 0.4648) || (jetUParTProblepbAK8->at(sortedJetIdx[0]) >= 0.4648)) && ((jetUParTProbbAK8->at(sortedJetIdx[1]) >= 0.1272) || (jetUParTProbbbAK8->at(sortedJetIdx[1]) >= 0.1272) || (jetUParTProblepbAK8->at(sortedJetIdx[1]) >= 0.1272))) { // TIght1 && medium 2
	   if (t1 || m2) {tight_medium=1;} // bad 1 t || bad 2 m
	   else  tight_medium=((sf_j2_m)*(sf_j1_t)*((1-(sf_nt_2_m*eff_nt_2_m))/(1-eff_nt_2_m))*((1-(sf_nt_1_t*eff_nt_t))/(1-eff_nt_t)));
	 }
	 else if (((jetUParTProbbAK8->at(sortedJetIdx[1]) >= 0.4648) || (jetUParTProbbbAK8->at(sortedJetIdx[1]) >= 0.4648) || (jetUParTProblepbAK8->at(sortedJetIdx[1]) >= 0.4648)) && ((jetUParTProbbAK8->at(sortedJetIdx[0]) >= 0.1272) || (jetUParTProbbbAK8->at(sortedJetIdx[0]) >= 0.1272) || (jetUParTProblepbAK8->at(sortedJetIdx[0]) >= 0.1272))) { //tight 2 && med 1
	   if (t2 || m1) {tight_medium=1;} //bad 2 t || bad 1 m
	   else tight_medium=((sf_j1_m)*(sf_j2_t)*((1-(sf_nt_1_m*eff_nt_m))/(1-eff_nt_m))*((1-(sf_nt_2_t*eff_nt_2_t))/(1-eff_nt_2_t)));	 
	 }	
	 
	 //loose medium
	 if ((eff==0 && eff_2_m==0)||(eff_2==0 && eff_m==0)){loose_medium=1;}
	 else if (((jetUParTProbbAK8->at(sortedJetIdx[0]) >= 0.0246) || (jetUParTProbbbAK8->at(sortedJetIdx[0]) >= 0.0246) || (jetUParTProblepbAK8->at(sortedJetIdx[0]) >= 0.0246)) && ((jetUParTProbbAK8->at(sortedJetIdx[1]) >= 0.1272) || (jetUParTProbbbAK8->at(sortedJetIdx[1]) >= 0.1272) || (jetUParTProblepbAK8->at(sortedJetIdx[1]) >= 0.1272))) { //med j2
	   if (l1 || m2) {loose_medium=1;}
	   else loose_medium=((sf_j2_m)*(sf_j1_l)*((1-(sf_nt_2_m*eff_nt_2_m))/(1-eff_nt_2_m))*((1-(sf_nt_1_l*eff_nt))/(1-eff_nt)));
	 }
	 else if (((jetUParTProbbAK8->at(sortedJetIdx[1]) >= 0.0246) || (jetUParTProbbbAK8->at(sortedJetIdx[1]) >= 0.0246) || (jetUParTProblepbAK8->at(sortedJetIdx[1]) >= 0.0246)) && ((jetUParTProbbAK8->at(sortedJetIdx[0]) >= 0.1272) || (jetUParTProbbbAK8->at(sortedJetIdx[0]) >= 0.1272) || (jetUParTProblepbAK8->at(sortedJetIdx[0]) >= 0.1272))) { //med j1
	   if (l2 || m1) {loose_medium=1;}
	   else loose_medium=((sf_j1_m)*(sf_j2_l)*((1-(sf_nt_1_m*eff_nt_m))/(1-eff_nt_m))*((1-(sf_nt_2_l*eff_nt_2))/(1-eff_nt_2)));	 
	 }	 	 	
	 //loose tight
	 if ((eff==0 && eff_2_t==0) || (eff_2==0 && eff_t==0)){loose_tight=1;}
	 else if (((jetUParTProbbAK8->at(sortedJetIdx[0]) >= 0.0246) || (jetUParTProbbbAK8->at(sortedJetIdx[0]) >= 0.0246) || (jetUParTProblepbAK8->at(sortedJetIdx[0]) >= 0.0246)) && ((jetUParTProbbAK8->at(sortedJetIdx[1]) >= 0.4648) || (jetUParTProbbbAK8->at(sortedJetIdx[1]) >= 0.4648) || (jetUParTProblepbAK8->at(sortedJetIdx[1]) >= 0.4648))) { //tight j2
	   if (l1 || t2) {loose_tight=1;}
	   else loose_tight=((sf_j2_t)*(sf_j1_l)*((1-(sf_nt_2_t*eff_nt_2_t))/(1-eff_nt_2_t))*((1-(sf_nt_1_l*eff_nt))/(1-eff_nt)));
	 }
	 else if (((jetUParTProbbAK8->at(sortedJetIdx[1]) >= 0.0246) || (jetUParTProbbbAK8->at(sortedJetIdx[1]) >= 0.0246) || (jetUParTProblepbAK8->at(sortedJetIdx[1]) >= 0.0246)) &&  ((jetUParTProbbAK8->at(sortedJetIdx[0]) >= 0.4648) || (jetUParTProbbbAK8->at(sortedJetIdx[0]) >= 0.4648) || (jetUParTProblepbAK8->at(sortedJetIdx[0]) >= 0.4648))) { //tight j1
	   if (l2 || t1) {loose_tight=1;}
	   else loose_tight=((sf_j1_t)*(sf_j2_l)*((1-(sf_nt_1_t*eff_nt_t))/(1-eff_nt_t))*((1-(sf_nt_2_l*eff_nt_2))/(1-eff_nt_2)));	 
	 }
       }
       if (std::isinf(loose)) {       std::cout<<"loose: "<<loose<<std::endl;}
       if (std::isinf(medium)) {       std::cout<<"medium: "<<medium<<std::endl;}
       if (std::isinf(tight)) {       std::cout<<"tight: "<<tight<<std::endl;}
       if (std::isinf(tight_medium)) {       std::cout<<"tight med: "<<tight_medium<<std::endl;}
       if (std::isinf(loose_medium)) {       std::cout<<"loose med: "<<loose_medium<<std::endl;}
       if (std::isinf(loose_tight)) {       std::cout<<"loose tight: "<<loose_tight<<std::endl;}
       
       
       fillVariableWithValue("scale_factor_loose",loose);
       fillVariableWithValue("scale_factor_medium",medium);
       fillVariableWithValue("scale_factor_tight",tight);
       fillVariableWithValue("scale_factor_tight_medium",tight_medium);
       fillVariableWithValue("scale_factor_loose_medium",loose_medium);
       fillVariableWithValue("scale_factor_loose_tight",loose_tight);
       fillVariableWithValue("trueVtx",PileupInteractions->at(idx_InTimeBX));
       
     }
     else if(isData)
       fillVariableWithValue("trueVtx",999);     
     
     fillVariableWithValue("MET",met);
     double METoverHTAK8=double(met/HTAK8);
     fillVariableWithValue("METoverHTAK8",METoverHTAK8);
     fillVariableWithValue("HTAK8",HTAK8);
     fillVariableWithValue("ptHat",ptHat);
     

     for(unsigned int i=0; i<triggerName->size(); i++){
        if( triggerName->at(i).compare(0,13,"HLT_PFHT780_v")==0 ) fillVariableWithValue("passHLT_PFHT780",triggerResult->at(i));
        if( triggerName->at(i).compare(0,13,"HLT_PFHT890_v")==0 ) fillVariableWithValue("passHLT_PFHT890",triggerResult->at(i));
        if( triggerName->at(i).compare(0,14,"HLT_PFHT1050_v")==0 ) fillVariableWithValue("passHLT_PFHT1050",triggerResult->at(i));
        if( triggerName->at(i).compare(0,14,"HLT_PFJet400_v")==0 ) fillVariableWithValue("passHLT_PFJet400",triggerResult->at(i));
        if( triggerName->at(i).compare(0,14,"HLT_PFJet450_v")==0 ) fillVariableWithValue("passHLT_PFJet450",triggerResult->at(i));
        if( triggerName->at(i).compare(0,14,"HLT_PFJet500_v")==0 ) fillVariableWithValue("passHLT_PFJet500",triggerResult->at(i));
        if( triggerName->at(i).compare(0,14,"HLT_PFJet550_v")==0 ) fillVariableWithValue("passHLT_PFJet550",triggerResult->at(i));
        if( triggerName->at(i).compare(0,10,"HLT_Mu50_v")==0 ) fillVariableWithValue("passHLT_Mu50",triggerResult->at(i));
        if( triggerName->at(i).compare(0,17,"HLT_AK8PFJet320_v")==0 ) fillVariableWithValue("passHLT_AK8PFJet320",triggerResult->at(i));
        if( triggerName->at(i).compare(0,17,"HLT_AK8PFJet400_v")==0 ) fillVariableWithValue("passHLT_AK8PFJet400",triggerResult->at(i));
        if( triggerName->at(i).compare(0,17,"HLT_AK8PFJet450_v")==0 ) fillVariableWithValue("passHLT_AK8PFJet450",triggerResult->at(i));
        if( triggerName->at(i).compare(0,17,"HLT_AK8PFJet500_v")==0 ) fillVariableWithValue("passHLT_AK8PFJet500",triggerResult->at(i));
        if( triggerName->at(i).compare(0,17,"HLT_AK8PFJet550_v")==0 ) fillVariableWithValue("passHLT_AK8PFJet550",triggerResult->at(i));
        if( triggerName->at(i).compare(0,24,"HLT_CaloJet500_NoJetID_v")==0 ) fillVariableWithValue("passHLT_CaloJet500_NoJetID",triggerResult->at(i));
        if( triggerName->at(i).compare(0,24,"HLT_CaloJet550_NoJetID_v")==0 ) fillVariableWithValue("passHLT_CaloJet550_NoJetID",triggerResult->at(i));
     }
  
     //Noise filters
     fillVariableWithValue("passFilter_goodVertices",passFilter_goodVertices);
     fillVariableWithValue("passFilter_HBHENoise",passFilter_HBHENoise);
     fillVariableWithValue("passFilter_HBHENoiseIso",passFilter_HBHENoiseIso);
     fillVariableWithValue("passFilter_globalSuperTightHalo2016",passFilter_globalSuperTightHalo2016);
     fillVariableWithValue("passFilter_EcalDeadCellTriggerPrimitive",passFilter_EcalDeadCellTriggerPrimitive);
     fillVariableWithValue("passFilter_BadPFMuon",passFilter_BadPFMuon);
     fillVariableWithValue("passFilter_BadPFMuonDz",passFilter_BadPFMuonDz);
     fillVariableWithValue("passFilter_BadChargedCandidate",passFilter_BadChargedCandidate);
     fillVariableWithValue("passFilter_eeBadSc",passFilter_eeBadSc);
     fillVariableWithValue("passFilter_ecalBadCalib",passFilter_ecalBadCalib); 
     fillVariableWithValue("passFilter_hfNoisyHits",passFilter_hfNoisyHits); 

     // Evaluate cuts (but do not apply them)
     evaluateCuts();

     bool fullAnalysis = ( passedCut("PassJSON")
			   && passedCut("nVtx") 
			   && passedCut("IdTight_j1")
			   && passedCut("IdTight_j2")
                           && getVariableValue("pTWJ_j1")  > getPreCutValue1("pT_PUPPI_WJ1_forTrig")
                           && getVariableValue("pTWJ_j2")  > getPreCutValue1("pT_PUPPI_WJ2_forTrig") 
                           && getVariableValue("etaWJ_j1") > getPreCutValue1("eta_PUPPI_WJ1_forTrig")
                           && getVariableValue("etaWJ_j1") < getPreCutValue2("eta_PUPPI_WJ1_forTrig")
                           && getVariableValue("etaWJ_j2") > getPreCutValue1("eta_PUPPI_WJ2_forTrig")
                           && getVariableValue("etaWJ_j2") < getPreCutValue2("eta_PUPPI_WJ2_forTrig")  
                           && getVariableValue("deltaETAjj")    < getPreCutValue1("Deta_WJJforTrig")

			);
        
     if (fullAnalysis)
     {

	 h_mjj_HLTpass[0] -> Fill(MJJWide); //noTrig
	 if(getVariableValue("passHLT_PFHT1050") == 1)           h_mjj_HLTpass[1] -> Fill(MJJWide);
	 if(getVariableValue("passHLT_PFJet550") == 1)           h_mjj_HLTpass[2] -> Fill(MJJWide);
	 if(getVariableValue("passHLT_Mu50") == 1)               h_mjj_HLTpass[3] -> Fill(MJJWide);
	 if(getVariableValue("passHLT_AK8PFJet550") == 1) 	 h_mjj_HLTpass[4] -> Fill(MJJWide);
	 if(getVariableValue("passHLT_CaloJet550_NoJetID") == 1) h_mjj_HLTpass[5] -> Fill(MJJWide);	

 	 if(getVariableValue("passHLT_PFHT1050") == 1 || getVariableValue("passHLT_PFJet550") == 1 ||  getVariableValue("passHLT_AK8PFJet550") == 1 || getVariableValue("passHLT_CaloJet550_NoJetID") == 1)             h_mjj_HLTpass[6] -> Fill(MJJWide);
     }

 
     // optional call to fill a skim with the full content of the input roottuple
     //if( passedCut("nJetFinal") ) fillSkimTree();
/*
     

	 //####################################################################################
	 //######################### BTAGGED PART OF THE ANALYSIS #############################
	 //####################################################################################
	 int njetsm = 0;
	 int njetst = 0;
	 
	 double evtWeightBtagM = 1.;
	 double evtWeightBtagT = 1.;
	 double evtWeightBtagMT = 1.;

	 int nExpBtag = 0;

	 std::vector<double> SFAK8M;
	 std::vector<double> SFAK8T;
	 std::vector<double> SFAK8MT;

	 //JET1 MEDIUM
	 if (getVariableValue("jetCSVAK8_j1") > getPreCutValue1("CSVv2M"))
	   {
	     ++njetsm;
	     if(!isData)
	       {
		 double tmpSF = breader_medium->eval_auto_bounds("central",
								 BTagEntry::FLAV_B,
								 AK8j1.Eta(),
								 AK8j1.Pt());
		 
		 SFAK8M.push_back(tmpSF);				  
		 SFAK8MT.push_back(tmpSF);
	       }
	   }
	 //JET2 MEDIUM
	 if (getVariableValue("jetCSVAK8_j2") > getPreCutValue1("CSVv2M"))
	   {
	     ++njetsm;
	     if(!isData)
	       {
		 
		 double tmpSF = breader_medium->eval_auto_bounds("central",
								 BTagEntry::FLAV_B,
								 AK8j2.Eta(),
								 AK8j2.Pt());
		 SFAK8M.push_back(tmpSF);
		 SFAK8MT.push_back(tmpSF);
	       }
	   }

	 //JET1 TIGHT
	 if (getVariableValue("jetCSVAK8_j1") > getPreCutValue1("CSVv2T"))
	   {
	     ++njetst;
	     if(!isData)
	       {
		 double tmpSF =  breader_tight->eval_auto_bounds("central",
								 BTagEntry::FLAV_B,
								 AK8j1.Eta(),
								 AK8j1.Pt());

		 SFAK8T.push_back(tmpSF);
		 SFAK8MT[0] = tmpSF;
	       }
	   }
	 //JET2 TIGHT
	 if (getVariableValue("jetCSVAK8_j2") > getPreCutValue1("CSVv2T"))
	   {
	     ++njetst;
	     if(!isData)
	       {
		 double tmpSF = breader_tight->eval_auto_bounds("central",
								BTagEntry::FLAV_B,
								AK8j2.Eta(),
								AK8j2.Pt());

		 SFAK8T.push_back(tmpSF);
		 SFAK8MT[1] = tmpSF;
	       }
	   }



	 if(!isData)
	   {
	     if(hFlavourAK8->at(sortedJetIdx[0]) == 5)
	       ++nExpBtag;
	     if(hFlavourAK8->at(sortedJetIdx[1]) == 5)
	       ++nExpBtag;

	     evtWeightBtagM = bTagEventWeight(SFAK8M, nExpBtag);
	     evtWeightBtagT = bTagEventWeight(SFAK8T, nExpBtag);
	     evtWeightBtagMT = bTagEventWeight(SFAK8MT, nExpBtag);
	   }


	 //fill histos in categories and save branches
	 double MJJWide_M =  MJJWide * evtWeightBtagM;
	 double MJJWide_T =  MJJWide * evtWeightBtagT;
	 double MJJWide_MT =  MJJWide * evtWeightBtagMT;

	 if (njetsm == 1)
	   h_mjj_btag1_m->Fill(MJJWide_M);
	 else if (njetsm == 2)
	   h_mjj_btag2_m->Fill(MJJWide_M);
	 else
	   h_mjj_btag0_m->Fill(MJJWide_M);

	 if (njetst == 1)
	   h_mjj_btag1_t->Fill(MJJWide_T);
	 else if (njetst == 2)
	   h_mjj_btag2_t->Fill(MJJWide_T);
	 else
	   h_mjj_btag0_t->Fill(MJJWide_T);

	 if (njetsm == 2 && njetst==1)
	   {
	     h_mjj_btag2_mt->Fill(MJJWide_MT);
	     if(isData && triggerResult->size()>10) // only run on data  
	       fillTriggerPlots(h_mjj_HLTpass_bb,MJJWide);
	   }
	 else if (njetst==1)
	   h_mjj_btag1_mt->Fill(MJJWide_MT);
	 else
	   h_mjj_btag0_mt->Fill(MJJWide_MT);



	 fillVariableWithValue("nBjets_m",njetsm);
	 fillVariableWithValue("nBjets_t",njetst);
	 fillVariableWithValue("evtBweight_m",evtWeightBtagM);
	 fillVariableWithValue("evtBweight_t",evtWeightBtagT);
	 fillVariableWithValue("evtBweight_mt",evtWeightBtagMT);
	 


       } //end full analysis including deltaEta
*/
   
     // optional call to fill a skim with a subset of the variables defined in the cutFile (use flag SAVE)
//     if( passedAllPreviousCuts("mjj") && passedCut("mjj") ) 
 //      {
	 fillReducedSkimTree();

	 // ===== Take a look at this =====
	 // //Example on how to investigate quickly the data
	 // if(getVariableValue("mjj")>4000)
	 //   {
	 //     //fast creation and filling of histograms
	 //     CreateAndFillUserTH1D("h_dphijj_mjjgt4000", 100, 0, 3.15, getVariableValue("deltaPHIjj"));
	 //     CreateAndFillUserTH1D("h_htAK8_mjjgt4000", 1000, 0, 10000, getVariableValue("HTAK8"));
	 //     CreateAndFillUserTH1D("h_nvtx_mjjgt4000", 31, -0.5, 30.5, getVariableValue("nVtx"));
	 //   }

//     }

     // ===== Example of mjj spectrum after HLT selection =====
     // if( passedAllPreviousCuts("mjj") )
     //   {
     // 	 if(getVariableValue("passHLT")>0)
     // 	   {
     // 	     //fast creation and filling of histograms
     // 	     CreateAndFillUserTH1D("h_mjj_passHLT", getHistoNBins("mjj"), getHistoMin("mjj"), getHistoMax("mjj"), getVariableValue("mjj"));
     // 	   }
     //   }

     // reject events that did not pass level 0 cuts
     //if( !passedCut("0") ) continue;
     // ......
     
     // reject events that did not pass level 1 cuts
     //if( !passedCut("1") ) continue;
     // ......

     // reject events that did not pass the full cut list
     //if( !passedCut("all") ) continue;
     // ......

     // if( widejets.size() >= 2) {
     //  h_nJetFinal->Fill(widejets.size());
     //  h_DijetMass->Fill(wdijet.M());
     //  h_pT1stJet->Fill(widejets[0].Pt());
     //  h_pT2ndJet->Fill(widejets[1].Pt());
     //  h_eta1stJet->Fill(widejets[0].Eta());
     //  h_eta2ndJet->Fill(widejets[1].Eta());
     // }
     ////////////////////// User's code ends here ///////////////////////

   } // End loop over events

   //////////write histos 
   for (int i=0; i<7; i++){//
     h_mjj_HLTpass[i]->Write();
     //h_mjj_HLTpass_bb[i]->Write();
   }
/*
   //write histos for btagged analysis
   h_mjj_btag0_m->Write();
   h_mjj_btag1_m->Write();
   h_mjj_btag2_m->Write();
   h_mjj_btag0_t->Write();
   h_mjj_btag1_t->Write();
   h_mjj_btag2_t->Write();
   h_mjj_btag0_mt->Write();
   h_mjj_btag1_mt->Write();
   h_mjj_btag2_mt->Write();
*/

   // h_nVtx->Write();
   // h_trueVtx->Write();
   // h_nJetFinal->Write();
   // h_pT1stJet->Write();
   // h_pT2ndJet->Write();
   // h_DijetMass->Write();
   // h_eta1stJet->Write();
   // h_eta2ndJet->Write();

   // //pT of both jets, to be built using the histograms produced automatically by baseClass
   // TH1F * h_pTJets = new TH1F ("h_pTJets","", getHistoNBins("pT1stJet"), getHistoMin("pT1stJet"), getHistoMax("pT1stJet"));
   // h_pTJets->Add( & getHisto_noCuts_or_skim("pT1stJet") ); // all histos can be retrieved, see other getHisto_xxxx methods in baseClass.h
   // h_pTJets->Add( & getHisto_noCuts_or_skim("pT2ndJet") );
   // //one could also do:  *h_pTJets = getHisto_noCuts_or_skim("pT1stJet") + getHisto_noCuts_or_skim("pT2ndJet");
   // h_pTJets->Write();
   // //one could also do:   const TH1F& h = getHisto_noCuts_or_skim// and use h

   std::cout << "analysisClass::Loop() ends" <<std::endl;   
}

/*

// ------------ method that calculates the event weight based on the number of b-tagged jets in MC and the expected number of b-tags among the two leading jets  ------------
double
analysisClass::bTagEventWeight(const vector<double>& SFsForBTaggedJets, const unsigned int nBTags)
{
  if( SFsForBTaggedJets.size() > 2 )
    {
      std::cout << "Only two leading jets are considered. Hence, the number of b-tagged jets cannot exceed 2.";
      return 1;
    }
  if( nBTags > 2 )
    {
      std::cout << "Only two leading jets are considered. Hence, the number of b-tags cannot exceed 2.";
      return 1;
    }
*/
  /*
    ##################################################################
    Event weight matrix:
    ------------------------------------------------------------------
    nBTags\b-tagged jets  |    0        1             2
    ------------------------------------------------------------------
      0                   |    1      1-SF      (1-SF1)(1-SF2)
                          |
      1                   |    0       SF    SF1(1-SF2)+(1-SF1)SF2
                          |
      2                   |    0        0           SF1SF2
    ##################################################################
  */
  /*
  if( nBTags > SFsForBTaggedJets.size() ) return 0;

  if( nBTags==0 && SFsForBTaggedJets.size()==0 ) return 1;

  double weight = 0;

  if( SFsForBTaggedJets.size()==1 )
    {
      double SF = SFsForBTaggedJets.at(0);

      for( unsigned int i=0; i<=1; ++i )
	{
	  if( i != nBTags ) continue;

	  weight += pow(SF,i)*pow(1-SF,1-i);
	}
    }
  else if( SFsForBTaggedJets.size()==2 )
    {
      double SF1 = SFsForBTaggedJets.at(0);
      double SF2 = SFsForBTaggedJets.at(1);
    
      for( unsigned int i=0; i<=1; ++i )
	{
	  for( unsigned int j=0; j<=1; ++j )
	    {
	      if( (i+j) != nBTags ) continue;

	      weight += pow(SF1,i)*pow(1-SF1,1-i)*pow(SF2,j)*pow(1-SF2,1-j);
	    }
	}
    }
  return weight;
}
*/
/*
void
analysisClass::fillTriggerPlots(TH1F* h_mjj_HLTpass[], double MJJWide) {//change this 11/7/2017

if(triggerResult->at(triggerMap_.find("HLT_PFHT1050_v*")->second)) h_mjj_HLTpass[1] -> Fill(MJJWide);


if(triggerResult->at(triggerMap_.find("HLT_PFJet550_v*")->second)) h_mjj_HLTpass[2] -> Fill(MJJWide);

if(triggerResult->at(triggerMap_.find("HLT_Mu50_v*")->second)) h_mjj_HLTpass[3] -> Fill(MJJWide);

if(triggerResult->at(triggerMap_.find("HLT_AK8PFJet550_v*")->second)) h_mjj_HLTpass[4] -> Fill(MJJWide);
if(triggerResult->at(triggerMap_.find("HLT_CaloJet550_NoJetID_v*")->second)) h_mjj_HLTpass[5] -> Fill(MJJWide);

*/



//all currently unprescaled triggers
/*

if ( triggerResult->at(triggerMap_.find("HLT_AK8PFJet550_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_AK8PFJet500_v*")->second) ||    
       triggerResult->at(triggerMap_.find("HLT_AK8PFJet450_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_AK8PFJet400_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFJet550_v*")->second) ||
        triggerResult->at(triggerMap_.find("HLT_PFJet500_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFJet450_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFHT1050_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_CaloJet500_NoJetID_v*")->second) ||
triggerResult->at(triggerMap_.find("HLT_CaloJet550_NoJetID_v*")->second)
       
     )  h_mjj_HLTpass[12] -> Fill(MJJWide);
*/
/*

//or of expected unprescaled triggers
if ( triggerResult->at(triggerMap_.find("HLT_AK8PFJet550_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFJet550_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFHT1050_v*")->second) ||
triggerResult->at(triggerMap_.find("HLT_CaloJet550_NoJetID_v*")->second)
       
     )  h_mjj_HLTpass[6] -> Fill(MJJWide);



if(triggerResult->at(triggerMap_.find("HLT_PFHT1050_v*")->second) &&!( triggerResult->at(triggerMap_.find("HLT_AK8PFJet550_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFJet550_v*")->second) ||
triggerResult->at(triggerMap_.find("HLT_CaloJet550_NoJetID_v*")->second)
       
     )) h_mjj_HLTpass[7] -> Fill(MJJWide);



if(triggerResult->at(triggerMap_.find("HLT_PFJet550_v*")->second) &&!( triggerResult->at(triggerMap_.find("HLT_AK8PFJet550_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFHT1050_v*")->second) ||
triggerResult->at(triggerMap_.find("HLT_CaloJet550_NoJetID_v*")->second)
       
     )) h_mjj_HLTpass[8] -> Fill(MJJWide);



if(triggerResult->at(triggerMap_.find("HLT_AK8PFJet550_v*")->second) &&!(
       triggerResult->at(triggerMap_.find("HLT_PFJet550_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFHT1050_v*")->second) ||
triggerResult->at(triggerMap_.find("HLT_CaloJet550_NoJetID_v*")->second)
       
     ) ) h_mjj_HLTpass[9] -> Fill(MJJWide);


if(triggerResult->at(triggerMap_.find("HLT_CaloJet550_NoJetID_v*")->second) &&!( triggerResult->at(triggerMap_.find("HLT_AK8PFJet550_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFJet550_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFHT1050_v*")->second)
       
     ) ) h_mjj_HLTpass[10] -> Fill(MJJWide);

if ( triggerResult->at(triggerMap_.find("HLT_AK8PFJet550_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFHT1050_v*")->second) 
       
     )  h_mjj_HLTpass[11] -> Fill(MJJWide);

if ( 
       triggerResult->at(triggerMap_.find("HLT_PFJet550_v*")->second) ||
       triggerResult->at(triggerMap_.find("HLT_PFHT1050_v*")->second) 
     )  h_mjj_HLTpass[12] -> Fill(MJJWide);


if ( 
       triggerResult->at(triggerMap_.find("HLT_PFHT1050_v*")->second) ||
triggerResult->at(triggerMap_.find("HLT_CaloJet550_NoJetID_v*")->second)
       
     )  h_mjj_HLTpass[13] -> Fill(MJJWide);




}


*/

  

