/*
  Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.



Q-1 city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

Q-2) customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz 
RIGHT JOIN sorgusunu yazınız.

Q-3) customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz 
FULL JOIN sorgusunu yazınız.

*/

--Answer 1

SELECT city,country FROM city
LEFT JOIN country ON city.country_id = country.country_id;

--Answer 2

SELECT payment_id,first_name,last_name FROM customer
RIGHT  JOIN payment ON payment.customer_id = customer.customer_id;

--Answer 3

SELECT rental_id,first_name,last_name FROM customer
FULL JOIN rental ON rental.customer_id = customer.customer_id;

