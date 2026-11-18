#include "TFile.h"


void Open_and_close_root_file(char *root_file_name)
{
	TFile *f;
	std::cout<<root_file_name<<std::endl;
	f = new TFile(root_file_name);
	f->Close();
}
