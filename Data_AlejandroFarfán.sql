use Ventaropa;

INSERT INTO categories (id, name, description)
VALUES
('1','Camisas','Camisas de direntes estilos y colores'),
('2','Pantalones','Pantalones casuales y formaless'),
('3','Vestidos','Vestidos de temporada'),
('4','Zapatillas','Zapatillas de distintas tallas para hombre y mujer'),
('5','Accesorios','Accesorios a la moda');

INSERT INTO customer (DNI, name, address, phone)
VALUES
('78563245','Ana Gomez', 'Urb. San Jose','963258856'),
('78542655','Pablo Torrez', 'Av. Alamo','934675235'),
('69563255','Marcos Lopez', 'Urb. Tercer Mundo','963265986'),
('98563298','Diana Anton', 'Mr. Benavides','935621706'),
('42563255','Victor Espinoza', 'Urb. San Rosa','498316558');

INSERT INTO supplier (RUC, name, addrees, phone, Webpage)
VALUES
('5632145698', 'Miguel Suares', 'Av. Brazil', '97532685', 'www.MundoRopa.com'),
('9634145698', 'Peter Parker', 'Urb. Mexico', '97532685', 'www.Todoropa.com'),
('9347545698', 'Bruno Diaz', 'Av. Alamo', '97532685', 'www.RopaIdeal.com'),
('9314463256', 'Korina Clart', 'Urb.  San Jose', '97532685', 'www.VentaRopa.com'),
('5931452156', 'Margarita Macha', 'Av. Salvador', '97532685', 'www.PreciosBajos.com');

INSERT INTO product (id, name, price, stock, supplier_RUC, CATEGORIES_ID)
VALUES
('1','Camisa blanca', '59', '50', '5632145698', '1'),
('2','Pantalon gris', '45', '50', '9634145698', '2'),
('3','Corbata negra', '36', '50', '9347545698', '5'),
('4','Zapatillas Nike', '93', '50', '9314463256', '4'),
('5','Vestido blanco', '85', '50', '5931452156', '3');

INSERT INTO sale (id, date, customer_DNI, produc_id)
VALUES
('1', TO_DATE('01-07-2024', DD-MM-YYYY), '78542655','4'),
('2', TO_DATE('15-09-2023', DD-MM-YYYY), '78556345','2'),
('3', TO_DATE('31-12-2024', DD-MM-YYYY), '69563255','5'),
('4', TO_DATE('06-10-2023', DD-MM-YYYY), '98563298','3'),
('5', TO_DATE('17-04-2024', DD-MM-YYYY), '42563255','1');
