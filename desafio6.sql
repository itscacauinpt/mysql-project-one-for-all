select
  min(valor) as 'faturamento_minimo',
  max(valor) as 'faturamento_maximo',
  format(avg(valor), 2) as 'faturamento_medio',
  sum(valor) as 'faturamento_total'
from
  SpotifyClone.Planos as p
  inner join SpotifyClone.ContaUsuarios as uc on uc.planoId = p.planoId;