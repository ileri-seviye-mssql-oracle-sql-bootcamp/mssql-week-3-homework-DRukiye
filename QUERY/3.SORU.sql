SELECT K.kullaniciKod,K.meslekKod,TS.toplam FROM tblKullanici K
LEFT JOIN tblSiparis S ON K.kullaniciKod = S.kullaniciKod
JOIN tblSiparisDurum SD ON S.siparisDurumKod=SD.siparisDurumKod
JOIN tblSiparisDetay TS ON S.faturaKod = TS.faturaKod 
WHERE TS.toplam = 0
