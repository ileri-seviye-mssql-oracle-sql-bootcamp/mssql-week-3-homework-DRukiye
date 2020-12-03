select top(1) K.sehir,COUNT(S.faturaKod) AS SIPARIS_SAYISI from tblKullanici K
JOIN tblSiparis S ON K.kullaniciKod = S.kullaniciKod
JOIN tblSiparisDetay SD ON S.faturaKod = SD.faturaKod
JOIN tblUrun U ON SD.urunKod = U.urunKod
WHERE U.urunKod = 2856
GROUP BY  K.sehir
ORDER BY COUNT(S.faturaKod) DESC

