SELECT * FROM count.smartphone_usage_full_cleaned;
drop table count.resultsssss;
delete from count.smartphone_usage_full_cleaned
where addiction_level='nan';
delete from count.smartphone_usage_full_cleaned
where gender='Other';
rename table count.smartphone_usage_full_cleaned to clean;
describe clean;
select * from clean;
select clean.transaction_id,clean.user_id,clean.age,clean.gender,clean.stress_level,clean.academic_work_impact,clean.addicted_label
from clean
inner join usa
    on clean.age=usa.age
order by  gender
limit 1,1000;
-- in here i need stress_level is Low
select * from clean
where stress_level='Low'
limit 1, 1000;
-- in here i choose age is grater than 30 and this employes should be worked  
select clean.transaction_id,clean.user_id,clean.age,clean.gender,clean.stress_level,clean.academic_work_impact,clean.addicted_label
from clean
inner join usa
    on clean.age=usa.age
where clean.stress_level='Low' and clean.age>='30' and clean.academic_work_impact='Yes'   
order by  clean.gender
limit 1,1000;