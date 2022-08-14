/*
	Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.
  
  Q1) film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
  
  Q2) film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda 
  film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
  
  Q3) customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
  
  Q4) city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra 
  en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
  
*/

--Answer 1

SELECT rating FROM film
GROUP BY rating;

--Answer 2

SELECT replacement_cost,COUNT(replacement_cost) FROM film
GROUP BY replacement_cost
HAVING COUNT(replacement_cost)>50;

--Answer 3

SELECT COUNT(store_id) FROM customer
GROUP BY store_id;

--Answer 4

SELECT country_id, COUNT(country_id) FROM city
GROUP BY country_id
ORDER BY COUNT(country_id) DESC
LIMIT 1;

