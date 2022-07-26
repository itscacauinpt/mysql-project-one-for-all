select
  ar.artista,
  al.album,
  count(sar.usuarioId) as 'seguidores'
from
  SpotifyClone.Artistas as ar
  inner join SpotifyClone.Albuns as al on ar.artistaId = al.artistaId
  inner join SpotifyClone.SeguindoArtistas as sar on sar.artistaId = ar.artistaId
group by
  artista,
  album
order by
  seguidores desc,
  artista,
  album;