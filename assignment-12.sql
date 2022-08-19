/*
   Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.



Q-1) film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
Q-2) film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
Q-3) film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
Q-4) payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

*/

--Answer 1

SELECT COUNT(length) FROM film
WHERE length >
(
SELECT AVG(length) FROM film
);

--Answer 2

SELECT COUNT(*) FROM film
WHERE rental_rate =
(
SELECT MAX(rental_rate) FROM film
);

--Answer 3

SELECT title,rental_rate,replacement_cost FROM film
WHERE rental_rate =
(
SELECT MIN(rental_rate)FROM film	
)
INTERSECT
SELECT title,rental_rate,replacement_cost FROM film
WHERE replacement_cost =
(
SELECT MIN(replacement_cost)FROM film	
);

--Answer 4

SELECT customer.first_name,customer.customer_id,COUNT(customer.customer_id) FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT(customer.customer_id) DESC;


