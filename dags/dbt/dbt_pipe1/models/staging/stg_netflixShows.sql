-- one to one from source

SELECT *
from {{source('netflixPg', 'netflix_shows')}}

-- SELECT *
-- FROM netflix_shows