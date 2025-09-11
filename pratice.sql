#find the city name the country code and the country name where the country population is greater then 50k
#get the district and the total population for each country 
# get the total no. of countrires present in continent having there indipendce after 1920
# get the avg surfaace area the total population , avg life expentancy and te totsl no. of continents availble for each region
use world;

select code, name,
	if( name="Aruba","Terror country", if(name="Angola","Terroist","Tourism" ) ),
	indepyear from country;

select name,indepyear, ifnull(indepyear,0) from country;

select count(indepyear), count(ifnull(indepyear,0)) from country;

select name, continent, nullif(length(name),length(continent) ) from country;

select * from country;

select name , population,
	case
		when population>200000 then 'developed country'
        when population >100000 then 'developing country'
	else 'underdeveloped'
    end as countrystatus
    from country;