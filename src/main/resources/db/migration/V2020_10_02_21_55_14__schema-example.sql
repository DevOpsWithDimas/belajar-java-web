create table example_data
(
    id character varying(64) not null primary key,
    nama character varying(100)
);

insert into example_data(id, nama) values ('dimas', 'Dimas Maryanto');
