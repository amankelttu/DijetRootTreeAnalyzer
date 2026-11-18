double chi_s(TH1F*, double, double, double, double, double, double, double, double,
           double);
double getN(TH1F*, double, double);

void Fisher_test(int dataset)
{
    switch (dataset) {
    case 0:
        cout << "Fisher test for PF RECO" << endl;
        break;
    case 1:
        cout << "Fisher test for Calo Scouting" << endl;
        break;
    default:
        cout << "Error: Not a valid value for dataset" << endl;
        return;
    }

    double lumi = 220794.89; // Integrated luminosity [/pb]
    // Fit range [GeV]
    double minX = 1455.0;
    double maxX = 10072.0 ;
    switch (dataset) {
    case 0:
        minX = 1530.0;
        maxX = 10072.0;
        break;
    case 1:
        minX = 1455.0;
        maxX = 10072.0;
        break;
    }
    TFile *f_in;
    TH1D *h_data_1GeV;
   // TH1F *h_data;
    switch (dataset) {
    case 0:
        f_in = new TFile("/afs/cern.ch/user/a/amankel/btagged/2024/CMSSW_15_0_4/src/CMSDIJET/DijetRootTreeAnalyzer/data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root");
        f_in->GetObject("mjj_1e1_m", h_data_1GeV);
        break;
    case 1:
        f_in = new TFile("/afs/cern.ch/user/a/amankel/btagged/2024/CMSSW_15_0_4/src/CMSDIJET/DijetRootTreeAnalyzer/data/cleaned_run3_data_total_ptgeq60_ptleq6p8.root");
        f_in->GetObject("mjj_2b_m", h_data_1GeV);
        break;
    }

     const int nMassBins = 103;
    double massBoundaries[nMassBins+1]
        = {1, 3, 6, 10, 16, 23, 31, 40, 50, 61, 74, 88, 103, 119, 137, 156, 176,
           197, 220, 244, 270, 296, 325, 354, 386, 419, 453, 489, 526, 565, 606,
           649, 693, 740, 788, 838, 890, 944, 1000, 1058, 1118, 1181, 1246,
           1313, 1383, 1455, 1530, 1607, 1687, 1770, 1856, 1945, 2037, 2132,
           2231, 2332, 2438, 2546, 2659, 2775, 2895, 3019, 3147, 3279, 3416,
           3558, 3704, 3854, 4010, 4171, 4337, 4509, 4686, 4869, 5058, 5253,
           5455, 5663, 5877, 6099, 6328, 6564, 6808, 7060, 7320, 7589, 7866,
           8152, 8447, 8752, 9067, 9391, 9726, 10072, 10430, 10798, 11179,
           11571, 11977, 12395, 12827, 13272, 13732, 14000};

    TH1F *h_data = static_cast<TH1F*>(h_data_1GeV->Rebin(nMassBins, "",massBoundaries)); 

    double N_data = getN(h_data, minX, maxX);
    double parameters[2][5][6] = {
        // p0, p1, p2, p3, p4
        { 
	{6.11473,34.8408 , 0, 0, 0, 0}, //f2
	{2.20679e-05,10.2843,4.43157, 0.0,0.0,0.0}, //f3
        {2.67687e-06,8.14564,5.8965,0.282266, 0.0, 0.0}, //f4
        {3.07852e-05,9.89809,3.44213,-0.66697,-0.134438, 0.0}, //f5
        {0,0,0,0,0,0}, //f6
	},};
      // double parameters[2][5][6] = {
      //   // p0, p1, p2, p3, p4
      //   { 
      // 	{0.382027,31.6751, 0, 0, 0, 0}, //f2
      // 	{1.41579e-06,7.77731,4.46454, 0.0,0.0,0.0}, //f3
      //   {1.34439e-06,7.72681,4.50122,0.00721427, 0.0, 0.0}, //f4
      //   {11.0364,18.9295,-11.7324,-6.37364,-0.918173, 0.0}, //f5
      //   {0,0,0,0,0,0}, //f6
      // 	},};

    // double chi_s2 = chi_s(h_data, parameters[dataset][0][0],
    //                   parameters[dataset][0][1], parameters[dataset][0][2],
    //                   parameters[dataset][0][3], parameters[dataset][0][4], parameters[dataset][0][5],
    //                   minX, maxX, lumi);
   //  double chi_s3 = chi_s(h_data, parameters[dataset][1][0],
   //                    parameters[dataset][1][1], parameters[dataset][1][2],
   //                    parameters[dataset][1][3], parameters[dataset][1][4],parameters[dataset][1][4],
   //                    minX, maxX, lumi);
   //  double chi_s4 = chi_s(h_data, parameters[dataset][2][0],
   //                    parameters[dataset][2][1], parameters[dataset][2][2],
   //                    parameters[dataset][2][3], parameters[dataset][2][4],parameters[dataset][2][5],
   //                    minX, maxX, lumi);
   //  double chi_s5 = chi_s(h_data, parameters[dataset][3][0],
   //                    parameters[dataset][3][1], parameters[dataset][3][2],
   //                    parameters[dataset][3][3], parameters[dataset][3][4],parameters[dataset][3][5],
   //                    minX, maxX, lumi);
   // double chi_s6 = chi_s(h_data, parameters[dataset][4][0],
   //                    parameters[dataset][4][1], parameters[dataset][4][2],
   //                    parameters[dataset][4][3], parameters[dataset][4][4],parameters[dataset][4][5],
   //                    minX, maxX, lumi);
   //    double chi_s2=43285.65;
    double chi_s3=25.95;
    double chi_s4=25.87;
    double chi_s5=24.78;
    cout << endl;
    //    cout << "chi_s2: " << chi_s2 << endl;
    cout << "chi_s3: " << chi_s3 << endl;
    cout << "chi_s4: " << chi_s4 << endl;
    cout << "chi_s5: " << chi_s5 << endl;
    //    cout << "chi_s6: " << chi_s6 << endl;

    //    double F32 = (chi_s2 - chi_s3)/(chi_s3/(N_data - 3.0));
    double F43 = (chi_s3 - chi_s4)/(chi_s4/(N_data - 4.0));
    //    double F42 = (chi_s2 - chi_s4)/(chi_s4/(N_data - 4.0));
    double F54 = (chi_s4 - chi_s5)/(chi_s5/(N_data - 5.0));
    double F53 = (chi_s3 - chi_s5)/(chi_s5/(N_data - 5.0));
    //    double F52 = (chi_s2 - chi_s5)/(chi_s5/(N_data - 5.0));
    
    cout << endl;
    //    cout << "F32: " << F32 << endl;
    cout << "F43: " << F43 << endl;
    //    cout << "F42: " << F42 << endl;
    cout << "F54: " << F54 << endl;
    cout << "F53: " << F53 << endl;
    //    cout << "F52: " << F52 << endl;

    cout << endl; 
    cout << "N = " << N_data << endl;

    cout << endl;
    //    double CL32 = 1.0 - TMath::FDistI(F32, 1.0, N_data - 3.0);
    double CL43 = 1.0 - TMath::FDistI(F43, 1.0, N_data - 4.0);
    //    double CL42 = 1.0 - TMath::FDistI(F42, 1.0, N_data - 4.0);
    double CL54 = 1.0 - TMath::FDistI(F54, 1.0, N_data - 5.0);
    double CL53 = 1.0 - TMath::FDistI(F53, 1.0, N_data - 5.0);
    //    double CL52 = 1.0 - TMath::FDistI(F52, 1.0, N_data - 5.0);
   
    cout << endl;

    //    cout << "CL32: " << CL32 << endl;
    cout << "CL43: " << CL43 << endl;
    //    cout << "CL42: " << CL42 << endl;
    cout << "CL54: " << CL54 << endl;
    cout << "CL53: " << CL53 << endl;
    //    cout << "CL52: " << CL52 << endl;

    return;
}

double chi_s(TH1F *hist, double p0, double p1, double p2, double p3, double p4,double p5,
           double minX, double maxX, double lumi)
{
   TF1 *func = new TF1("func", "[0]*TMath::Power(1.0 - x/13600.0, [1])/TMath::Power(x/13600.0, [2] + [3]*TMath::Log(x/13600.) + [4]*TMath::Log(x/13600.)*TMath::Log(x/13600.)+[5]*TMath::Log(x/13600.)*TMath::Log(x/13600.) *TMath::Log(x/13600.))", minX, maxX);

//TF1 *func = new TF1("func","([0])*(1-(x/13600.)**(1./3.))**([1])/( (x/13600.)**([2]+[3]*log(x/13600.)+[4]*log(x/13600.)**2.)   )", maxX, minX);
   
// TF1 *func = new TF1("func","([0]/((x/13600)**[1]))*exp(-(([2]*(x/13600))+([3]*(x/13600)**2)+([4]*(x/13600)**3)+([5]*(x/13600)**4) ))",maxX,minX);

    func->SetParameter(0, p0);
    func->SetParameter(1, p1);
    func->SetParameter(2, p2);
    func->SetParameter(3, p3);
    func->SetParameter(4, p4);
    func->SetParameter(5, p5);

    double chi_square_SF = 0.0;
    for (int i=1; i<=hist->GetXaxis()->GetNbins(); ++i) {
        double value = hist->GetBinContent(i); 
        double lowX = hist->GetXaxis()->GetBinLowEdge(i);
        double upX = hist->GetXaxis()->GetBinUpEdge(i);
        if (lowX < minX || upX > maxX)
            continue;
        if (value == 0.0)
            continue;
//Amalia - start

      double edata_signal   = hist->GetBinError(i);
      double alpha = 1-0.6827;
      double errl,errh;

      if(value<=0) errl = 0;
      if(value<=0) errh = 1.8;
        
      if(value>0 && value < 20){
          errl = value - ROOT::Math::gamma_quantile(alpha/2,value,1.);
          errh = ROOT::Math::gamma_quantile_c(alpha/2,value+1,1.)-value;
      }
      if(value>0 && value >= 20){
           errl = sqrt(value);
           errh = sqrt(value);
     }
        errl = errl/((hist->GetBinLowEdge(i+1)-hist->GetBinLowEdge(i))*lumi);
        errh = errh/((hist->GetBinLowEdge(i+1)-hist->GetBinLowEdge(i))*lumi);
	// errl = errl*1000./((hist->GetBinLowEdge(i+1)-hist->GetBinLowEdge(i))*lumi);
        // errh = errh*1000./((hist->GetBinLowEdge(i+1)-hist->GetBinLowEdge(i))*lumi);
           
        cout << "errl = " << errl << endl;
        cout << "errh = " << errh <<endl;

	//        double data_signal    = hist->GetBinContent(i)*1000./((hist->GetBinLowEdge(i+1)-hist->GetBinLowEdge(i))*lumi);
	double data_signal    = hist->GetBinContent(i)/((hist->GetBinLowEdge(i+1)-hist->GetBinLowEdge(i))*lumi);
        cout << "N per bin = " << data_signal << endl;
        double mjj            = hist->GetBinCenter(i);
        //double Fit_A = func->Integral(lowX, upX)*lumi;
        double Fit_A          = func->Eval(mjj);
        cout << "Fit = " << Fit_A <<endl;
        double pull;
        if(edata_signal>0 && edata_signal==edata_signal){              
              if(data_signal>Fit_A) pull = (-Fit_A+data_signal)/errl;
              if(data_signal<Fit_A) pull = (-Fit_A+data_signal)/errh;
              if(mjj>=minX && mjj<= maxX && value!= 0.0){
                  chi_square_SF = chi_square_SF + pull*pull; cout<<"!!!!"<<chi_square_SF<<"  "<< pull<<endl;
              }
         } else pull = 0.;
          
         cout << "pull = " << pull << endl;
        
//Amalia - end
      
       // double fit = func->Integral(lowX, upX)*lumi;
       // rss += (value - fit)*(value - fit);
    }
    return chi_square_SF;
}

double getN(TH1F *hist, double minX, double maxX)
{
    int N = 0;
    int zeros = 0;
    for (int i=1; i<=hist->GetXaxis()->GetNbins(); ++i) {
        if (hist->GetXaxis()->GetBinLowEdge(i) < minX
            || hist->GetXaxis()->GetBinUpEdge(i) > maxX)
            continue;

        if (hist->GetBinContent(i) > 0.0)
            ++N;
        else
            ++zeros;
    }

    cout << endl;
    cout << N << " data points between " << minX << " and " << maxX
         << " GeV. " << zeros << " bins with zero in that range." << endl;

    return static_cast<double>(N);
}
