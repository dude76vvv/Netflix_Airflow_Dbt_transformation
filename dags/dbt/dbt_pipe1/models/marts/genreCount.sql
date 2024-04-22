select rating,count(*) as count
from {{ ref('int_netflixShows') }}
group by rating