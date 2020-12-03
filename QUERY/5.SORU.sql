select U.* from tblSiparis S
JOIN tblSiparisDurum D ON S.siparisDurumKod = D.siparisDurumKod
JOIN tblSiparisDetay SD ON SD.faturaKod = S.faturaKod
JOIN tblUrun U ON SD.urunKod = U.urunKod
WHERE S.siparisDurumKod = 0