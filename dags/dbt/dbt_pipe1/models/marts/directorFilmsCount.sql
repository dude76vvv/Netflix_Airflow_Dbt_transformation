select directors, count(*) as production_count
from {{ ref('int_netflixShows') }}
group by directors
