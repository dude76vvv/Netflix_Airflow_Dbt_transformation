-- select and get useful columns 
-- replace columns of null values with unknown


select title, 
COALESCE(director,'unknown') as directors,
COALESCE(cast_members,'unknown') as casts,
COALESCE(rating,'unknown') as rating,
COALESCE(type,'unknown') as show_type,
COALESCE(country,'unknown') as country,
COALESCE(listed_in,'unknown') as genres,
date_added,
release_year,
date_part('month',date_added) as month_release, 
TO_CHAR(date_added, 'YYYY-MM') as yr_month_added


from {{ ref('stg_netflixShows') }}