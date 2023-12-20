-- Selezionare cognome e nome tutti gli insegnanti, ordinati per cognome e poi per nome in ordine alfabetico (100)
select *
from teachers t 
order by surname asc;

select *
from teachers t 
order by name asc;


-- Selezionare tutti gli insegnamenti (courses) che valgono almeno 12 crediti (cfu) (375)
select *
from courses c 
where c.cfu >= 12;