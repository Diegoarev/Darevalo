create database InventarioDarevalo;
use InventarioDarevalo;

create table Datos(
id int not null primary key auto_increment,
nombres varchar (45),
apellidos varchar(45),
alias varchar(45)

);

DELIMITER $$
create procedure sp_InsertarDatos(p_nombres varchar (45), p_apellidos varchar(45), p_alias varchar(45))
begin
	insert into Datos (nombres,apellidos,alias)
    values (p_nombres,p_apellidos,p_alias);
    
end $$

call sp_InsertarDatos('Diego','Arevalo','Darevalo');