# NULL Deneyi

## Deney 1
`SELECT COUNT(*), COUNT(phone) FROM customer;`

* Tahminim: `COUNT(*)` tablodaki tüm 8 müşteriyi sayar, `COUNT(phone)` ise telefonu boş (`NULL`) olan 3 kişiyi saymayıp 5 sonucunu verir.
* Sonuç: `COUNT(*) = 8`, `COUNT(phone) = 5` (3 müşterinin telefon alanı `NULL`).
* Yorum: Tahminim tuttu. `COUNT(*)` boş (`NULL`) değerleri de dahil ederek tüm satırları sayarken, `COUNT(sütun_adı)` yalnızca dolu kayıtları sayar.

## Deney 2
`SELECT AVG(age), SUM(age) / COUNT(*) FROM customer;`

* Tahminim: `AVG(age)` yaşı boş (`NULL`) olan 2 kişiyi hesaba katmayıp dolu 6 kişinin yaş ortalamasını verirken, `SUM(age) / COUNT(*)` toplam yaşı tüm 8 satıra böleceği için daha düşük bir değer çıkaracaktır.
* Sonuç: `AVG(age)` yaklaşık `20.83` (`125 / 6`), `SUM(age) / COUNT(*)` ise `15.625` (veya tamsayı bölmesinde `15`) olarak görünür.
* Yorum: Tahminim tuttu. `NULL` değerler "değer yok" demektir; `AVG()` boş satırları atlayarak gerçek ortalamayı bulurken, `SUM() / COUNT(*)` boş satırları da bölen sayıya dahil ettiği için ortalamayı aşağı çeker.
