select
  uc.usuario,
  count(historicoId) as 'qtde_musicas_ouvidas',
  format(sum(duracaoS) / 60, 2) as 'total_minutos'
from
  SpotifyClone.ContaUsuarios as uc
  inner join SpotifyClone.HistReproducao as hist on hist.usuarioId = uc.usuarioId
  inner join SpotifyClone.Cancoes as c on c.cancaoId = hist.cancaoId
group by
  usuario;