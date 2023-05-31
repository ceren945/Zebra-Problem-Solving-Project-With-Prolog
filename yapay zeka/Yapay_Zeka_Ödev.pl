k('Kisi','Kurabiyecesit','KurabiyeMarka','Kurabiyekuturenk','�cecek','Konum'). %Mutfakta bulunan ki�ilere ait �zelllikler tablo �eklinde g�sterilir.
tarcinliyi_yiyen(Kisi) :-
 kisiler(Ks),
 member(k(Kisi,tarcinli,_,_,_,_),Ks). % Bulunmas� gereken ki�inin kural� yaz�l�r.

kisiler(Ks) :-

% Kisilerin Ks'leri listesindeki her ki�i �u �ekilde belirtilir.
% k('Kisi','Kurabiyecesit','KurabiyeMarka','Kurabiyekuturenk','�cecek','Konum').
length(Ks, 5),
member(k(_,_,eti,mavi,_,_), Ks),
member(k(ahmet,_,ulker,_,_,_), Ks),
member(k(_,kakaolu,_,_,_,dolapici), Ks),
member(k(_,_,_,_,cileklisut,cekyat), Ks),
member(k(ayse,_,_,_,karamellisut,_), Ks),
member(k(_,_,milka,mor,_,_), Ks),                        %Ks listesine ait elemanlar�n �zellikleri member kullan�larak test edilir.
member(k(_,sutlu,_,kahverengi,_,_), Ks),                  %member( ?term, ?list ) Bir eleman�n listede oldu�unu do�rulamaya yarar..
member(k(_,_,ulker,_,_,hali), Ks),
member(k(_,_,_,_,cikolatalisut,masa), Ks),
member(k(_,tarcinli,_,_,_,_), Ks),
member(k(fatma,_,_,_,_,_), Ks),
next(k(deniz,_,_,_,_,_), k(_,_,_,_,_,koltuk), Ks),
next(k(ayse,_,_,_,_,_), k(_,_,_,_,_,masa), Ks),
next(k(_,_,_,kirmizi,_,_), k(_,_,_,sari,_,_), Ks),
next(k(_,_,torku,_,_,_), k(_,_,milka,_,_,_), Ks),
next(k(_,_,oreo,_,_,_), k(_,_,_,mavi,_,_), Ks),
next(k(_,vanilyali,_,_,_,_), k(_,_,_,kahverengi,_,_), Ks),
next(k(_,_,torku,_,_,_), k(_,_,ulker,_,_,_), Ks),
next(k(ahmet,_,_,_,_,_), k(_,_,_,_,cileklisut,_), Ks),
Ks = [_,_,k(_,_,_,kirmizi,muzlusut,_),_,_],
Ks = [k(_,_,_,_,vanilyalisut,_),_,_,_,_] ,
Ks = [_,_,_,_,k(ali,_,_,_,_,_)],
Ks = [_,_,_,k(_,_,oreo,_,_,_),_],
Ks = [k(_,cikolataparcali,_,_,_,_),_,_,_,_],
Ks=  [_,k(_,_,_,kahverengi,_,_),_,_,_].

next(A, B, Ls) :- append(_, [A,B|_], Ls).
next(A, B, Ls) :- append(_, [B,A|_], Ls).
member(X,[X|_]).
member(X,[_|Xs]) :- member(X,Xs).

