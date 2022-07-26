select
  count(cancaoId) as 'quantidade_musicas_no_historico'
from
  SpotifyClone.HistReproducao as hist
  inner join SpotifyClone.ContaUsuarios as uc on uc.usuarioId = hist.usuarioId
where
  usuario like 'Bill';