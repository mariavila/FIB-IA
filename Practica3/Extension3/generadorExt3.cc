#include <iostream>
#include <string>
#include <random>
#include <vector>
#define MAX_CIUDADES 1000000
#define MIN_CIUDADES 4
#define MIN_CIUDADES_VISITAR 1
#define MAX_CIUDADES_VISITAR MAX_CIUDADES
#define MIN_HOTELES MIN_CIUDADES
#define MAX_HOTELES 99999999
#define MIN_VIAJE 1
#define MAX_VIAJE 100
#define MIN_NDIAS 1
#define MAX_NDIAS 8
#define MIN_PRECIO 1
#define MAX_PRECIO 1000000000

using namespace std;
int nCiudades, nHoteles, nCVisitar, nDias, dMin, dMax, pMin, pMax;

void help(){
    cout << " ---------- Generador de problemas Ten Cities ---------- " << endl;
    cout << "Usage of generador: "<< endl;
    cout << "OPTIONS\t\t\tDESCRIPTIONS"<<endl;
    cout << "-c <num>\t\tNúmero de ciudades para el problema"<<endl;
    cout << "-h <num>\t\tNúmero de hoteles para el problema"<<endl;
    cout << "-v <num>\t\tNúmero de días para el problema"<<endl<<endl;
    cout << "-cs <num>\t\tNúmero de ciudades a visitar el problema"<<endl<<endl;
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
        else if(arg == "-cs"){
            if (i+1 >= argc or !checkIfInteger(string(argv[i+1]), MIN_CIUDADES_VISITAR, MAX_CIUDADES_VISITAR)){
                cerr << "-cs requiere un parámetro dentro de los límites " << MIN_CIUDADES_VISITAR << " y " << MAX_CIUDADES_VISITAR <<endl;
                exit(-1);
            }
            nCVisitar = stoi(string(argv[i+1]));
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



void insertaConectadas(vector< vector<bool> >& conectadas){
    for (int c = 1; c <= nCiudades; ++c){ //Para cada ciudad
        int nConex = random(1,nCiudades); //Su numero de conexiones
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

void insertaHotelCiudad(){
    int restantes = nHoteles - nCiudades;
    int h = 1;
    for (int c = 1; c <= nCiudades; ++c){ //Para cada ciudad
        cout << "\t\t(hotel_ciudad c" << c << " h" << h << ")" <<endl; //Asigna el primero
        int extras = random(0,restantes); restantes-=extras; //Asigna hoteles extra aleatoriamente 
        for (int e = 1; e <= extras; ++e)
             cout << "\t\t(hotel_ciudad c" << c << " h" << h+e << ")" <<endl;
        h+=extras+1;
        if (c == nCiudades){
            for (int r = 0;r < restantes; ++r) cout << "\t\t(hotel_ciudad c" << c << " h" << h+r << ")" <<endl;
        } //Asigna los restantes en la ultima si no hemos llenado
    }
}

void insertaInfoCiudades(){
    cout << "\t\t(= (numero_ciudades_visitadas) 0)" <<endl;
    cout << "\t\t(= (numero_minimo_dias_por_ciudad) " << dMin << ")" <<endl;
    cout << "\t\t(= (numero_maximo_dias_por_ciudad) " << dMax << ")" <<endl;
    cout << endl;
}

void insertaIntereses(){
    for (int c = 1; c <= nCiudades; ++c){
        int interes = random(1,3);
        cout << "\t\t(= (numero_interes c" << c << ") " << interes << ")" <<endl;
    }
    cout << "\t\t(= (numero_interes-total) 0)" <<endl<<endl;
}

void insertaPrecioHoteles(){
    for (int h = 1; h <= nHoteles; ++h){
        int precio = random(50, 400);
        cout << "\t\t(= (precio-hotel h" << h << ") " << precio << ")" <<endl;
    }
    cout << "\t\t(= (precio-hotel-total) 0)" <<endl;
    cout << "\t\t(= (numero_minimo_precio_hoteles) " << pMin << ")" <<endl;
    cout << "\t\t(= (numero_maximo_precio_hoteles) " << pMax << ")" <<endl<<endl;
}

void insertaPrecioViajes(const vector< vector<bool> >& conectadas){
    for (int c1 = 1; c1 <= nCiudades; ++c1){
        for (int c2 = 1; c2 <= nCiudades; ++c2){
            if (conectadas[c1-1][c2-1]){
                int precio = random(50,400);
                cout << "\t\t(= (precio-viaje c" << c1 << " c" << c2 << ") " << precio << ")" <<endl;
            }
        }
    }
    cout << "\t\t(= (precio-viaje-total) 0)" <<endl;
}

void escribeProblema(){
    vector< vector<bool> > conectadas (nCiudades, vector<bool>(nCiudades,false)); //guarda info sobre las conexiones de las ciudades

    cout << 
    "(define (problem ten-cities)" <<endl<<"\t"<<
    "(:domain agencia_viajes)" <<endl<<"\t"<<
    "(:objects"<<endl<<"\t\t";
        insertaObjetos();
     
    cout <<
    "\t(:init"<<endl;
        insertaConectadas(conectadas);
        insertaHotelCiudad();
        insertaInfoCiudades();
        //insertaIntereses();
        insertaPrecioHoteles();
        insertaPrecioViajes(conectadas);
    cout << "\t)" << endl;
    cout <<
    "\t(:goal"<<endl<<"\t\t" <<
        "(and"<<endl<<"\t\t" <<
        "(= (numero_ciudades_visitadas) " << nCVisitar << ")" <<endl<<"\t\t" <<
        "(hotel_asignado)" <<endl<<"\t\t" <<
        "(>= (numero_dias_viaje) " << nDias << ")"  <<endl<<"\t\t" <<
        "(>= (numero_dias_ciudad) (numero_minimo_dias_por_ciudad))" <<endl<<"\t\t" <<
        "(>= (+ (precio-hotel-total) (precio-viaje-total)) (numero_minimo_precio_hoteles))" <<endl<<"\t\t" <<
        "(<= (+ (precio-hotel-total) (precio-viaje-total)) (numero_maximo_precio_hoteles))" <<endl<<"\t\t" <<
        ")" <<endl <<
    "\t)" << endl <<
    "\t(:metric minimize (+ (* 1 (precio-hoteles-total)) (* 1 (precio-viaje-total)) ))" <<endl <<
    ")" << endl;
        
    
    cout << endl;
}

int main(int argc, char* argv[]){
    if (argc != 8*2+1 or string(argv[1]) == "--help") help();
   
    input(argc, argv);
    escribeProblema();

}
