#include <iostream>
#include <string>
#include <random>
#include <vector>
#define MAX_CIUDADES 10
#define MIN_CIUDADES 4
#define MIN_HOTELES MAX_CIUDADES
#define MAX_HOTELES 20
#define MIN_VIAJE 1
#define MAX_VIAJE 100
#define MIN_NDIAS 1
#define MAX_NDIAS 8
#define MIN_PRECIO 1
#define MAX_PRECIO 10000

using namespace std;
int nCiudades, nHoteles, nDias, dMin, dMax, pMin, pMax;

void help(){
    cout << " ---------- Generador de problemas Ten Cities ---------- " << endl;
    cout << "Usage of generador: "<< endl;
    cout << "OPTIONS\t\t\tDESCRIPTIONS"<<endl;
    cout << "-c <num>\t\tNúmero de ciudades para el problema"<<endl;
    cout << "-h <num>\t\tNúmero de hoteles para el problema"<<endl;
    cout << "-v <num>\t\tNúmero de días para el problema"<<endl<<endl;
    cout << "-nmin <num>\t\tNúmero de días mínimo por cada ciudad"<<endl;
    cout << "-nmax <num>\t\tNúmero de días máximo por cada ciudad"<<endl;
    cout << "-pmin <num>\t\tNúmero de precio mínimo total"<<endl;
    cout << "-pmax <num>\t\tNúmero de precio máximo total"<<endl<<endl;
    cout << "--help\t\t\tMuestra este menú"<<endl<<endl;
    
    exit(1);

}

bool checkIfInteger(string s, int min, int max){
    int t = stoi(s);

    if (t >= min and t <=max) return true;
    else return false;
}

int random(int min, int max){
    random_device rd;
    mt19937 mt(rd());
    
    uniform_int_distribution<int> dist(min,max);
    return dist(mt);
}

void input(int argc, char* argv[]){
    for (int i = 0; i < argc; ++i){
        string arg = string(argv[i]);
        if(arg == "-c"){
            if (i+1 >= argc or !checkIfInteger(string(argv[i+1]), MIN_CIUDADES, MAX_CIUDADES)){
                cerr << "-c requiere un parámetro dentro de los límites " << MIN_CIUDADES << " y " << MAX_CIUDADES<<endl;
                exit(-1);
            }
            nCiudades = stoi(string(argv[i+1]));
        }   
        else if(arg == "-h"){
            if (i+1 >= argc or !checkIfInteger(string(argv[i+1]), MIN_HOTELES, MAX_HOTELES)){
                cerr << "-h requiere un parámetro dentro de los límites " << MIN_HOTELES << " y " << MAX_HOTELES <<endl;
                exit(-1);
            }
            nHoteles = stoi(string(argv[i+1]));
        }    
        else if(arg == "-v"){
            if (i+1 >= argc or !checkIfInteger(string(argv[i+1]), MIN_VIAJE, MAX_VIAJE)){
                cerr << "-v requiere un parámetro dentro de los límites " << MIN_VIAJE << " y " << MAX_VIAJE <<endl;
                exit(-1);
            }
            nDias = stoi(string(argv[i+1]));
        }              
            
        else if(arg == "-nmin"){
            if (i+1 >= argc or stoi(string(argv[i+1])) < MIN_NDIAS){
                cerr << "-nmin requiere un parámetro superior a " << MIN_NDIAS << endl;
                exit(-1);
            }
            dMin = stoi(string(argv[i+1]));
        }
            
        else if(arg == "-nmax"){
            if (i+1 >= argc or stoi(string(argv[i+1])) > MAX_NDIAS){
                cerr << "-nmax requiere un parámetro inferior a " << MAX_NDIAS << endl;
                exit(-1);
            }
            dMax = stoi(string(argv[i+1]));
        }

        else if(arg == "-pmin"){
            if (i+1 >= argc or stoi(string(argv[i+1])) < MIN_PRECIO){
                cerr << "-nmin requiere un parámetro superior a " << MIN_PRECIO << endl;
                exit(-1);
            }
            pMin = stoi(string(argv[i+1]));
        }
            
        else if(arg == "-pmax"){
            if (i+1 >= argc or stoi(string(argv[i+1])) > MAX_PRECIO){
                cerr << "-nmax requiere un parámetro inferior a " << MAX_PRECIO << endl;
                exit(-1);
            }
            pMax = stoi(string(argv[i+1]));
        }
        else if (arg == "--help") help();                    
    }

}

void insertaObjetos(){
    for (int c = 1; c <= nCiudades; ++c){
        cout << "c" << c << " "; 
    } cout << "- ciudad" <<endl<<"\t\t";
    
    for (int h = 1; h <= nHoteles; ++h){
        cout << "h" << h << " "; 
    } cout << "- hotel" <<endl<<"\t)"<<endl;
}

vector< vector<bool> > conectadas;
void insertaConectadas(){
    vector< vector<bool> > conectadas (nCiudades, vector<bool>(nCiudades,false)); //actualiza matriz;
    
    for (int c = 1; c <= nCiudades; ++c){ //Para cada ciudad
        int nConex = random(1,nCiudades); //Su numero de conextions
        for (int conex = 0; conex < nConex; ++conex){ //Para cada conexion
            int cDestino = c;
            do{ //Nos aseguramos que sea una ciudad distinta
                cDestino = random(1,nCiudades);
            } while(c == cDestino);
            
            if (!conectadas[cDestino-1][c-1] and !conectadas[c-1][cDestino-1]) conectadas[c-1][cDestino-1] = true;
        }
    }
    
    for (int i = 0; i < nCiudades; ++i){
        for (int j = 0; j <nCiudades; ++j){
            if (conectadas[i][j]){
                cout << "\t\t(conectada c" << i+1 << " c" << j+1 << ")" << endl;
            }
        }
    }

}
void escribeProblema(){
    cout << 
    "(define (problem ten-cities)" <<endl<<"\t"<<
    "(:domain agencia_viajes)" <<endl<<"\t"<<
    "(:objects"<<endl<<"\t\t";
        insertaObjetos();
     
    cout <<
    "\t(:init"<<endl;
        insertaConectadas();
        


    cout << endl;
}

int main(int argc, char* argv[]){
    if (argc != 7*2+1 or string(argv[1]) == "--help") help();
   
    input(argc, argv);
    escribeProblema();

}
