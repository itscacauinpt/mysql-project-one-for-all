select
  c.cancao,
  count(hist.cancaoId) as 'reproducoes'
from
  SpotifyClone.HistReproducao as hist
  inner join Cancoes as c on hist.cancaoId = c.cancaoId
group by
  c.cancao
order by
  reproducoes desc,
  c.cancao
limit
  2;