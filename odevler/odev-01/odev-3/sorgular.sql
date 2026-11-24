-- S1: Fiyatı 50 TL'den yüksek ürünleri pahalıdan ucuza sırala.
-- Ne işe yarar: Kafenin yüksek fiyatlı ürünlerini fiyat sırasıyla görmeyi sağlar.
SELECT name, price
FROM product
WHERE price > 50
ORDER BY price DESC;

-- Q2: 'YBS' bölümündeki müşterilerin adlarını alfabetik olarak sırala.
-- Ne işe yarar: YBS bölümündeki müşterilerin listesine hızlıca ulaşmayı sağlar.
SELECT full_name
FROM customer
WHERE department = 'YBS'
ORDER BY full_name ASC;

-- Q3: Sipariş numarasını, sipariş tarihini ve siparişi veren müşterinin adını listeleyin.
-- Ne işe yarar: Siparişlerin hangi müşteriye ait olduğunu takip etmeyi sağlar.
SELECT o.order_id, o.order_date, c.full_name
FROM orders o
INNER JOIN customer c ON o.customer_id = c.customer_id;

-- Q4: Sipariş edilen kalemlerin ürün adını ve adedini listeleyin.
-- Ne işe yarar: Siparişlerde hangi üründen kaç adet satıldığını gösterir.
SELECT p.name, oi.quantity
FROM order_item oi
INNER JOIN product p ON oi.product_id = p.product_id;

-- Soru 5: Her müşterinin kaç siparişi olduğunu müşteri adıyla listeleyin.
-- Ne işe yarar: Müşterilerin sipariş sayılarını karşılaştırmayı sağlar.
SELECT c.full_name, COUNT(o.order_id) AS siparis_sayisi
FROM customer c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.full_name;

-- Soru 6: Her ürün kategorisinin ortalama fiyatını bulun.
-- Ne işe yarar: Kategorilerin ortalama fiyatlarını görmeyi sağlar.
SELECT category, AVG(price) AS ortalama_fiyat
FROM product
GROUP BY category;
