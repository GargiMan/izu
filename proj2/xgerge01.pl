% Zadani c. 16:
% Napiste program resici ukol dany predikatem u16(LIN1,LIN2,LOUT), kde LIN1 
% a LIN2 jsou vstupni celociselne seznamy a LOUT je vystupni seznam. Seznam 
% LOUT je dan seznamem LIN1 zasifrovanym neprazdnym seznamem/klicem LIN2 tak,   
% ze od kazdeho prvku seznamu LIN1 je odectena hodnota prislusneho prvku klice 
% LIN2. Pokud je klic LIN2 kratsi nez seznam LIN1, tak se sifrovani opakuje 
% od zacatku klice LIN2. 

% Testovaci predikaty:                                  % LOUT
u16_1:- u16([13,20,7,5,11,34],[4,3,5],LOUT),
        write(LOUT).					% [9,17,2,1,8,29]
u16_2:- u16([13,20,7,5,11,34],[9,3,15,-4],LOUT),
	write(LOUT).					% [4,17,-8,9,2,31]
u16_3:- u16([13,20],[9,3,15,-4],LOUT),
	write(LOUT).					% [4,17]
u16_r:- write('Zadej LIN1: '),read(LIN1),
        write('Zadej LIN2: '),read(LIN2),
        u16(LIN1,LIN2,LOUT),write(LOUT).

% Reseni:
u16(LIN1,LIN2,LOUT):-
	encrypt(LIN1, LIN2, LOUT, LIN2).

encrypt([], _, [], _) :- !.
encrypt(X, Y_Full, Z, []) :-
    encrypt(X, Y_Full, Z, Y_Full), !.
encrypt([X|Xs], Y_Full, [Z|Zs], [Y|Ys]) :-
    encrypt(Xs, Y_Full, Zs, Ys),
    Z is X-Y.
