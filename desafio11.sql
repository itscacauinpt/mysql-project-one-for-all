select
 cancao as 'nome_musica',
 case
 	when cancao like '%Streets%' then replace(cancao, 'Streets', 'Code Review')
    when cancao like '%Her Own%' then replace(cancao, 'Her Own', 'Trybe')
    when cancao like '%Inner Fire%' then replace(cancao, 'Inner Fire', 'Project')
    when cancao like '%Silly%' then replace(cancao, 'Silly', 'Nice')
    when cancao like '%Circus%' then replace(cancao, 'Circus', 'Pull Request')
 end as 'novo_nome'
 from SpotifyClone.Cancoes
 where cancao LIKE '%Streets' OR cancao LIKE '%Her Own' OR cancao LIKE '%Inner Fire' OR cancao LIKE '%Silly' OR cancao LIKE '%Circus'
 order by novo_nome;