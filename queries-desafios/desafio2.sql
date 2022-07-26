select
  count(c.cancaoId) as 'cancoes',
  count(distinct al.artistaId) as 'artistas',
  count(distinct c.albumId) as 'albuns'
from
  SpotifyClone.Cancoes as c
  inner join SpotifyClone.Albuns as al on al.albumId = c.albumId
  inner join SpotifyClone.Artistas as ar on al.artistaId = ar.artistaId;