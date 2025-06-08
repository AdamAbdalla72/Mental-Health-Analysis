select * 
from `student mental health` ;

select max(Age), min(Age) from `student mental health`;

select  distinct `What is your course?` 
from `student mental health`;


select  `Choose your gender`, count(*) AS 'Marriage_rate_by_gender'
from `student mental health`
where `Marital status` = "Yes"
group by `Choose your gender`
;

select * from `student mental health`;

select `Do you have Depression?`, 
count(`Do you have Depression?`) As "depression_rate"
 from `student mental health`
 group by `Do you have Depression?`;

select `Do you have Depression?`, `Choose your gender` , count(*) 
As depression_rate
from `student mental health`
where `Do you have Depression?` = "Yes"
group by `Do you have Depression?`, `choose your gender`
;

select `What is your course?`,count(*) AS depression_rate_by_course
from `student mental health`
where `Do you have Depression?` = "Yes"
group by `What is your course?`
order by count(*) DESC
;

select `What is your course?`,count(*) 
AS nondepressed_students_rate_by_course
from `student mental health`
where `Do you have Depression?` = "No"
group by `What is your course?`
order by count(*) DESC
;



select * from `student mental health`;

select `Do you have Panic attack?`, `Choose your gender` , count(*) 
As panic_attack_rate
from `student mental health`
where `Do you have panic attack?` = "Yes"
group by `Do you have Panic attack?`, `choose your gender`
;

select `What is your course?`,`Do you have Panic attack?`,count(*) 
AS panic_attacks_rate_by_course
from `student mental health`
where `Do you have Panic attack?` = "Yes"
group by `What is your course?`
order by panic_attacks_rate_by_course DESC
;



select * from `student mental health`;

select `Do you have Anxiety?`, `Choose your gender` , count(*) 
As Anxiety_rate
from `student mental health`
where `Do you have Anxiety?` = "Yes"
group by `Do you have Anxiety?`, `Choose your gender`
;


select `What is your course?`,`Do you have Anxiety?`,count(*) 
AS Anxiety_rate_by_course
from `student mental health`
where `Do you have Anxiety?` = "Yes"
group by `What is your course?`
order by Anxiety_rate_by_course DESC;





with `row_number` As ( select *, row_number () over() As student_number
from `student mental health`
)
select *, row_number() over() As `index` from `row_number`
where `Do you have Depression?` = "Yes" 
and `Do you have Panic attack?` = "Yes"
and `Do you have Anxiety?` = "Yes"
order by `index`
 ;

with `row_number` As ( select *, row_number () over() As student_number
from `student mental health`
)
select *, row_number() over() As `index` from `row_number`
where `Do you have Depression?` = "Yes" 
or `Do you have Panic attack?` = "Yes"
or `Do you have Anxiety?` = "Yes"
order by `index`
 ;


select *, row_number() over() 
As `index`
from `student mental health`
where `Did you seek any specialist for a treatment?` = "Yes"
;





