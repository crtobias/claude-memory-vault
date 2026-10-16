---
type: guide
tags: [agentes, guia]
updated: 2026-10-16
---

> [[Index — Agentes|Agentes]]

# Cómo crear agentes

> Crear, editar y ver agentes y skills de Claude Code en este vault.

## Agente o skill

- **Skill** → corre en tu charla y te puede hacer preguntas. Ej.: [[inicio]].
- **Agente** → trabaja aparte y te devuelve el resultado. No pregunta.

Si tiene que preguntarte algo, hacelo skill.

## Dónde viven

- El `.md` real va en `Agentes/`, así lo ves en Obsidian.
- Claude Code lo busca en `.claude/`, que Obsidian no muestra. Por eso ahí va un **symlink** que apunta a `Agentes/`.

## Crear uno (pidiéndoselo a Claude)

Abrí Claude Code en la carpeta del vault y decile, por ejemplo:

> Creame un skill `diario` que me arme la entrada de hoy y me haga 3 preguntas. Guardalo en Agentes/ con su symlink y sumalo al índice.

Claude escribe el archivo, crea el symlink y lo agrega a [[Index — Agentes]].

## Crear uno (a mano)

1. Creá `Agentes/<nombre>.md` con esto arriba:
   ```
   ---
   name: <nombre>
   description: Qué hace y cuándo usarlo. Claude lo elige leyendo esto.
   ---
   ```
   Para un agente sumá `model: sonnet`.
2. Abajo escribí los pasos, numerados y cortos.
3. Hacé el symlink desde la carpeta del vault:
   - Skill:
     ```bash
     mkdir -p .claude/skills/<nombre> && ln -s ../../../Agentes/<nombre>.md .claude/skills/<nombre>/SKILL.md
     ```
   - Agente:
     ```bash
     ln -s ../../Agentes/<nombre>.md .claude/agents/<nombre>.md
     ```
4. Sumalo a [[Index — Agentes]].

## Editar uno

- Abrilo en `Agentes/` desde Obsidian y cambiá lo que quieras. El symlink apunta al mismo archivo, así que no tenés que hacer nada más.
- O pedíselo a Claude: "en el skill diario, que haga 2 preguntas en vez de 3".
- Los cambios se ven en la próxima sesión de Claude Code.

## Ver los que tenés

- En Obsidian: [[Index — Agentes]].
- En Claude Code: escribí `/` para ver los skills, o `/agents` para ver los agentes.
- Para usar uno: escribí `/<nombre>`, o pedí lo que hace y Claude lo elige solo.
