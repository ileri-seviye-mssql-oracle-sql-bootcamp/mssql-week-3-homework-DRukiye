SELECT TOP(1) K.isim,K.soyad,COUNT(S.faturaKod) AS SIPARIS_SAYISI FROM tblKullanici K
JOIN tblSiparis S ON K.kullaniciKod = S.kullaniciKod
where K.isim LIKE 'A%' AND K.soyad LIKE '%ak%'
GROUP BY K.isim,K.soyad
ORDER BY COUNT(S.faturaKod) DESC