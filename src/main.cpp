#include "main.hpp"

int main(int argc, char* argv[]){
  using namespace std;
  cout << "Number of arguments: " << argc << endl;
  for(int i; i < argc; i++){
    cout << "Argument " << i << ": " << argv[i] << endl;
  }
  return 0;
}