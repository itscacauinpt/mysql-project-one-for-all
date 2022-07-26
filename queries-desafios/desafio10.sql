select
  c.cancao as 'nome',
  count(hist.dataReproducao) as 'reproducoes'
from
  SpotifyClone.HistReproducao as hist
  inner join SpotifyClone.ContaUsuarios as uc on uc.usuarioId = hist.usuarioId
  inner join SpotifyClone.Cancoes as c on c.cancaoId = hist.cancaoId
  inner join SpotifyClone.Planos as p on p.planoId = uc.planoId
where
  p.plano in('gratuito', 'pessoal')
group by
  c.cancao;