lugar(japao).
lugar(america_do_sul).
lugar(argentina).
lugar(reino_unido).

acontecimento(guerra_do_portao_do_ceu).

localizacao(heavens_Gate,america_do_sul).
localizacao(hells_Gate,japao).

territorio(X) :- localizacao(X,_).

classe(doll).
classe(contratante).
classe(humano).

personagem(X):- possui(X,classe(_)).

contratantes(X):-possui(X,classe(contratante)).
dolls(X):-possui(X,classe(doll)).
humanos(X):-possui(X,classe(humano)).

organizacao(sindicato).
organizacao(pandora).
organizacao(evening_primrose).
organizacao(mi6).
organizacao(cia).

possui(X,Y):- caracteristica_da_classe(Y,Z),possui(X,Z).

possui(hei,classe(contratante)).
possui(hei,messierCode(bk201,hei)).
possui(yin,classe(doll)).
possui(havoc,classe(contratante)).
possui(amber,classe(contratante)).
possui(bai,classe(contratante)).
possui(mao,classe(contratante)).
possui(november_eleven,classe(contratante)).
possui(misaki,classe(humano)).
possui(huang,classe(humano)).

caracteristica_da_classe(contrato,classe(contratante)).
caracteristica_da_classe(egoismo,classe(contratante)).
caracteristica_da_classe(poderes_sobrenaturais,classe(contratante)).
caracteristica_da_classe(necessidade_de_matar,classe(contratante)).
caracteristica_da_classe(reconhecimento_de_territorio,classe(doll)).
caracteristica_da_classe(sem_emocoes,classe(doll)).
caracteristica_da_classe(mediunidade,classe(doll)).
caracteristica_da_classe(sem_capacidade_de_escolha,classe(doll)).
caracteristica_da_classe(usa_instintos,classe(humano)).

messierCode(bk201,hei).
messierCode(bk201,bai).
messierCode(ub001,amber).

contrato(movimento_atomico,hei).
contrato(possuir_corpos,maos).
contrato(criacao_de_vacuo,havoc).
contrato(congelar_liquidos,november_eleven).
contrato(movimento_atomico,nick_hileman).
contrato(controla_o_tempo,amber).

pagamento(nao_possui_sinais,hei).
pagamento(beber_sangue_de_criancas,havoc).
pagamento(fumar,november_eleven).
pagamento(por_sapatos_virados_para_baixo,nick_hileman).
pagamento(rejuvenescer,amber).

funcao_na_organizacao(supervisor_de_campo,huang).
funcao_na_organizacao(chefe_em_campo,november_eleven).
funcao_na_organizacao(agente_infiltrado,nick_hileman).

trabalha(huang,sindicato).
trabalha(bai,sindicato).
trabalha(yin,sindicato).
trabalha(hei,sindicato).
trabalha(november_eleven,mi6).
trabalha(nick_hileman,cia).
trabalha(amber,mi6).
trabalha(amber,sindicato).

fato(escolhe_trabalhar_com_hei,yin).

consequencia(Y,Z):-causa(Z,Y).
consequencia(Y,Z):- causa(Y,X),consequencia(Z,X),!.

causa(acontecimento(guerra_do_portao_do_ceu),bai_e_amber_desaparece).
causa(bai_e_amber_desaparece,hei_pede_ajuda_havoc_para_encontrar_bai).
causa(acontecimento(guerra_do_portao_do_ceu),bai_transfere_poderes_para_Hei).
causa(bai_transfere_poderes_para_hei,hei_se_torna_contratante).
causa(acontecimento(guerra_do_portao_do_ceu),bai_transfere_messierCode_para_Hei).
causa(acontecimento(guerra_do_portao_do_ceu),havoc_perde_memoria).
causa(acontecimento(guerra_do_portao_do_ceu),matou(havoc,'100000 pessoas')).
causa(acontecimento(guerra_do_portao_do_ceu),heavens_gate_desparece).
causa(acontecimento(guerra_do_portao_do_ceu),reino_unido_deixa_supervisao_de_heavens_gate_para_pandora).
causa(acontecimento(guerra_do_portao_do_ceu),amber_cria_evening_primrose).
causa(acontecimento(guerra_do_portao_do_ceu),havoc_e_transportada_para_pandora).
causa(havoc_e_transportada_para_pandora,havoc_e_sequestrada).
causa(havoc_e_sequestrada,matou(november_eleven,havoc)).
causa(havoc_e_sequestrada,mi6_envia_tres_operativos_para_recupear_havoc).
causa(hei_se_infiltra_em_pandora,amigo(nick_hileman,hei)).
causa(hei_se_infiltra_em_pandora,nick_e_hei_combaterem_pelo_fragmento_de_meteoro).
causa(nick_e_hei_combaterem_pelo_fragmento_de_meteoro,nick_desaparece_quando_o_artefacto_e_ativado).

irmaos(hei,bai).

regressor(X):-perdeuPoderes(X),queriaSerHmano(X).

perdeuPoderes(havoc).

perdeuCorpo(mao).

queriaSerHumano(havoc).

amigo(nick_hileman,hei).

criou(amber,evening_primrose).

matou(november_eleven,havoc).
matou(havoc,'100000 pessoas').
