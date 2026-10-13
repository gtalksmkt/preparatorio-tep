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
| Números do hero (+80 aulas, +120h, +1.500 questões, +600 flashcards) | `.hero-stats` |
| Datas da turma, da prova e prazo de inscrição (2027) | hero, `#curso`, `#prova`, CTA final |
| Preço (12x R$ 249,70 · R$ 2.497 à vista) | `#curso` e `#pricing` |
| Quantidade de questões e flashcards | cards da seção `#estrutura` |
| Depoimentos | seção `#depoimentos` — devem vir de alunos dos outros preparatórios do Grupo Talks |
| ID do vídeo do YouTube | var `VIDEO_ID` no `<script>` |
| Links de checkout | var `LINKS` no `<script>` (hoje todos apontam para o WhatsApp) |
| E-mail de contato | rodapé — confirmar se continua `contato@emergencytalks.com.br` |

## Regras do produto (decididas com o cliente)

- **Só existe o Preparatório TEP.** O Preparatório R+ foi descontinuado em 13/10/2026
  e não deve voltar à página em nenhuma seção.
- **Não citar número de aulas por semana** — usar "aulas semanais" até o dia da prova.
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
