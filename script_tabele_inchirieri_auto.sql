create database Inchirieri_auto
go
use Inchirieri_auto
go
create table clienti (
                         client_id INT NOT NULL IDENTITY PRIMARY KEY,
                         cnp varchar(13) not null,
					     nume varchar(50) not null,
					     prenume varchar(100) not null,
						 telefon varchar(10) not null,
						 judet varchar(2) not null,
						 email varchar(50)
					  )
go
create table birouri_inchirieri ( 
								  locatie_id INT NOT NULL IDENTITY PRIMARY KEY,
								  strada varchar(50) not null,
								  numarul varchar(20) not null,
								  oras varchar(50) not null,
								  judet varchar(2) not null,
								  telefon varchar(10) not null
								)
go
create table tip_masina ( 
						  tip_id INT NOT NULL IDENTITY PRIMARY KEY,
						  tip_nume varchar(50) not null,
						  tip_descriere varchar(50)
					    )
go
create table masini (
					  masina_id INT NOT NULL IDENTITY PRIMARY KEY,
					  locatiecurenta_id int foreign key references birouri_inchirieri(locatie_id),
					  tip_id int foreign key references tip_masina(tip_id),
					  culoare varchar(20) not null,
					  marca varchar(20) not null,
					  model varchar(30) not null,
					  descriere varchar(50),
					  data_cumparare date not null,
					  pret_zi float not null
					)
go
create table rezervari ( 
						  rezervare_id INT NOT NULL IDENTITY PRIMARY KEY,
						  client_id int foreign key references clienti(client_id),
						  locatie_preluare_id int foreign key references birouri_inchirieri(locatie_id),
						  locatie_returnare_id int not null,
						  masina_id int foreign key references masini(masina_id),
						  data_preluare date not null,
						  data_returnare date not null,
						  pret float not null
						)
go