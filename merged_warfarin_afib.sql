with afib_tab(person_id,afib_start_date) as (select person.person_id,min(condition_start_date) as firstafib
from person
join condition_occurrence on condition_occurrence.person_id=person.person_id
where condition_concept_id =313217 
group by person.person_id),

warfarinfirst(person_id,warf_start_date) as (select person_id, min(drug_exposure_start_date) as firstdate
from drug_exposure
left join concept_ancestor on concept_ancestor.descendant_concept_id = drug_exposure.drug_concept_id
where ancestor_concept_id =1310149
group by person_id) 
select afib_tab.person_id
from warfarinfirst
join afib_tab on afib_tab.person_id=warfarinfirst.person_id
where afib_tab.afib_start_date < warfarinfirst.warf_start_date





select *
from warfarinfirst



select *
from warfarinfirst
join afib_tab on afib_tab.person_id=warfarinfirst.person_id
where afibtab_firstafib > warfarinfirst_firstdate



