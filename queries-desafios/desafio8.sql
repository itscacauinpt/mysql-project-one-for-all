select
  artista,
  album
from
  SpotifyClone.Artistas as ar
  inner join SpotifyClone.Albuns as al on al.artistaId = ar.artistaId
where
  artista like 'Walter Phoenix'
order by
  album;