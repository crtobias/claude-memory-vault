# Claude Memory Vault

> Un vault de Obsidian que se arma solo, a tu medida, la primera vez que lo abrís con Claude Code.

Es tu memoria de largo plazo, compartida entre vos y tus agentes de IA. La primera vez, el agente de inicio te hace unas preguntas cortas y arma todo: carpetas, tu perfil, cómo querés que te hable, agentes y herramientas.

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

- *"Me gusta esto, guardalo."* → lo guarda en la nota que corresponde y te dice dónde.
- *"Acordate de que prefiero X."* → lo suma a tu perfil.
- *"/inicio"* → cambiás tu configuración.

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
