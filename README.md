# Claude Memory Vault

> Un vault de Obsidian que se arma solo, a tu medida, la primera vez que lo abrís con Claude Code.

La primera vez, el agente de inicio te hace unas preguntas cortas y arma todo: carpetas, tu perfil, cómo querés que te hable, agentes y herramientas.

## Qué es

**Una memoria pensada para que la use la IA, no la persona.**

Vos no tenés que ordenar nada. Hablás con la IA, le decís "guardalo", y ella decide dónde va, escribe la nota y la linkea. La próxima vez que le preguntes algo, lo busca acá en vez de empezar de cero.

Por eso las notas son así:

- **Cortas y de un solo tema:** la IA abre solo lo que necesita y gasta pocos tokens.
- **Con frontmatter** (`type`, `tags`, `updated`): la IA filtra sin abrir la nota.
- **Con índices y links:** la IA va de [Home](Home.md) al índice y del índice a la nota, sin leer todo el vault.
- **Con reglas escritas** en [AGENTS.md](AGENTS.md): qué va dónde, cómo hablarte y qué no hacer nunca.

Igual lo podés abrir en Obsidian para mirar, buscar o editar a mano. El grafo te muestra qué fue guardando la IA.

## Cómo usarlo

1. Tocá **Use this template** (arriba a la derecha) o cloná el repo:
   ```bash
   git clone https://github.com/crtobias/claude-memory-vault.git mi-vault
   ```
2. En Obsidian: **Abrir carpeta como vault** → elegí `mi-vault`.
3. En la terminal, dentro de la carpeta, abrí Claude Code:
   ```bash
   claude
   ```
4. Si te pregunta si confiás en la carpeta o en el hook, aceptá.
5. Contestá las preguntas del inicio. Podés saltear cualquiera.

## Qué te pregunta el inicio

- **Cómo hablarte:** respuestas cortas o detalladas, tono y formato.
- **Quién sos:** nombre, rubro, cómo trabajás y qué querés lograr.
- **Para qué usás el vault:** proyectos, diseño, estudio, diario, clientes, contenido… Con eso crea las carpetas.
- **Agentes y skills:** te propone hasta 3, según tu rubro.
- **Herramientas:** Chrome, Figma, Gmail, tareas programadas. Te explica cómo activar cada una.
- **Permisos:** si Claude te pide permiso para cada nota o no.

Antes de escribir nada te muestra un resumen. Para cambiar algo después, decí `/inicio`.

## Día a día

Abrí Claude Code en la carpeta del vault (`claude`) y hablá normal. Ejemplos:

| Decís | Pasa |
|---|---|
| "Me gusta esto, guardalo." | Lo guarda en la nota que corresponde y te dice dónde. |
| "Acordate de que prefiero respuestas cortas." | Lo suma a tu perfil en `AGENTS.md` y desde ahí te habla así. |
| "¿Qué había decidido sobre X?" | Lo busca en el vault y te responde con el link a la nota. |
| "Guardá este prompt." | Lo pone en `Resources/`. |
| "Arranco un proyecto nuevo: X." | Crea la carpeta del proyecto en `IT/`. |
| "Creame un agente que haga X." | Lo escribe en `Agentes/` y lo deja listo para usar. |
| "/inicio" | Cambiás tu configuración. |

**Tip:** al final de una charla útil, decí *"guardá lo importante de esto"*. Así lo vas a tener la próxima vez.

## Con otras IA

El vault es Markdown plano, así que sirve con cualquier IA. Lo único exclusivo de Claude Code es que el inicio arranca solo.

- **Codex, Cursor, Gemini CLI y otras que leen `AGENTS.md`:** abrí la carpeta del vault y listo, leen las reglas solas. La primera vez decile: *"corré el inicio de Agentes/inicio.md"*.
- **ChatGPT, Claude.ai, Gemini (chat web):** no pueden escribir en tu disco.
  1. Creá un proyecto en la app y subí `AGENTS.md` y las notas que quieras que sepa.
  2. Cuando te dé algo para guardar, pedile *"dámelo como nota para mi vault"* y pegalo vos en la carpeta.
- **Claude Desktop con el conector de archivos (MCP filesystem):** dale acceso a la carpeta del vault y puede leer y escribir como Claude Code.

## Qué trae

```
├── Home.md          ← mapa del vault
├── AGENTS.md        ← reglas para los agentes + tu perfil
├── CLAUDE.md        ← apunta a AGENTS.md (Claude Code lo lee solo)
├── Agentes/         ← agentes y skills, visibles en Obsidian
│   ├── inicio.md
│   ├── Cómo crear agentes.md
│   └── Herramientas.md
├── IT/ · Personal/ · Resources/ · Attachments/
└── .claude/         ← symlinks a Agentes/ + el hook del primer inicio
```

## Agentes

- Crear, editar y ver los tuyos: [Cómo crear agentes](Agentes/C%C3%B3mo%20crear%20agentes.md).
- Qué más puede usar Claude: [Herramientas](Agentes/Herramientas.md).

## Requisitos

- [Obsidian](https://obsidian.md)
- [Claude Code](https://docs.claude.com/en/docs/claude-code/overview)
- **Windows:** los agentes usan symlinks. Antes de clonar, activalos:
  ```bash
  git config --global core.symlinks true
  ```

## Autor

Hecho por [crtobias](https://github.com/crtobias). Si te sirve, dejale una ⭐ al repo.
