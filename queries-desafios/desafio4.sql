select
  uc.usuario,
  case
    when max(year(hist.dataReproducao)) = 2021 then 'Usuário ativo'
    else 'Usuário inativo'
  end as 'condicao_usuario'
from
  SpotifyClone.ContaUsuarios as uc
  inner join SpotifyClone.HistReproducao as hist on hist.usuarioId = uc.usuarioId
group by
  usuario;