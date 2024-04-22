
select rating, count(*) as rating_count
from {{ref('int_netflixShows')}}
where country ='United States'
group by rating
order by rating_count desc