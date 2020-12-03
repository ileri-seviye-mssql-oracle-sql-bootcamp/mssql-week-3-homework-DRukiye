SELECT MAX(S.toplam) AS TOPLAM,S.faturaKod, U.urunAd,SD.urunKod FROM tblSiparis S
JOIN tblKullanici K ON S.kullaniciKod = K.kullaniciKod
JOIN tblSiparisDetay SD on S.faturaKod=SD.faturaKod
JOIN tblUrun U ON SD.urunKod=U.urunKod
GROUP BY S.faturaKod, U.urunAd,SD.urunKod
order by MAX(S.toplam) DESC

