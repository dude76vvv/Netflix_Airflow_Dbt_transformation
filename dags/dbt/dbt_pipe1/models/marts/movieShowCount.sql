select show_type, count(*) as show_type_count
from {{ ref('int_netflixShows') }}
group by show_type
order by show_type_count desc