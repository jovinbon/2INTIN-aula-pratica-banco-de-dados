create table compra (
id serial,
descricao varchar(100),
un_med varchar(3),
quant int,
icms_per int,
val_icms float,
val_compra float,
val_venda float,
total_comp float
)

insert into compra (descricao, un_med, quant, icms_per, val_icms, val_compra, val_venda, total_comp) values ('Farinha trigo', 'Kg', 30, 18, 0.756, 4.2, 4.95, 126.0);
insert into compra (descricao, un_med, quant, icms_per, val_icms, val_compra, val_venda, total_comp) values ('Arroz parboilizado', 'Kg', 30, 18, 0.711, 3.95, 4.66, 118.5);
insert into compra (descricao, un_med, quant, icms_per, val_icms, val_compra, val_venda, total_comp) values ('Macarrão Aurora', 'pct', 20, 18, 0.873, 4.85, 5.72, 97.0);
insert into compra (descricao, un_med, quant, icms_per, val_icms, val_compra, val_venda, total_comp) values ('Pilha Recarregável', 'pct', 40, 7, 0.4375, 6.25, 6.68, 250.0);

create table venda (
id int,
descricao varchar(100),
un_med varchar(3),
quant int,
promocao float,
val_venda float,
subtotal float
)

insert into venda (id, descricao, un_med, quant, promocao, val_venda, subtotal) values (1, 'Farinha trigo', 'Kg', 4, 4.35, 4.95, 17.40);
insert into venda (id, descricao, un_med, quant, promocao, val_venda, subtotal) values (3, 'Macarrão Aurora', 'pct', 1, 0.0, 5.72, 5.72);
insert into venda (id, descricao, un_med, quant, promocao, val_venda, subtotal) values (2, 'Arroz parboilizado', 'Kg', 6, 4.25, 4.66, 25.5);
insert into venda (id, descricao, un_med, quant, promocao, val_venda, subtotal) values (3, 'Macarrão Aurora', 'pct', 2, 0.0, 5.72, 11.44);
insert into venda (id, descricao, un_med, quant, promocao, val_venda, subtotal) values (4, 'Pilha Recarregável', 'pct', 3, 0.0, 6.68, 20.04);



