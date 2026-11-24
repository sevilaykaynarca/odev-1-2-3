\set VERBOSITY verbose
BEGIN;

-- Önce: Sıcak İçecek fiyatları
SELECT name, price FROM product WHERE category = 'Sıcak İçecek' ORDER BY product_id;

-- Komut 1: Sıcak İçecek fiyatını 5 TL artır
UPDATE product
SET price = price + 5
WHERE category = 'Sıcak İçecek';

-- Sonra: Sıcak İçecek fiyatları (yukarıdaki SELECT'in aynısı)
SELECT name, price FROM product WHERE category = 'Sıcak İçecek' ORDER BY product_id;

-- Komut 2: Var olmayan 999 ürününü bir siparişe ekle (hata verecek)
INSERT INTO order_item (order_id, product_id, quantity)
VALUES (1, 999, 1);

ROLLBACK;

-- ROLLBACK sonrası: Sıcak İçecek fiyatları (yine aynı SELECT)
SELECT name, price FROM product WHERE category = 'Sıcak İçecek' ORDER BY product_id;
```[cite: 8, 9, 10]

4. Sayfanın altındaki **Commit changes...** butonuna basıp kaydet.

Bunu da kaydettiysen "tamam" yaz, beşinci dosya olan **`dml_cikti.txt`** ile devam edelim.
