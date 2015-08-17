create database sphidb;

create table users(username varchar(50) not null primary key,
	password varchar(50) not null,
	enabled boolean not null);
	
create table authorities(
	username varchar(50) not null,
	authority varchar(50) not null,
	constraint fk_authorities_users
	foreign key(username) references users(username));
	
create unique index ix_auth_username on
	authorities (username, authority);
	
--Adding user with his role	
insert into users(username, password, enabled)
	values("jim", "jim", true);
	
insert into authorities(username, authority)
	values("jim", "ROLE_USER");

-- Second Stage	
-- Changing password to MD5
update users set password = "5e027396789a18c37aeda616e3d7991b"
	where username = "jim";	
	
-- Third Stage
-- Changing password do BCrypt
alter table users modify password varchar(60);

update users set password = "$2a$10$m4rUILt4FYdQct8k7jrUkequpeiacaBsMnq/G9JbvBuXuGb/25PSi"
	where username = "dan";

update users set password = "$2a$10$CLwV0lknSfEi2SqcYvrnTOxP.FEFfcGBaR3OJe5UwDcSmWLWZE5Vi"
    where username = "jim";

    
-- Creating mark user with bad privileges to test 403 page
insert into users (username, password, enabled) 
	values ("mark", "$2a$10$NP7sGHQ4yDyLQec8wilw3eHmQ3getDahAWX06CmWxVF59n.Ht2K96", true);
	
insert into authorities (username, authority) values ("mark", "ROLE_BAD");	


--Permission in object level (optional)
create table permissions (
	username varchar(50) not null,
    target varchar(50) not null,
    permission varchar(50) not null,
    constraint fk_permissions_users foreign key(username) references users(username));

create unique index ix_perm_username on permissions (username, target, permission);

-- Teste 1 para acessar o create Servico
insert into permissions(username, target, permission) values("dan", "com.codeonblue.sphidb.model.Servico", "createServico");

-- Teste 2 para negar acesso ao create Servico
delete from permission where username = "dan";