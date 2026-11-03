# Preparatório TEP — Ped Talks

Landing do preparatório para o **Título de Especialista em Pediatria (TEP)**.
Turma 2027.

🔗 **Página publicada:** https://gtalksmkt.github.io/preparatorio-tep/

> ⚠️ **Versão de aprovação.** Preços, datas, números e depoimentos ainda são
> **fictícios**. A página está com `noindex` para não aparecer em buscas — remover a
> meta tag `robots` do `index.html` quando os dados reais entrarem.

## O que precisa ser trocado antes de publicar de verdade

Tudo está marcado com a palavra `FICTICIO` em comentários dentro do `index.html`
(há um resumo no topo do arquivo). Em resumo:

| Item | Onde |
|---|---|
| Mês da prova e prazo de inscrição (2027) | `#curso`, CTA final |
| Ementa (14 módulos) | seção `#ementa` — confirmar se reflete o curso real |
| Depoimentos | seção `#depoimentos` — devem vir de alunos dos outros preparatórios do Grupo Talks |
| ID do vídeo do YouTube | var `VIDEO_ID` no `<script>` |
| Links de checkout | var `LINKS` no `<script>` (hoje todos apontam para o WhatsApp) |
| E-mail de contato | rodapé — confirmar se continua `contato@emergencytalks.com.br` |

## Preço por lotes (valores reais)

Divulgado em **6x sem juros**. O lote aberto é escolhido pela data (horário de Brasília)
e vira sozinho à meia-noite; só ele mostra o valor, os seguintes aparecem trancados com a
data de abertura, e um contador marca quanto falta para a virada.

| Lote | Abre em | Total | 6x de |
|---|---|---|---|
| Lançamento | 20/11/2026 | R$ 2.499,90 | R$ 416,65 |
| 1º lote | 01/12/2026 | R$ 2.799,90 | R$ 466,65 |
| 2º lote | 01/01/2027 | R$ 3.099,90 | R$ 516,65 |
| 3º lote | 01/02/2027 | R$ 3.399,90 | R$ 566,65 |

Para mudar valor ou data, edite só a var `LOTES` no `<script>` do `index.html`.
Antes de 20/11 a página já mostra o Lançamento.

## Números do curso (confirmados pela diretoria em 03/11/2026)

| | |
|---|---|
| Aulas em vídeo | 95 |
| Aulas novas por semana | 4, toda segunda às 12h |
| Semanas de liberação | 24, de 04/01 a 14/06/2027 |
| Questões no banco | 950 (10 por aula) |
| Flashcards | 1.900 (20 por tema) |
| Simulados | 4, um a cada 6 semanas de aula |

Liberação gradual: questões e flashcards entram junto com as aulas de cada temática,
toda segunda às 12h. Aparecem no hero, no bloco de números de `#curso`, nos cards de
`#estrutura`, na lista do plano e no FAQ — ao mudar um número, trocar em todos.

## Regras do produto (decididas com o cliente)

- **Só existe o Preparatório TEP.** O Preparatório R+ foi descontinuado em 13/10/2026
  e não deve voltar à página em nenhuma seção.
- **Ritmo das aulas:** 4 aulas novas por semana, toda segunda às 12h (confirmado pela
  diretoria em 03/11/2026; substitui a regra antiga de não citar o número por semana).
  A liberação vai até 14/06/2027 — não dizer "aulas até o dia da prova"; o que vai até
  a prova é o **acesso**.
- **Não alegar resultado** (nº de aprovados, % de aprovação, tempo de casa): o curso
  começa em 2027. A prova de valor é o volume de conteúdo.
- **Não existe garantia de reembolso.**
- O **currículo acadêmico das professoras já é real** (CRM, RQE, formação, residências,
  atuação e preceptoria) — não substituir por placeholder.

## Rodar localmente

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File server.ps1
```

Abre em http://localhost:8099.

## Arquivos

```
index.html          landing completa (HTML/CSS/JS, sem build)
logo-pedtalks.png   logo branca com transparência
professoras.png     foto do hero (Rebecca + Natália)
rebecca.png         retrato da seção de professoras
natalia.png         retrato da seção de professoras
server.ps1          servidor estático para preview local
```

Paleta: preto `#040405` + azul `#0074F2` (azul claro `#5AA6FF` para texto pequeno).
Tipografia: DM Sans.
Ícones: sprite SVG único no topo do `<body>` (`<svg><use href="#i-nome"/></svg>`) — sem
imagens nem bibliotecas extras, para a página continuar leve. Os números com `data-count`
contam do zero quando aparecem na tela.
