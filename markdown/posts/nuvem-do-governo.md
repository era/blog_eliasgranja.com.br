---
title: Nuvem de Governo, Relatório do Tribunal de contas da União
date: 2026-11-01
---

A Serpro [está](https://www.serpro.gov.br/menu/noticias/noticias-2026/forum-rnp-2026) utilizando a infraestrutura de parceiros como a Huawei e AWS (e do Google) em seus datacenters. Garantindo assim o acesso a software e hardware de grandes empresas mundiais, mas sob o controle nacional. A idéia não é nova, sendo inclusive um dos principais negócios da Huawei com empresas de telecomunicação. Porém, a utilização dos provedores estadunidenses colocam em risco a soberania nacional como [explicado no relatório do tribunal de contas da União](https://static.poder360.com.br/uploads/2026/06/Acordao-1380-de-2026-Plenario.pdf) e explicado aqui com a minha opinião ténica, vale-se ressaltar que a minha opinião deriva tanto do relatório quanto de experiência profissional: um engenheiro de software que trabalhou 4 anos na AWS e 2 anos na Huawei Cloud.

Nesse texto tudo que se encontra entre aspas ou como citação são partes do relatório a menos que outra fonte seja atribuída no texto. 

# O que é?

Na AWS esse serviço é nomeado "[AWS Outpost](https://aws.amazon.com/outposts/rack/)", já na Huawei é conhecido como "[Huawei Cloud Stack](https://www.huaweicloud.com/intl/en-us/product/huaweicloudstack.html)". A ideia é basicamente enviar racks com toda a infraestrutura (hardware e software) para ser instalado no data-center do contratante. Seria como uma "mini-região" dessas clouds rodando diretamente no data-center do governo.

A nuvem da Huawei foi colocada como um risco por governos de diversos países por causa de acusações infudadas do governo estaduniense e por conta disso um dos modelos que a empresa investe há anos é o modelo onde a Huawei é responsável pela entrega do hardware e software integrados e suporte, enquanto que o gerencialmente dela é feito por terceiros.

O [governo](https://static.poder360.com.br/uploads/2026/06/Acordao-1380-de-2026-Plenario.pdf) define os modelos de implementação da computação em nuvem em: pública (infraestrutura compartilhada, disponibilizados a qualquer pessoa ou organização), privada (infraestrutura dedicada a uma única organização), híbrida (combina elementos de nuvens públicas e privadas) e “nuvem soberana” (ou “nuvem de governo” para organizações públicas), que é projetado para atender às necessidades de setores estratégicos, públicos e privados, buscando segurança, conformidade regulatória e soberania. Esse modelo de nuvem preconiza que as organizações armazenem e processem informações consideradas essenciais dentro de uma infraestrutura que segue normas rígidas de proteção de dados, territorialidade e controle de acesso.

## Requisitos

Os requisitos são fortemente baseados no relatório da Gartner "[Sovereign Cloud: Understand and Address Sovereignty Requirements](https://www.gartner.com/en/documents/5417163)" de 2024, com três princípios fundamentais, como definido em [TC 008.857/2025-3](https://static.poder360.com.br/uploads/2026/06/Acordao-1380-de-2026-Plenario.pdf):

### Soberania de dados

>  informação está sujeita às regras de sua jurisdição de origem. Isso implica localização física dos data centers, controle sobre o movimento de dados e capacidade de contestar ou recorrer a solicitações de dados por autoridades estrangeiras. A criptografia com chaves controladas pelo cliente é um mecanismo importante desse princípio, bem como a territorialidade dos dados.

### Soberania operacional

> refere-se ao grau de transparência e controle que o cliente tem
sobre as operações do provedor. Pode ser alcançada quando o provedor mantém equipes e estruturas
dedicadas e isoladas (p.ex. por meio de parceiros locais), com mecanismos de gestão e unidades
operacionais independentes e com capacidade de operar sem depender da infraestrutura global do
provedor

### Soberania tecnológica

> trata da autonomia de longo prazo no uso de serviços em nuvem, mitigando o risco de interrupção ou de dependência tecnológica (vendor lock-in). As soluções incluem a capacidade de trazer cargas de trabalho de volta para dentro da própria organização, acesso ao código-fonte ou garantia de execução em hardware padrão da indústria.

## Custos

Aproxidamantemente 1,1 bilhão de reais será investido, dentre eles Serpro irá investir R$ 640 milhões entre 2025 e 2032, enquanto a Dataprev estimou investimentos de cerca de R$ 480 milhões no período de cinco anos.

# Soberania Digital

Do ponto de vista da soberania, esse tipo de serviço é extremamente importante, mas não o suficiente. Ele garante a privacidade necessária para processar dados dos brasileiros com a certeza que governos estrangeiros não estejam espionando (na teoria). Porém eles são uma solução de curto prazo: o governo ainda fica refém da empresa de nuvem, ainda precisa pagar a empresa e não desenvolve soluções nacionais. Decisões do fornecedor podem afetar a operação do ambiente local, em outras palavras a empresa pode vir a cortar o serviço.

A portaria SGD/MGI 5.950/2023i que preve a implementação da nuvem do governo é clara quanto aos seus objetivos: (1) aumentar o nível de segurança e a privacidade dos dados dos cidadãos, (2) assegurar a autonomia tecnológica nacional e (3) cumprir a Lei Geral de Proteção de Dados (LGPD). 

Utilizando a Huawei Cloud Stack, o governo assegura os objetivos (1) e (3), mas não necessariamente o (2) dado que ainda depende de orgãos estrangeiros.

Não somente isso, mas o proprio relatório do governo deixa claro o risco que existe por conta da necessidade de algumas dessas stacks "ainda que instaladas localmente, dependerem (em algumas situações) de planos de controle (Control Plane), serviços de gestão, monitoramento e telemetria associados a regiões públicas ou estruturas do provedor, exigindo conectividade contínua para funções essenciais de operação".

"Nessa configuração, indisponibilidades, restrições técnicas ou decisões do fornecedor podem afetar a operação do ambiente local, sendo que a autonomia do Estado fica condicionada a serviços que, em última instância, respondem à governança corporativa e ao regime jurídico de outro
país."

Como disse, a Huawei está há anos no mercado e por conta da situação geopolítica fornece maior independência permitindo operação local, embora mantenha dependência tecnológica do fornecedor, enquanto que a AWS e o Google (como o próprio relatório do TCU diz) "AWS Outposts e
Google Distributed Cloud apresentam aderência parcial aos critérios de soberania por dependerem de conectividade contínua e do envio de metadados para regiões públicas, o que limita a autonomia operacional e tecnológica."

O contrato com a AWS é ainda pior: "Especificamente nos contratos associados à solução AWS Outposts, identificou-se que a empresa poderá divulgar dados do cliente para cumprir lei ou ordem válida e vinculante de um órgão governamental, sem delimitar que tal autoridade deve ser exclusivamente brasileira". "Tal redação permite interpretações que admitam a submissão a ordens de autoridades
 estrangeiras sob legislações como o CLOUD Act dos Estados Unidos, o que constitui um risco à soberania dos dados brasileiros".

# Aspectors técnicos

Como muito bem identificado pelo tribunal de contas da União. Os grandes provedores de nuvem públicas oferecem mutiplas Availability Zones (AZ) e regiões. Essa redundância geográfica garantem high-availability em casos como desastres naturais, falhas de energia, ataques cybernéticos. Além de reduzir os riscos de perda de dados em caso falhas no data-center. A Portaria SGD/MGI 5.950/2023 obriga os provedores de nuvem a possuir, no mínimo, dois data centers em território brasileiro, capaz de ofertar serviços padronizados e altamente automatizados, nos quais os recursos de infraestrutura (por exemplo, computação, rede e armazenamento) são complementados por serviços de plataforma integrados, e deve cumprir os requisitos de segurança da informação. Porém o relatório aponta pela falta dessa redundância: "as soluções da AWS, da Huawei e do Google encontram-se disponíveis exclusivamente no data center de Brasília".

"É importante ressaltar que tal risco não decorre da inexistência de múltiplos data centers pelas empresas públicas responsáveis pela operação da nuvem de governo, mas da ausência de disponibilização efetiva de redundância geográfica de parte das soluções de computação em nuvem ofertadas aos órgãos e entidades."

## Falta de documentos

Não existe hoje um catalógo com todas as funcionalidades disponiveís na nuvem do governo brasileiro: "Há catálogos exemplificativos publicados no portal eletrônicoiv da SGD/MGI, com base em ofertas de nuvem pública (AWS, Azure, Google, Huawei, IBM, Oracle, Tencent), mas não há clareza suficiente sobre quais desses serviços estão efetivamente disponíveis na nuvem de governo e em quais condições (peça 64, p. 2). Sem essa distinção, o órgão contratante pode planejar migração de cargas de trabalho para a nuvem de governo com base em uma lista teórica e só descobrir as limitações durante a execução, aumentando o risco de retrabalho, celebração de aditivos e tomada de
decisões ineficientes."
