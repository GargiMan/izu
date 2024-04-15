ID3 - Postup
Vstupní parametry: Množina příkladů MP, Množina vlastností MV

1. Patří-li všechny prvky množiny příkladů MP do stejné třídy, vraťte listový uzel označený touto třídou, jinak pokračujte. 
2. Je-li množina vlastností MV prázdná, vraťte listový uzel označený disjunkcí všech tříd, do kterých patří prvky v množině příkladů MP, jinak pokračujte.
3. Vyberte vlastnost Vi s největším informačním ziskem, odstraňte ji z množiny vlastností MV a učiňte ji kořenem aktuálního stromu (nechť MV-i je množina vlastností MV bez vlastnosti Vi). 
4. Pro každou hodnotu hj vybrané vlastnosti Vi:
    a. Vytvořte novou větev stromu označenou hodnotou hj (nechť podmnožina příkladů MPj je množina všech prvků množiny příkladů MP, které mají hodnotu hj vlastnosti Vi), 
    b. Volejte rekurzivně InduceTree s parametry MPj a MV-i ,
    c. Připojte vrácený podstrom/uzel k této větvi.

E(MP) = - Σ (p(mi) * log2(p(mi)))     //x počet prvkov
IG(MP, MPattr) = E(MP) - Σ (|MPj|/|MP| * E(MPj))

//START

MV = {teplota, den, obdobi, vlhkost}
E(MP) = 1.521927    //15

// Vlastnost: teplota {nizka, stredni, vysoka} (1, 2, 3)
E(MP1) = 1.459147   //6
E(MP2) = 0.970950   //5
E(MP3) = 1.500000   //4

IG(MP, teplota) = 0.214618

// Vlastnost: den {pracovni, vikend, svatek} (4, 5, 6)
E(MP4) = 0.918295   //3
E(MP5) = 1.251629   //6
E(MP6) = 1.459147   //6

IG(MP, den) = 0.253957

// Vlastnost: obdobi {jaro, leto, podzim, zima} (7, 8, 9, 10)
E(MP7) = 1.584962   //3
E(MP8) = 1.459147   //6
E(MP9) = 1.500000   //4
E(MP10) = 1.000000  //2

IG(MP, obdobi) = 0.087942

// Vlastnost: vlhkost {mala, velka} (11, 12)
E(MP11) = 1.556656  //7
E(MP12) = 1.000000  //8

IG(MP, vlhkost) = 0.262154

// Vybrana vlastnost - vlhkost (najväčší IG)
1. Vlhkost - MALA
MV = {teplota, den, obdobi}
E(MP) = 1.556656    //7

// Vlastnost: teplota {nizka, stredni, vysoka} (1, 2, 3)
E(MP1) = 0.918295   //3
E(MP2) = 0.000000   //1
E(MP3) = 1.584962   //3

IG(MP, teplota) = 0.483831

// Vlastnost: den {pracovni, vikend, svatek} (4, 5, 6)
E(MP4) = 0.000000   //1
E(MP5) = 0.918295   //3
E(MP6) = 0.918295   //3

IG(MP, den) = 0.769546

// Vlastnost: obdobi {jaro, leto, podzim, zima} (7, 8, 9, 10)
E(MP7) = 0.000000   //1
E(MP8) = 1.584962   //3
E(MP9) = 1.584962   //3
E(MP10) = 0.000000  //0

IG(MP, obdobi) = 0.198117

    //Vybrana vlastnost - den (najväčší IG)
    1. Den - PRACOVNI
        *Nizka*

    2. Den - VIKEND
        MV = {teplota, obdobi}
        E(MP) = 0.918295    //3

        // Vlastnost: teplota {nizka, stredni, vysoka} (1, 2, 3)
        E(MP1) = 0.000000   //1
        E(MP2) = 0.000000   //1
        E(MP3) = 0.000000   //1

        IG(MP, teplota) = 0.918295

        // Vlastnost: obdobi {jaro, leto, podzim, zima} (7, 8, 9, 10)
        E(MP7) = 0.000000   //0
        E(MP8) = 0.000000   //1
        E(MP9) = 1.000000   //2
        E(MP10) = 0.000000  //0

        IG(MP, obdobi) = 0.251628

    3. Den - SVATEK
        MV = {teplota, obdobi}
        E(MP) = 0.918295    //3

        // Vlastnost: teplota {nizka, stredni, vysoka} (1, 2, 3)
        E(MP1) = 1.000000   //2
        E(MP2) = 0.000000   //0
        E(MP3) = 0.000000   //1

        IG(MP, teplota) = 0.251628

        // Vlastnost: obdobi {jaro, leto, podzim, zima} (7, 8, 9, 10)
        E(MP7) = 0.000000   //1
        E(MP8) = 0.000000   //1
        E(MP9) = 0.000000   //1
        E(MP10) = 0.000000  //0

        IG(MP, obdobi) = 0.918295

2. Vlhkost - VELKA
MV = {teplota, den, obdobi}
E(MP) = 1.000000    //8

// Vlastnost: teplota {nizka, stredni, vysoka} (1, 2, 3)
E(MP1) = 0.000000   //3
E(MP2) = 0.811278   //4
E(MP3) = 0.000000   //1

IG(MP, teplota) = 0.594361

// Vlastnost: den {pracovni, vikend, svatek} (4, 5, 6)
E(MP4) = 0.000000   //2
E(MP5) = 0.918295   //3
E(MP6) = 0.918295   //3

IG(MP, den) = 0.311278

// Vlastnost: obdobi {jaro, leto, podzim, zima} (7, 8, 9, 10)
E(MP7) = 1.000000   //2
E(MP8) = 0.918295   //3
E(MP9) = 0.000000   //1
E(MP10) = 1.000000  //2

IG(MP, obdobi) = 0.155639

    //Vybrana vlastnost - teplota (najväčší IG)
    1. Teplota - NIZKA
        *Stredni*

    2. Teplota - STREDNI
        MV = {den, obdobi}
        E(MP) = 0.811278    //4

        // Vlastnost: den {pracovni, vikend, svatek} (4, 5, 6)
        E(MP4) = 0.000000   //1
        E(MP5) = 1.000000   //2
        E(MP6) = 0.000000   //1

        IG(MP, den) = 0.311278

        // Vlastnost: obdobi {jaro, leto, podzim, zima} (7, 8, 9, 10)
        E(MP7) = 0.000000   //0
        E(MP8) = 0.000000   //2
        E(MP9) = 0.000000   //1
        E(MP10) = 0.000000  //1

        IG(MP, obdobi) = 0.811278

    3. Teplota - VYSOKA
        *Vysoka*
