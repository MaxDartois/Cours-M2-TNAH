CREATE TABLE architect (
id	integer primary key,
name	text not null, 
firstname	text, 
birth	text, 
death	text, 
birthdpt	text null references dpt(code), 
deathdpt	text null references dpt(code),
barts	bollean not null default 0, 
bartsyear	integer, 
training	text, 
rating	integer, 
fatherWork	integer null references fatherwork(id)
);