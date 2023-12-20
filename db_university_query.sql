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


-- Selezionare nome, cognome e codice fiscale di tutti gli studenti iscritti al Corso di Laurea in Economia, in ordine alfabetico
select s.name, s.surname, s.fiscal_code
from students s 
order by s.surname, s.name asc;


-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
select *
from `degrees` d  
join departments d2 on d.department_id = d2.id 
where d.`level` = 'magistrale' and d2.name = 'Dipartimento di Neuroscienze';


-- Selezionare nome e cognome di tutti gli studenti che hanno superato l’esame del corso “maxime laboriosam nostrum” (39)
select s.name as name_student, s.surname as surname_student, es.vote as vote_student, c.name as course_name
from students s 
join exam_student es on es.student_id = s.id 
join exams e on e.id = es.exam_id 
join courses c on c.id = e.course_id 
where c.name = 'maxime laboriosam nostrum' and es.vote >= '18';


-- Elencare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
select distinct  t.name as name_teacher, t.surname as surname_teacher
from teachers t 
join course_teacher ct on ct.teacher_id = t.id 
join courses c on c.id = ct.course_id 
join `degrees` d on d.id = c.degree_id 
join departments d2 on d2.id = d.department_id  
where d2.name = 'Dipartimento di Matematica';