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

-- Selezionare tutti gli studenti nati nel 1990 (160)
select *
from students s 
where year(date_of_birth) = '1990';


-- Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
select *
from courses c 
where c.period = 'I semestre' and c.`year` = '1';


-- Da quanti dipartimenti è composta l’università?
select count(*) as total_departments
from departments d ;


-- Contare tutti gli insegnanti il cui cognome termina con la “E” (8)
select *
from teachers t 
where t.surname like '%E';