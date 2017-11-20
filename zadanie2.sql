select * from pracownicy join stanowiska on pracownicy.position_id = stanowiska.id join adres on pracownicy.adres_id = adres.id;

select sum(salary) from pracownicy join stanowiska on pracownicy.position_id = stanowiska.id;

select * from pracownicy join adres on pracownicy.adres_id = adres.id where kod_pocztowy = '66-666';