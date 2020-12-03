SELECT D.urunKod,U.urunAd,D.adet FROM tblUrun U
JOIN tblSiparisDetay D ON U.urunKod = D.urunKod
JOIN tblSiparis S ON S.faturaKod = D.faturaKod
WHERE S.siparisTarih BETWEEN '01.02.2007' AND '05.03.2014'
group by D.urunKod,D.adet,U.urunAd


