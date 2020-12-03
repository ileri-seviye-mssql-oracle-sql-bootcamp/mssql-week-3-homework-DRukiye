
SELECT urunAd,urunKod, (listeFiyat + (listeFiyat* KDVoran)) as SATISFIYAT FROM tblUrun
GROUP BY urunAd,urunKod, (listeFiyat + (listeFiyat * KDVoran))

