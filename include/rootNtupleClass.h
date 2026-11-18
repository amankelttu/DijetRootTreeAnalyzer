//////////////////////////////////////////////////////////
// This class has been automatically generated on
// Thu Jul 10 18:04:53 2025 by ROOT version 6.32.11
// from TChain dijets/events/
//////////////////////////////////////////////////////////

#ifndef rootNtupleClass_h
#define rootNtupleClass_h

//// Lines added by make_rootNtupleClass.sh - BEGIN 
#include <vector> 
using namespace std; 
//// Lines added by make_rootNtupleClass.sh - END 

#include <TROOT.h>
#include <TChain.h>
#include <TFile.h>

// Header file for the classes stored in the TTree if any.
#include "vector"
#include "vector"
#include "vector"
#include "vector"

class rootNtupleClass {
public :
   TTree          *fChain;   //!pointer to the analyzed TTree or TChain
   Int_t           fCurrent; //!current Tree number in a TChain

// Fixed size dimensions of array or collections stored in the TTree if any.
   static constexpr Int_t kMaxrun = 1;
   static constexpr Int_t kMaxevt = 1;
   static constexpr Int_t kMaxlumi = 1;
   static constexpr Int_t kMaxnVtx = 1;
   static constexpr Int_t kMaxrho = 1;
   static constexpr Int_t kMaxmet = 1;
   static constexpr Int_t kMaxmetSig = 1;
   static constexpr Int_t kMaxmetphi = 1;
   static constexpr Int_t kMaxnJetsAK4 = 1;
   static constexpr Int_t kMaxhtAK4 = 1;
   static constexpr Int_t kMaxmjjAK4 = 1;
   static constexpr Int_t kMaxdEtajjAK4 = 1;
   static constexpr Int_t kMaxdPhijjAK4 = 1;
   static constexpr Int_t kMaxnJetsAK8 = 1;
   static constexpr Int_t kMaxhtAK8 = 1;
   static constexpr Int_t kMaxmjjAK8 = 1;
   static constexpr Int_t kMaxdEtajjAK8 = 1;
   static constexpr Int_t kMaxdPhijjAK8 = 1;
   static constexpr Int_t kMaxpassFilter_goodVertices = 1;
   static constexpr Int_t kMaxpassFilter_globalSuperTightHalo2016 = 1;
   static constexpr Int_t kMaxpassFilter_HBHENoise = 1;
   static constexpr Int_t kMaxpassFilter_HBHENoiseIso = 1;
   static constexpr Int_t kMaxpassFilter_EcalDeadCellTriggerPrimitive = 1;
   static constexpr Int_t kMaxpassFilter_BadPFMuon = 1;
   static constexpr Int_t kMaxpassFilter_BadPFMuonDz = 1;
   static constexpr Int_t kMaxpassFilter_BadChargedCandidate = 1;
   static constexpr Int_t kMaxpassFilter_eeBadSc = 1;
   static constexpr Int_t kMaxpassFilter_ecalBadCalib = 1;
   static constexpr Int_t kMaxpassFilter_hfNoisyHits = 1;
   static constexpr Int_t kMaxpassL1_Initial_bx0_473 = 1;
   static constexpr Int_t kMaxpass_bx1 = 1;
   static constexpr Int_t kMaxFlag_IsUnprefirable = 1;
   static constexpr Int_t kMaxFlag_NotAffectedByPrefire = 1;
   static constexpr Int_t kMaxptHat = 1;
   static constexpr Int_t kMaxprocessID = 1;
   static constexpr Int_t kMaxweight = 1;
   static constexpr Int_t kMaxnGenJetsAK4 = 1;

   // Declaration of leaf types
   Int_t           runNo;
   Long64_t        evtNo;
   Int_t           lumi;
   Int_t           nvtx;
   Float_t         rho;
   Float_t         met;
   Float_t         metSig;
   Float_t         metphi;
   Int_t           nJetsAK4;
   Float_t         htAK4;
   Float_t         mjjAK4;
   Float_t         dEtajjAK4;
   Float_t         dPhijjAK4;
   Int_t           nJetsAK8;
   Float_t         htAK8;
   Float_t         mjjAK8;
   Float_t         dEtajjAK8;
   Float_t         dPhijjAK8;
   vector<float>   *jetPtAK4;
   vector<float>   *jetJecAK4;
   vector<float>   *jetEtaAK4;
   vector<float>   *jetPhiAK4;
   vector<float>   *jetMassAK4;
   vector<float>   *jetEnergyAK4;
   vector<float>   *jetEnergyPFAK4;
   vector<float>   *jetAreaAK4;
   vector<float>   *jetProbbAK4;
   vector<float>   *jetProbbbAK4;
   vector<float>   *jetProblepbAK4;
   vector<float>   *jetProbcAK4;
   vector<float>   *jetProbudsAK4;
   vector<float>   *jetProbgAK4;
   vector<int>     *pFlavourAK4;
   vector<int>     *hFlavourAK4;
   vector<float>   *jetChfAK4;
   vector<float>   *jetNhfAK4;
   vector<float>   *jetPhfAK4;
   vector<float>   *jetMufAK4;
   vector<float>   *jetElfAK4;
   vector<float>   *jetNemfAK4;
   vector<float>   *jetCemfAK4;
   vector<float>   *jetHf_hfAK4;
   vector<float>   *jetHf_emfAK4;
   vector<float>   *jetHofAK4;
   vector<int>     *idTAK4;
   vector<int>     *chHadMultAK4;
   vector<int>     *chMultAK4;
   vector<int>     *neHadMultAK4;
   vector<int>     *neMultAK4;
   vector<int>     *phoMultAK4;
   vector<float>   *jetPtAK4matchCaloJet;
   vector<float>   *jetEmfAK4matchCaloJet;
   vector<float>   *jetPtAK8;
   vector<float>   *jetJecAK8;
   vector<float>   *jetEtaAK8;
   vector<float>   *jetPhiAK8;
   vector<float>   *jetMassAK8;
   vector<float>   *jetEnergyAK8;
   vector<float>   *jetAreaAK8;
   vector<float>   *jetUParTProbbAK8;
   vector<float>   *jetUParTProbbbAK8;
   vector<float>   *jetUParTProblepbAK8;
   vector<float>   *jetUParTProbcAK8;
   vector<float>   *jetUParTProbuAK8;
   vector<float>   *jetUParTProbdAK8;
   vector<float>   *jetUParTProbsAK8;
   vector<float>   *jetUParTProbgAK8;
   vector<float>   *jetUParTV1ProbbAK8;
   vector<float>   *jetUParTV1ProbbbAK8;
   vector<float>   *jetUParTV1ProblepbAK8;
   vector<float>   *jetUParTV1ProbcAK8;
   vector<float>   *jetUParTV1ProbuAK8;
   vector<float>   *jetUParTV1ProbdAK8;
   vector<float>   *jetUParTV1ProbsAK8;
   vector<float>   *jetUParTV1ProbgAK8;
   vector<float>   *jetParTProbbAK8;
   vector<float>   *jetParTProbbbAK8;
   vector<float>   *jetParTProblepbAK8;
   vector<float>   *jetParTProbcAK8;
   vector<float>   *jetParTProbudsAK8;
   vector<float>   *jetParTProbgAK8;
   vector<float>   *jetParticleNetProbbAK8;
   vector<float>   *jetParticleNetProbcAK8;
   vector<float>   *jetParticleNetProbudsAK8;
   vector<float>   *jetParticleNetProbgAK8;
   vector<float>   *jetParticleNetFromMiniAODAK4PuppiCentralProbbAK8;
   vector<float>   *jetParticleNetFromMiniAODAK4PuppiCentralProbcAK8;
   vector<float>   *jetParticleNetFromMiniAODAK4PuppiCentralProbudsAK8;
   vector<float>   *jetParticleNetFromMiniAODAK4PuppiCentralProbgAK8;
   vector<float>   *jetDeepCsvProbbAK8;
   vector<float>   *jetDeepCsvProbbbAK8;
   vector<float>   *jetDeepCsvProbcAK8;
   vector<float>   *jetDeepCsvProbudsgAK8;
   vector<float>   *jetDeepFlavourProbbAK8;
   vector<float>   *jetDeepFlavourProbbbAK8;
   vector<float>   *jetDeepFlavourProblepbAK8;
   vector<float>   *jetDeepFlavourProbcAK8;
   vector<float>   *jetDeepFlavourProbudsAK8;
   vector<float>   *jetDeepFlavourProbgAK8;
   vector<int>     *pFlavourAK8;
   vector<int>     *hFlavourAK8;
   vector<float>   *jetChfAK8;
   vector<float>   *jetNhfAK8;
   vector<float>   *jetPhfAK8;
   vector<float>   *jetMufAK8;
   vector<float>   *jetElfAK8;
   vector<float>   *jetNemfAK8;
   vector<float>   *jetCemfAK8;
   vector<float>   *jetHf_hfAK8;
   vector<float>   *jetHf_emfAK8;
   vector<float>   *jetHofAK8;
   vector<int>     *idTAK8;
   vector<int>     *chHadMultAK8;
   vector<int>     *chMultAK8;
   vector<float>   *neHadMultAK8;
   vector<float>   *neMultAK8;
   vector<float>   *phoMultAK8;
   vector<bool>    *triggerResult;
   vector<string>  *triggerName;
   Bool_t          passFilter_goodVertices;
   Bool_t          passFilter_globalSuperTightHalo2016;
   Bool_t          passFilter_HBHENoise;
   Bool_t          passFilter_HBHENoiseIso;
   Bool_t          passFilter_EcalDeadCellTriggerPrimitive;
   Bool_t          passFilter_BadPFMuon;
   Bool_t          passFilter_BadPFMuonDz;
   Bool_t          passFilter_BadChargedCandidate;
   Bool_t          passFilter_eeBadSc;
   Bool_t          passFilter_ecalBadCalib;
   Bool_t          passFilter_hfNoisyHits;
   Bool_t          passL1_Initial_bx0_473;
   Bool_t          pass_bx1;
   Bool_t          Flag_IsUnprefirable;
   Bool_t          Flag_NotAffectedByPrefire;
   vector<float>   *npu;
   vector<int>     *PileupInteractions;
   vector<int>     *PileupOriginBX;
   Float_t         ptHat;
   Int_t           processID;
   Float_t         weight;
   Int_t           nGenJetsAK4;
   vector<float>   *jetPtGenAK4;
   vector<float>   *jetEtaGenAK4;
   vector<float>   *jetPhiGenAK4;
   vector<float>   *jetMassGenAK4;
   vector<float>   *jetEnergyGenAK4;

   // List of branches
   TBranch        *b_run_;   //!
   TBranch        *b_evt_;   //!
   TBranch        *b_lumi_;   //!
   TBranch        *b_nVtx_;   //!
   TBranch        *b_rho_;   //!
   TBranch        *b_met_;   //!
   TBranch        *b_metSig_;   //!
   TBranch        *b_metphi_;   //!
   TBranch        *b_nJetsAK4_;   //!
   TBranch        *b_htAK4_;   //!
   TBranch        *b_mjjAK4_;   //!
   TBranch        *b_dEtajjAK4_;   //!
   TBranch        *b_dPhijjAK4_;   //!
   TBranch        *b_nJetsAK8_;   //!
   TBranch        *b_htAK8_;   //!
   TBranch        *b_mjjAK8_;   //!
   TBranch        *b_dEtajjAK8_;   //!
   TBranch        *b_dPhijjAK8_;   //!
   TBranch        *b_jetPtAK4;   //!
   TBranch        *b_jetJecAK4;   //!
   TBranch        *b_jetEtaAK4;   //!
   TBranch        *b_jetPhiAK4;   //!
   TBranch        *b_jetMassAK4;   //!
   TBranch        *b_jetEnergyAK4;   //!
   TBranch        *b_jetEnergyPFAK4;   //!
   TBranch        *b_jetAreaAK4;   //!
   TBranch        *b_jetProbbAK4;   //!
   TBranch        *b_jetProbbbAK4;   //!
   TBranch        *b_jetProblepbAK4;   //!
   TBranch        *b_jetProbcAK4;   //!
   TBranch        *b_jetProbudsAK4;   //!
   TBranch        *b_jetProbgAK4;   //!
   TBranch        *b_pFlavourAK4;   //!
   TBranch        *b_hFlavourAK4;   //!
   TBranch        *b_jetChfAK4;   //!
   TBranch        *b_jetNhfAK4;   //!
   TBranch        *b_jetPhfAK4;   //!
   TBranch        *b_jetMufAK4;   //!
   TBranch        *b_jetElfAK4;   //!
   TBranch        *b_jetNemfAK4;   //!
   TBranch        *b_jetCemfAK4;   //!
   TBranch        *b_jetHf_hfAK4;   //!
   TBranch        *b_jetHf_emfAK4;   //!
   TBranch        *b_jetHofAK4;   //!
   TBranch        *b_idTAK4;   //!
   TBranch        *b_chHadMultAK4;   //!
   TBranch        *b_chMultAK4;   //!
   TBranch        *b_neHadMultAK4;   //!
   TBranch        *b_neMultAK4;   //!
   TBranch        *b_phoMultAK4;   //!
   TBranch        *b_jetPtAK4matchCaloJet;   //!
   TBranch        *b_jetEmfAK4matchCaloJet;   //!
   TBranch        *b_jetPtAK8;   //!
   TBranch        *b_jetJecAK8;   //!
   TBranch        *b_jetEtaAK8;   //!
   TBranch        *b_jetPhiAK8;   //!
   TBranch        *b_jetMassAK8;   //!
   TBranch        *b_jetEnergyAK8;   //!
   TBranch        *b_jetAreaAK8;   //!
   TBranch        *b_jetUParTProbbAK8;   //!
   TBranch        *b_jetUParTProbbbAK8;   //!
   TBranch        *b_jetUParTProblepbAK8;   //!
   TBranch        *b_jetUParTProbcAK8;   //!
   TBranch        *b_jetUParTProbuAK8;   //!
   TBranch        *b_jetUParTProbdAK8;   //!
   TBranch        *b_jetUParTProbsAK8;   //!
   TBranch        *b_jetUParTProbgAK8;   //!
   TBranch        *b_jetUParTV1ProbbAK8;   //!
   TBranch        *b_jetUParTV1ProbbbAK8;   //!
   TBranch        *b_jetUParTV1ProblepbAK8;   //!
   TBranch        *b_jetUParTV1ProbcAK8;   //!
   TBranch        *b_jetUParTV1ProbuAK8;   //!
   TBranch        *b_jetUParTV1ProbdAK8;   //!
   TBranch        *b_jetUParTV1ProbsAK8;   //!
   TBranch        *b_jetUParTV1ProbgAK8;   //!
   TBranch        *b_jetParTProbbAK8;   //!
   TBranch        *b_jetParTProbbbAK8;   //!
   TBranch        *b_jetParTProblepbAK8;   //!
   TBranch        *b_jetParTProbcAK8;   //!
   TBranch        *b_jetParTProbudsAK8;   //!
   TBranch        *b_jetParTProbgAK8;   //!
   TBranch        *b_jetParticleNetProbbAK8;   //!
   TBranch        *b_jetParticleNetProbcAK8;   //!
   TBranch        *b_jetParticleNetProbudsAK8;   //!
   TBranch        *b_jetParticleNetProbgAK8;   //!
   TBranch        *b_jetParticleNetFromMiniAODAK4PuppiCentralProbbAK8;   //!
   TBranch        *b_jetParticleNetFromMiniAODAK4PuppiCentralProbcAK8;   //!
   TBranch        *b_jetParticleNetFromMiniAODAK4PuppiCentralProbudsAK8;   //!
   TBranch        *b_jetParticleNetFromMiniAODAK4PuppiCentralProbgAK8;   //!
   TBranch        *b_jetDeepCsvProbbAK8;   //!
   TBranch        *b_jetDeepCsvProbbbAK8;   //!
   TBranch        *b_jetDeepCsvProbcAK8;   //!
   TBranch        *b_jetDeepCsvProbudsgAK8;   //!
   TBranch        *b_jetDeepFlavourProbbAK8;   //!
   TBranch        *b_jetDeepFlavourProbbbAK8;   //!
   TBranch        *b_jetDeepFlavourProblepbAK8;   //!
   TBranch        *b_jetDeepFlavourProbcAK8;   //!
   TBranch        *b_jetDeepFlavourProbudsAK8;   //!
   TBranch        *b_jetDeepFlavourProbgAK8;   //!
   TBranch        *b_pFlavourAK8;   //!
   TBranch        *b_hFlavourAK8;   //!
   TBranch        *b_jetChfAK8;   //!
   TBranch        *b_jetNhfAK8;   //!
   TBranch        *b_jetPhfAK8;   //!
   TBranch        *b_jetMufAK8;   //!
   TBranch        *b_jetElfAK8;   //!
   TBranch        *b_jetNemfAK8;   //!
   TBranch        *b_jetCemfAK8;   //!
   TBranch        *b_jetHf_hfAK8;   //!
   TBranch        *b_jetHf_emfAK8;   //!
   TBranch        *b_jetHofAK8;   //!
   TBranch        *b_idTAK8;   //!
   TBranch        *b_chHadMultAK8;   //!
   TBranch        *b_chMultAK8;   //!
   TBranch        *b_neHadMultAK8;   //!
   TBranch        *b_neMultAK8;   //!
   TBranch        *b_phoMultAK8;   //!
   TBranch        *b_triggerResult;   //!
   TBranch        *b_triggerName;   //!
   TBranch        *b_passFilter_goodVertices_;   //!
   TBranch        *b_passFilter_globalSuperTightHalo2016_;   //!
   TBranch        *b_passFilter_HBHENoise_;   //!
   TBranch        *b_passFilter_HBHENoiseIso_;   //!
   TBranch        *b_passFilter_EcalDeadCellTriggerPrimitive_;   //!
   TBranch        *b_passFilter_BadPFMuon_;   //!
   TBranch        *b_passFilter_BadPFMuonDz_;   //!
   TBranch        *b_passFilter_BadChargedCandidate_;   //!
   TBranch        *b_passFilter_eeBadSc_;   //!
   TBranch        *b_passFilter_ecalBadCalib_;   //!
   TBranch        *b_passFilter_hfNoisyHits_;   //!
   TBranch        *b_passL1_Initial_bx0_473_;   //!
   TBranch        *b_pass_bx1_;   //!
   TBranch        *b_Flag_IsUnprefirable_;   //!
   TBranch        *b_Flag_NotAffectedByPrefire_;   //!
   TBranch        *b_npu;   //!
   TBranch        *b_PileupInteractions;   //!
   TBranch        *b_PileupOriginBX;   //!
   TBranch        *b_ptHat_;   //!
   TBranch        *b_processID_;   //!
   TBranch        *b_weight_;   //!
   TBranch        *b_nGenJetsAK4_;   //!
   TBranch        *b_jetPtGenAK4;   //!
   TBranch        *b_jetEtaGenAK4;   //!
   TBranch        *b_jetPhiGenAK4;   //!
   TBranch        *b_jetMassGenAK4;   //!
   TBranch        *b_jetEnergyGenAK4;   //!

   rootNtupleClass(TTree *tree=0);
   virtual ~rootNtupleClass();
   virtual Int_t    Cut(Long64_t entry);
   virtual Int_t    GetEntry(Long64_t entry);
   virtual Long64_t LoadTree(Long64_t entry);
   virtual void     Init(TTree *tree);
   virtual void     Loop();
   virtual bool     Notify();
   virtual void     Show(Long64_t entry = -1);
};

#endif

#ifdef rootNtupleClass_cxx
rootNtupleClass::rootNtupleClass(TTree *tree) : fChain(0) 
{
// if parameter tree is not specified (or zero), connect the file
// used to generate this class and read the Tree.
   if (tree == 0) {

#ifdef SINGLE_TREE
      // The following code should be used if you want this class to access
      // a single tree instead of a chain
      TFile *f = (TFile*)gROOT->GetListOfFiles()->FindObject("Memory Directory");
      if (!f || !f->IsOpen()) {
         f = new TFile("Memory Directory");
      }
      f->GetObject("dijets/events",tree);

#else // SINGLE_TREE

      // The following code should be used if you want this class to access a chain
      // of trees.
      TChain * chain = new TChain("dijets/events","");
      chain->Add("/eos/cms/store/group/phys_exotica/dijet/Dijet13TeV/doruk/DiJet/rootNTuples_big/2024/Muon/Muon0/crab_Muon0__Run2024D-PromptReco-v1__MINIAOD/250618_010741/0000/Muon0__Run2024D-PromptReco-v1__MINIAOD_1.root/dijets/events");
      tree = chain;
#endif // SINGLE_TREE

   }
   Init(tree);
}

rootNtupleClass::~rootNtupleClass()
{
   if (!fChain) return;
   delete fChain->GetCurrentFile();
}

Int_t rootNtupleClass::GetEntry(Long64_t entry)
{
// Read contents of entry.
   if (!fChain) return 0;
   return fChain->GetEntry(entry);
}
Long64_t rootNtupleClass::LoadTree(Long64_t entry)
{
// Set the environment to read one entry
   if (!fChain) return -5;
   Long64_t centry = fChain->LoadTree(entry);
   if (centry < 0) return centry;
   if (fChain->GetTreeNumber() != fCurrent) {
      fCurrent = fChain->GetTreeNumber();
      Notify();
   }
   return centry;
}

void rootNtupleClass::Init(TTree *tree)
{
   // The Init() function is called when the selector needs to initialize
   // a new tree or chain. Typically here the branch addresses and branch
   // pointers of the tree will be set.
   // It is normally not necessary to make changes to the generated
   // code, but the routine can be extended by the user if needed.
   // Init() will be called many times when running on PROOF
   // (once per file to be processed).

   // Set object pointer
   jetPtAK4 = 0;
   jetJecAK4 = 0;
   jetEtaAK4 = 0;
   jetPhiAK4 = 0;
   jetMassAK4 = 0;
   jetEnergyAK4 = 0;
   jetEnergyPFAK4 = 0;
   jetAreaAK4 = 0;
   jetProbbAK4 = 0;
   jetProbbbAK4 = 0;
   jetProblepbAK4 = 0;
   jetProbcAK4 = 0;
   jetProbudsAK4 = 0;
   jetProbgAK4 = 0;
   pFlavourAK4 = 0;
   hFlavourAK4 = 0;
   jetChfAK4 = 0;
   jetNhfAK4 = 0;
   jetPhfAK4 = 0;
   jetMufAK4 = 0;
   jetElfAK4 = 0;
   jetNemfAK4 = 0;
   jetCemfAK4 = 0;
   jetHf_hfAK4 = 0;
   jetHf_emfAK4 = 0;
   jetHofAK4 = 0;
   idTAK4 = 0;
   chHadMultAK4 = 0;
   chMultAK4 = 0;
   neHadMultAK4 = 0;
   neMultAK4 = 0;
   phoMultAK4 = 0;
   jetPtAK4matchCaloJet = 0;
   jetEmfAK4matchCaloJet = 0;
   jetPtAK8 = 0;
   jetJecAK8 = 0;
   jetEtaAK8 = 0;
   jetPhiAK8 = 0;
   jetMassAK8 = 0;
   jetEnergyAK8 = 0;
   jetAreaAK8 = 0;
   jetUParTProbbAK8 = 0;
   jetUParTProbbbAK8 = 0;
   jetUParTProblepbAK8 = 0;
   jetUParTProbcAK8 = 0;
   jetUParTProbuAK8 = 0;
   jetUParTProbdAK8 = 0;
   jetUParTProbsAK8 = 0;
   jetUParTProbgAK8 = 0;
   jetUParTV1ProbbAK8 = 0;
   jetUParTV1ProbbbAK8 = 0;
   jetUParTV1ProblepbAK8 = 0;
   jetUParTV1ProbcAK8 = 0;
   jetUParTV1ProbuAK8 = 0;
   jetUParTV1ProbdAK8 = 0;
   jetUParTV1ProbsAK8 = 0;
   jetUParTV1ProbgAK8 = 0;
   jetParTProbbAK8 = 0;
   jetParTProbbbAK8 = 0;
   jetParTProblepbAK8 = 0;
   jetParTProbcAK8 = 0;
   jetParTProbudsAK8 = 0;
   jetParTProbgAK8 = 0;
   jetParticleNetProbbAK8 = 0;
   jetParticleNetProbcAK8 = 0;
   jetParticleNetProbudsAK8 = 0;
   jetParticleNetProbgAK8 = 0;
   jetParticleNetFromMiniAODAK4PuppiCentralProbbAK8 = 0;
   jetParticleNetFromMiniAODAK4PuppiCentralProbcAK8 = 0;
   jetParticleNetFromMiniAODAK4PuppiCentralProbudsAK8 = 0;
   jetParticleNetFromMiniAODAK4PuppiCentralProbgAK8 = 0;
   jetDeepCsvProbbAK8 = 0;
   jetDeepCsvProbbbAK8 = 0;
   jetDeepCsvProbcAK8 = 0;
   jetDeepCsvProbudsgAK8 = 0;
   jetDeepFlavourProbbAK8 = 0;
   jetDeepFlavourProbbbAK8 = 0;
   jetDeepFlavourProblepbAK8 = 0;
   jetDeepFlavourProbcAK8 = 0;
   jetDeepFlavourProbudsAK8 = 0;
   jetDeepFlavourProbgAK8 = 0;
   pFlavourAK8 = 0;
   hFlavourAK8 = 0;
   jetChfAK8 = 0;
   jetNhfAK8 = 0;
   jetPhfAK8 = 0;
   jetMufAK8 = 0;
   jetElfAK8 = 0;
   jetNemfAK8 = 0;
   jetCemfAK8 = 0;
   jetHf_hfAK8 = 0;
   jetHf_emfAK8 = 0;
   jetHofAK8 = 0;
   idTAK8 = 0;
   chHadMultAK8 = 0;
   chMultAK8 = 0;
   neHadMultAK8 = 0;
   neMultAK8 = 0;
   phoMultAK8 = 0;
   triggerResult = 0;
   triggerName = 0;
   npu = 0;
   PileupInteractions = 0;
   PileupOriginBX = 0;
   jetPtGenAK4 = 0;
   jetEtaGenAK4 = 0;
   jetPhiGenAK4 = 0;
   jetMassGenAK4 = 0;
   jetEnergyGenAK4 = 0;
   // Set branch addresses and branch pointers
   if (!tree) return;
   fChain = tree;
   fCurrent = -1;
   fChain->SetMakeClass(1);

   fChain->SetBranchAddress("runNo", &runNo, &b_run_);
   fChain->SetBranchAddress("evtNo", &evtNo, &b_evt_);
   fChain->SetBranchAddress("lumi", &lumi, &b_lumi_);
   fChain->SetBranchAddress("nvtx", &nvtx, &b_nVtx_);
   fChain->SetBranchAddress("rho", &rho, &b_rho_);
   fChain->SetBranchAddress("met", &met, &b_met_);
   fChain->SetBranchAddress("metSig", &metSig, &b_metSig_);
   fChain->SetBranchAddress("metphi", &metphi, &b_metphi_);
   fChain->SetBranchAddress("nJetsAK4", &nJetsAK4, &b_nJetsAK4_);
   fChain->SetBranchAddress("htAK4", &htAK4, &b_htAK4_);
   fChain->SetBranchAddress("mjjAK4", &mjjAK4, &b_mjjAK4_);
   fChain->SetBranchAddress("dEtajjAK4", &dEtajjAK4, &b_dEtajjAK4_);
   fChain->SetBranchAddress("dPhijjAK4", &dPhijjAK4, &b_dPhijjAK4_);
   fChain->SetBranchAddress("nJetsAK8", &nJetsAK8, &b_nJetsAK8_);
   fChain->SetBranchAddress("htAK8", &htAK8, &b_htAK8_);
   fChain->SetBranchAddress("mjjAK8", &mjjAK8, &b_mjjAK8_);
   fChain->SetBranchAddress("dEtajjAK8", &dEtajjAK8, &b_dEtajjAK8_);
   fChain->SetBranchAddress("dPhijjAK8", &dPhijjAK8, &b_dPhijjAK8_);
   fChain->SetBranchAddress("jetPtAK4", &jetPtAK4, &b_jetPtAK4);
   fChain->SetBranchAddress("jetJecAK4", &jetJecAK4, &b_jetJecAK4);
   fChain->SetBranchAddress("jetEtaAK4", &jetEtaAK4, &b_jetEtaAK4);
   fChain->SetBranchAddress("jetPhiAK4", &jetPhiAK4, &b_jetPhiAK4);
   fChain->SetBranchAddress("jetMassAK4", &jetMassAK4, &b_jetMassAK4);
   fChain->SetBranchAddress("jetEnergyAK4", &jetEnergyAK4, &b_jetEnergyAK4);
   fChain->SetBranchAddress("jetEnergyPFAK4", &jetEnergyPFAK4, &b_jetEnergyPFAK4);
   fChain->SetBranchAddress("jetAreaAK4", &jetAreaAK4, &b_jetAreaAK4);
   fChain->SetBranchAddress("jetProbbAK4", &jetProbbAK4, &b_jetProbbAK4);
   fChain->SetBranchAddress("jetProbbbAK4", &jetProbbbAK4, &b_jetProbbbAK4);
   fChain->SetBranchAddress("jetProblepbAK4", &jetProblepbAK4, &b_jetProblepbAK4);
   fChain->SetBranchAddress("jetProbcAK4", &jetProbcAK4, &b_jetProbcAK4);
   fChain->SetBranchAddress("jetProbudsAK4", &jetProbudsAK4, &b_jetProbudsAK4);
   fChain->SetBranchAddress("jetProbgAK4", &jetProbgAK4, &b_jetProbgAK4);
   fChain->SetBranchAddress("pFlavourAK4", &pFlavourAK4, &b_pFlavourAK4);
   fChain->SetBranchAddress("hFlavourAK4", &hFlavourAK4, &b_hFlavourAK4);
   fChain->SetBranchAddress("jetChfAK4", &jetChfAK4, &b_jetChfAK4);
   fChain->SetBranchAddress("jetNhfAK4", &jetNhfAK4, &b_jetNhfAK4);
   fChain->SetBranchAddress("jetPhfAK4", &jetPhfAK4, &b_jetPhfAK4);
   fChain->SetBranchAddress("jetMufAK4", &jetMufAK4, &b_jetMufAK4);
   fChain->SetBranchAddress("jetElfAK4", &jetElfAK4, &b_jetElfAK4);
   fChain->SetBranchAddress("jetNemfAK4", &jetNemfAK4, &b_jetNemfAK4);
   fChain->SetBranchAddress("jetCemfAK4", &jetCemfAK4, &b_jetCemfAK4);
   fChain->SetBranchAddress("jetHf_hfAK4", &jetHf_hfAK4, &b_jetHf_hfAK4);
   fChain->SetBranchAddress("jetHf_emfAK4", &jetHf_emfAK4, &b_jetHf_emfAK4);
   fChain->SetBranchAddress("jetHofAK4", &jetHofAK4, &b_jetHofAK4);
   fChain->SetBranchAddress("idTAK4", &idTAK4, &b_idTAK4);
   fChain->SetBranchAddress("chHadMultAK4", &chHadMultAK4, &b_chHadMultAK4);
   fChain->SetBranchAddress("chMultAK4", &chMultAK4, &b_chMultAK4);
   fChain->SetBranchAddress("neHadMultAK4", &neHadMultAK4, &b_neHadMultAK4);
   fChain->SetBranchAddress("neMultAK4", &neMultAK4, &b_neMultAK4);
   fChain->SetBranchAddress("phoMultAK4", &phoMultAK4, &b_phoMultAK4);
   fChain->SetBranchAddress("jetPtAK4matchCaloJet", &jetPtAK4matchCaloJet, &b_jetPtAK4matchCaloJet);
   fChain->SetBranchAddress("jetEmfAK4matchCaloJet", &jetEmfAK4matchCaloJet, &b_jetEmfAK4matchCaloJet);
   fChain->SetBranchAddress("jetPtAK8", &jetPtAK8, &b_jetPtAK8);
   fChain->SetBranchAddress("jetJecAK8", &jetJecAK8, &b_jetJecAK8);
   fChain->SetBranchAddress("jetEtaAK8", &jetEtaAK8, &b_jetEtaAK8);
   fChain->SetBranchAddress("jetPhiAK8", &jetPhiAK8, &b_jetPhiAK8);
   fChain->SetBranchAddress("jetMassAK8", &jetMassAK8, &b_jetMassAK8);
   fChain->SetBranchAddress("jetEnergyAK8", &jetEnergyAK8, &b_jetEnergyAK8);
   fChain->SetBranchAddress("jetAreaAK8", &jetAreaAK8, &b_jetAreaAK8);
   fChain->SetBranchAddress("jetUParTProbbAK8", &jetUParTProbbAK8, &b_jetUParTProbbAK8);
   fChain->SetBranchAddress("jetUParTProbbbAK8", &jetUParTProbbbAK8, &b_jetUParTProbbbAK8);
   fChain->SetBranchAddress("jetUParTProblepbAK8", &jetUParTProblepbAK8, &b_jetUParTProblepbAK8);
   fChain->SetBranchAddress("jetUParTProbcAK8", &jetUParTProbcAK8, &b_jetUParTProbcAK8);
   fChain->SetBranchAddress("jetUParTProbuAK8", &jetUParTProbuAK8, &b_jetUParTProbuAK8);
   fChain->SetBranchAddress("jetUParTProbdAK8", &jetUParTProbdAK8, &b_jetUParTProbdAK8);
   fChain->SetBranchAddress("jetUParTProbsAK8", &jetUParTProbsAK8, &b_jetUParTProbsAK8);
   fChain->SetBranchAddress("jetUParTProbgAK8", &jetUParTProbgAK8, &b_jetUParTProbgAK8);
   fChain->SetBranchAddress("jetUParTV1ProbbAK8", &jetUParTV1ProbbAK8, &b_jetUParTV1ProbbAK8);
   fChain->SetBranchAddress("jetUParTV1ProbbbAK8", &jetUParTV1ProbbbAK8, &b_jetUParTV1ProbbbAK8);
   fChain->SetBranchAddress("jetUParTV1ProblepbAK8", &jetUParTV1ProblepbAK8, &b_jetUParTV1ProblepbAK8);
   fChain->SetBranchAddress("jetUParTV1ProbcAK8", &jetUParTV1ProbcAK8, &b_jetUParTV1ProbcAK8);
   fChain->SetBranchAddress("jetUParTV1ProbuAK8", &jetUParTV1ProbuAK8, &b_jetUParTV1ProbuAK8);
   fChain->SetBranchAddress("jetUParTV1ProbdAK8", &jetUParTV1ProbdAK8, &b_jetUParTV1ProbdAK8);
   fChain->SetBranchAddress("jetUParTV1ProbsAK8", &jetUParTV1ProbsAK8, &b_jetUParTV1ProbsAK8);
   fChain->SetBranchAddress("jetUParTV1ProbgAK8", &jetUParTV1ProbgAK8, &b_jetUParTV1ProbgAK8);
   fChain->SetBranchAddress("jetParTProbbAK8", &jetParTProbbAK8, &b_jetParTProbbAK8);
   fChain->SetBranchAddress("jetParTProbbbAK8", &jetParTProbbbAK8, &b_jetParTProbbbAK8);
   fChain->SetBranchAddress("jetParTProblepbAK8", &jetParTProblepbAK8, &b_jetParTProblepbAK8);
   fChain->SetBranchAddress("jetParTProbcAK8", &jetParTProbcAK8, &b_jetParTProbcAK8);
   fChain->SetBranchAddress("jetParTProbudsAK8", &jetParTProbudsAK8, &b_jetParTProbudsAK8);
   fChain->SetBranchAddress("jetParTProbgAK8", &jetParTProbgAK8, &b_jetParTProbgAK8);
   fChain->SetBranchAddress("jetParticleNetProbbAK8", &jetParticleNetProbbAK8, &b_jetParticleNetProbbAK8);
   fChain->SetBranchAddress("jetParticleNetProbcAK8", &jetParticleNetProbcAK8, &b_jetParticleNetProbcAK8);
   fChain->SetBranchAddress("jetParticleNetProbudsAK8", &jetParticleNetProbudsAK8, &b_jetParticleNetProbudsAK8);
   fChain->SetBranchAddress("jetParticleNetProbgAK8", &jetParticleNetProbgAK8, &b_jetParticleNetProbgAK8);
   fChain->SetBranchAddress("jetParticleNetFromMiniAODAK4PuppiCentralProbbAK8", &jetParticleNetFromMiniAODAK4PuppiCentralProbbAK8, &b_jetParticleNetFromMiniAODAK4PuppiCentralProbbAK8);
   fChain->SetBranchAddress("jetParticleNetFromMiniAODAK4PuppiCentralProbcAK8", &jetParticleNetFromMiniAODAK4PuppiCentralProbcAK8, &b_jetParticleNetFromMiniAODAK4PuppiCentralProbcAK8);
   fChain->SetBranchAddress("jetParticleNetFromMiniAODAK4PuppiCentralProbudsAK8", &jetParticleNetFromMiniAODAK4PuppiCentralProbudsAK8, &b_jetParticleNetFromMiniAODAK4PuppiCentralProbudsAK8);
   fChain->SetBranchAddress("jetParticleNetFromMiniAODAK4PuppiCentralProbgAK8", &jetParticleNetFromMiniAODAK4PuppiCentralProbgAK8, &b_jetParticleNetFromMiniAODAK4PuppiCentralProbgAK8);
   fChain->SetBranchAddress("jetDeepCsvProbbAK8", &jetDeepCsvProbbAK8, &b_jetDeepCsvProbbAK8);
   fChain->SetBranchAddress("jetDeepCsvProbbbAK8", &jetDeepCsvProbbbAK8, &b_jetDeepCsvProbbbAK8);
   fChain->SetBranchAddress("jetDeepCsvProbcAK8", &jetDeepCsvProbcAK8, &b_jetDeepCsvProbcAK8);
   fChain->SetBranchAddress("jetDeepCsvProbudsgAK8", &jetDeepCsvProbudsgAK8, &b_jetDeepCsvProbudsgAK8);
   fChain->SetBranchAddress("jetDeepFlavourProbbAK8", &jetDeepFlavourProbbAK8, &b_jetDeepFlavourProbbAK8);
   fChain->SetBranchAddress("jetDeepFlavourProbbbAK8", &jetDeepFlavourProbbbAK8, &b_jetDeepFlavourProbbbAK8);
   fChain->SetBranchAddress("jetDeepFlavourProblepbAK8", &jetDeepFlavourProblepbAK8, &b_jetDeepFlavourProblepbAK8);
   fChain->SetBranchAddress("jetDeepFlavourProbcAK8", &jetDeepFlavourProbcAK8, &b_jetDeepFlavourProbcAK8);
   fChain->SetBranchAddress("jetDeepFlavourProbudsAK8", &jetDeepFlavourProbudsAK8, &b_jetDeepFlavourProbudsAK8);
   fChain->SetBranchAddress("jetDeepFlavourProbgAK8", &jetDeepFlavourProbgAK8, &b_jetDeepFlavourProbgAK8);
   fChain->SetBranchAddress("pFlavourAK8", &pFlavourAK8, &b_pFlavourAK8);
   fChain->SetBranchAddress("hFlavourAK8", &hFlavourAK8, &b_hFlavourAK8);
   fChain->SetBranchAddress("jetChfAK8", &jetChfAK8, &b_jetChfAK8);
   fChain->SetBranchAddress("jetNhfAK8", &jetNhfAK8, &b_jetNhfAK8);
   fChain->SetBranchAddress("jetPhfAK8", &jetPhfAK8, &b_jetPhfAK8);
   fChain->SetBranchAddress("jetMufAK8", &jetMufAK8, &b_jetMufAK8);
   fChain->SetBranchAddress("jetElfAK8", &jetElfAK8, &b_jetElfAK8);
   fChain->SetBranchAddress("jetNemfAK8", &jetNemfAK8, &b_jetNemfAK8);
   fChain->SetBranchAddress("jetCemfAK8", &jetCemfAK8, &b_jetCemfAK8);
   fChain->SetBranchAddress("jetHf_hfAK8", &jetHf_hfAK8, &b_jetHf_hfAK8);
   fChain->SetBranchAddress("jetHf_emfAK8", &jetHf_emfAK8, &b_jetHf_emfAK8);
   fChain->SetBranchAddress("jetHofAK8", &jetHofAK8, &b_jetHofAK8);
   fChain->SetBranchAddress("idTAK8", &idTAK8, &b_idTAK8);
   fChain->SetBranchAddress("chHadMultAK8", &chHadMultAK8, &b_chHadMultAK8);
   fChain->SetBranchAddress("chMultAK8", &chMultAK8, &b_chMultAK8);
   fChain->SetBranchAddress("neHadMultAK8", &neHadMultAK8, &b_neHadMultAK8);
   fChain->SetBranchAddress("neMultAK8", &neMultAK8, &b_neMultAK8);
   fChain->SetBranchAddress("phoMultAK8", &phoMultAK8, &b_phoMultAK8);
   fChain->SetBranchAddress("triggerResult", &triggerResult, &b_triggerResult);
   fChain->SetBranchAddress("triggerName", &triggerName, &b_triggerName);
   fChain->SetBranchAddress("passFilter_goodVertices", &passFilter_goodVertices, &b_passFilter_goodVertices_);
   fChain->SetBranchAddress("passFilter_globalSuperTightHalo2016", &passFilter_globalSuperTightHalo2016, &b_passFilter_globalSuperTightHalo2016_);
   fChain->SetBranchAddress("passFilter_HBHENoise", &passFilter_HBHENoise, &b_passFilter_HBHENoise_);
   fChain->SetBranchAddress("passFilter_HBHENoiseIso", &passFilter_HBHENoiseIso, &b_passFilter_HBHENoiseIso_);
   fChain->SetBranchAddress("passFilter_EcalDeadCellTriggerPrimitive", &passFilter_EcalDeadCellTriggerPrimitive, &b_passFilter_EcalDeadCellTriggerPrimitive_);
   fChain->SetBranchAddress("passFilter_BadPFMuon", &passFilter_BadPFMuon, &b_passFilter_BadPFMuon_);
   fChain->SetBranchAddress("passFilter_BadPFMuonDz", &passFilter_BadPFMuonDz, &b_passFilter_BadPFMuonDz_);
   fChain->SetBranchAddress("passFilter_BadChargedCandidate", &passFilter_BadChargedCandidate, &b_passFilter_BadChargedCandidate_);
   fChain->SetBranchAddress("passFilter_eeBadSc", &passFilter_eeBadSc, &b_passFilter_eeBadSc_);
   fChain->SetBranchAddress("passFilter_ecalBadCalib", &passFilter_ecalBadCalib, &b_passFilter_ecalBadCalib_);
   fChain->SetBranchAddress("passFilter_hfNoisyHits", &passFilter_hfNoisyHits, &b_passFilter_hfNoisyHits_);
   fChain->SetBranchAddress("passL1_Initial_bx0_473", &passL1_Initial_bx0_473, &b_passL1_Initial_bx0_473_);
   fChain->SetBranchAddress("pass_bx1", &pass_bx1, &b_pass_bx1_);
   fChain->SetBranchAddress("Flag_IsUnprefirable", &Flag_IsUnprefirable, &b_Flag_IsUnprefirable_);
   fChain->SetBranchAddress("Flag_NotAffectedByPrefire", &Flag_NotAffectedByPrefire, &b_Flag_NotAffectedByPrefire_);
   fChain->SetBranchAddress("npu", &npu, &b_npu);
   fChain->SetBranchAddress("PileupInteractions", &PileupInteractions, &b_PileupInteractions);
   fChain->SetBranchAddress("PileupOriginBX", &PileupOriginBX, &b_PileupOriginBX);
   fChain->SetBranchAddress("ptHat", &ptHat, &b_ptHat_);
   fChain->SetBranchAddress("processID", &processID, &b_processID_);
   fChain->SetBranchAddress("weight", &weight, &b_weight_);
   fChain->SetBranchAddress("nGenJetsAK4", &nGenJetsAK4, &b_nGenJetsAK4_);
   fChain->SetBranchAddress("jetPtGenAK4", &jetPtGenAK4, &b_jetPtGenAK4);
   fChain->SetBranchAddress("jetEtaGenAK4", &jetEtaGenAK4, &b_jetEtaGenAK4);
   fChain->SetBranchAddress("jetPhiGenAK4", &jetPhiGenAK4, &b_jetPhiGenAK4);
   fChain->SetBranchAddress("jetMassGenAK4", &jetMassGenAK4, &b_jetMassGenAK4);
   fChain->SetBranchAddress("jetEnergyGenAK4", &jetEnergyGenAK4, &b_jetEnergyGenAK4);
   Notify();
}

bool rootNtupleClass::Notify()
{
   // The Notify() function is called when a new file is opened. This
   // can be either for a new TTree in a TChain or when when a new TTree
   // is started when using PROOF. It is normally not necessary to make changes
   // to the generated code, but the routine can be extended by the
   // user if needed. The return value is currently not used.

   return true;
}

void rootNtupleClass::Show(Long64_t entry)
{
// Print contents of entry.
// If entry is not specified, print current entry
   if (!fChain) return;
   fChain->Show(entry);
}
Int_t rootNtupleClass::Cut(Long64_t entry)
{
// This function may be called from Loop.
// returns  1 if entry is accepted.
// returns -1 otherwise.
   return 1;
}
#endif // #ifdef rootNtupleClass_cxx
