
SELECT TOP(1) MAX(M.meslekKod) AS MESLEK_KODU, M.meslek,COUNT(S.faturaKod) AS SIPARIS_SAYISI FROM tblSiparis S
JOIN tblKullanici K ON S.kullaniciKod = K.kullaniciKod
JOIN tblMeslek M ON K.meslekKod = M.meslekKod
GROUP BY M.meslek
order by COUNT(S.faturaKod) desc




