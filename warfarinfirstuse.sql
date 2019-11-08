with warfarinfirst as (select person_id, min(drug_exposure_start_date) as firstdate
from drug_exposure
left join concept_ancestor on concept_ancestor.descendant_concept_id = drug_exposure.drug_concept_id
where ancestor_concept_id =1310149
group by person_id) 
select *
from warfarinfirst;