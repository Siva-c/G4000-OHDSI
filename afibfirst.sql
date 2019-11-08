select person.person_id,min(condition_start_date) as firstafib
from person
join condition_occurrence on condition_occurrence.person_id=person.person_id
where condition_concept_id =313217 
group by person.person_id

