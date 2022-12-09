create table products
(
  id bigserial primary key,
  title      varchar(255),
  price      int,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp
);


insert into products(title, price)
values('Молоко', 2),('Хлеб', 2),('Конфеты', 15),
('Яблоко', 5),('Кофе', 20),('Чай', 3),('Помидор', 2),
('Огурец', 1),('Колбаса', 20),('Кефир', 2),('Яйцо', 3),
('Крупа манная', 3),('Крупа гречневая', 4),('Фарш', 5),
('Масло', 7),('Банан', 4),('Апельсин', 4),('Виноград', 7),
('Перец', 3),('Маргарин', 2),('Соль', 1),('Сахар', 3);