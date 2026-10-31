# eliasgranja.com.br

Site pessoal de Elias Granja: ensaios em português sobre soberania digital,
infraestrutura pública e política tecnológica. Gerado com
[Squid](https://github.com/era/squid), o gerador de sites estáticos e
[TinyLang](https://github.com/era/tinylang).

O site é HTML e CSS puros: sem JavaScript, sem rastreadores e sem fontes
externas.

## Estrutura

```
config.toml          configuração do site (nome, URL, idioma, descrição)
markdown/posts/      artigos em Markdown com frontmatter YAML
templates/           páginas e parciais em TinyLang
static/              CSS, favicon, robots.txt e a página 404
output/              site gerado (não edite à mão)
```

## Desenvolvimento

O `squid` precisa estar no `PATH`.

```sh
make serve    # http://127.0.0.1:8080, com recarga automática e drafts
make build    # gera output/ para publicação
```

## Escrever um artigo

```sh
make new title=meu-artigo
```

Isso cria `markdown/posts/meu-artigo.md`. Preencha o frontmatter e escreva o
corpo. O template já gera o `<h1>` e os metadados, então comece as seções com
`##`.

```markdown
---
title: "Título do artigo"
date: 2026-10-30
author: Elias Granja
excerpt: "Uma frase que apareça na listagem e no feed RSS."
---
```

- `excerpt` é usado na listagem, no feed e nas prévias de link.
- A home lista todos os posts em ordem cronológica inversa.
- Datas no futuro e artigos com `draft: true` ficam fora do build, a menos que
  você rode `make serve`.

## Publicação

`make build` gera o site completo em `output/`. Envie o conteúdo dessa pasta
para qualquer hospedagem estática. A configuração de URLs bonitas
(`pretty_urls = true`) produz caminhos como `/posts/meu-artigo/`; o servidor
precisa servir `index.html` dentro dessas pastas. A página de erro está em
`404.html`, na raiz de `output/`.

O Squid também gera `rss.xml` e `sitemap.xml` automaticamente.
