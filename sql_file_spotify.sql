#Which artist has the most songs in the top streamed list of 2023?
select artist_name, count(*) as song_count from spotify_dataset.spotify_2023
where released_year = 2023 
group by artist_name
order by song_count desc 
limit 1

#What is the average number of streams for songs released in each month of 2023?
select released_month, 
case when released_month=1 then "January"
	 when released_month=2 then "February"
     when released_month=3 then "March"
     when released_month=4 then "April"
     when released_month=5 then "May"
     when released_month=6 then "June"
     when released_month=7 then "July"
     end as Month_name, 
round(avg(streams), 0) as avg_streams 
from spotify_dataset.spotify_2023
where released_year = 2023
group by 1
order by 1 

#Are songs with higher danceability percentages generally more popular (i.e. have more streams)?


#What percentage of songs in the 'Top Spotify Songs 2023' were actually released in 2023?
