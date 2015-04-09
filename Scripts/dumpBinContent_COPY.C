#include <iostream> 
#include <fstream>

dumpBinContent(){
  TFile* f1 = new TFile("DIRECTORY/FILE.root");
  cout <<"DIRECTORY/FILE.root"<<endl;
  TH1F* h_mjj = DiJetMass;

  //h_mjj->Rebin(50); 
  
  ofstream outputFile;
  outputFile.open("output_DIRECTORY/yields_FILE.txt") ;

  for (int i = 2; i < (h_mjj->GetXaxis()->GetNbins()+1); i++)
    {
      outputFile <<h_mjj->GetBinContent(i) << endl;
      float bin_value = h_mjj->GetBinContent(i);
    }

  outputFile.close(); 
}