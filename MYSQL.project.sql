SELECT * FROM `covid-19`.covid_19;
select Country,WHO_region,New_deaths,Cumulative_cases
from `covid-19`.covid_19;

--we are change table name
RENAME TABLE `covid-19`.covid_19 TO covid_19;
select * from covid_19;
select Country,WHO_region,New_deaths,Cumulative_cases
from `covid-19`.covid_19;
select * from covid_19;


# Here died people
select Country,WHO_region,sum(New_deaths),sum(Cumulative_deaths),(sum(New_deaths)/sum(Cumulative_deaths)*100)as died_infliktion
from covid_19
group by Country,WHO_region;

--in here choose all cloumns
select * from covid_19;



--in here we see precent of Cumulative
select Country,WHO_region,sum(New_cases),sum(Cumulative_cases),(sum(New_cases)/sum(Cumulative_cases)*100) as percent_cases
from covid_19
group by country,WHO_region;



--in here we are know sum of cumulative
select Country,WHO_region,sum(Cumulative_cases)
from covid_19
group by Country, WHO_region;





