---
name: inicio
description: Configura el vault la primera vez (o cuando el usuario quiera cambiar algo) con una entrevista corta, de a una pregunta — cómo hablarle, quién es, para qué usa el vault qué agentes/skills le sirven y qué herramientas usa (Chrome, Figma, Gmail…) — y después crea carpetas, Home, perfil en AGENTS.md y los agentes/skills elegidos. Usalo cuando AGENTS.md tenga `<!-- inicio:pendiente -->`, o cuando diga 'inicio', '/inicio', 'configurá el vault' o 'cambiá cómo me hablás'.
---

# Inicio — configurar el vault

Entrevista corta para dejar el vault listo para esta persona. **Una pregunta por mensaje.** Usá `AskUserQuestion` cuando exista (opciones clickeables); si no, preguntá en texto con opciones numeradas.

## Antes de preguntar

1. Leé `AGENTS.md` y `Home.md`. Si **no** tiene `<!-- inicio:pendiente -->`, es una re-corrida: mostrá en 3 líneas lo que ya está configurado y preguntá **qué quiere cambiar**. Hacé solo ese bloque.
2. Inventario de lo que ya existe (solo leer, no tocar):
   - Agentes y skills del vault: [[Index — Agentes]] y `Agentes/`
   - Globales: `~/.claude/agents/` y `~/.claude/skills/`
   - Conectores / MCP: `.mcp.json` del vault y los servidores que tenga esta sesión
   - Carpetas actuales del vault
3. Saludá (solo la primera vez, no en re-corridas), con este texto:
   > Hola, soy el agente de crtobias. Si te gusta, en un futuro podés dejarme una estrella en GitHub: https://github.com/crtobias
   >
   > Te hago unas preguntas cortas para armar el vault a tu medida. Podés saltear cualquiera.

## 1. Cómo hablarle (primero, así el resto ya va en su estilo)

Preguntá de a una:

1. **Largo de las respuestas:** Cortas (lo justo, sin texto de más) · Normales · Detalladas.
2. **Formato:** Pasos numerados · Párrafos · Lo que convenga.
3. **Tono:** Informal · Neutro · Formal. Idioma y variante (ej.: español rioplatense).
4. **Algo que nunca quiera** (ej.: tablas, emojis, que corras cosas sin avisar). Puede responder "nada".

Desde acá, **contestá con ese estilo**.

## 2. Quién es

Todo opcional. De a una:

1. Nombre o cómo quiere que le digan.
2. **Rubro** (selección múltiple): Desarrollo / IT · Diseño (UX/UI, gráfico) · Marketing / contenido · Ventas / comercio · Educación · Salud · Legal / contable · Arte / música / video · Estudiante · Otro.
3. **Cómo trabaja:** En relación de dependencia · Freelance / con clientes · Emprendimiento propio · Estudiando · Buscando trabajo.
4. Nivel en lo suyo: Arrancando · Intermedio · Avanzado.
5. País / zona horaria.
6. Qué quiere lograr estos meses (1–3 cosas).

**El rubro y cómo trabaja ajustan lo que sigue:** en el bloque 3 vienen marcados los usos que le corresponden (ver tabla de abajo), y en los bloques 4 y 5 proponé primero los agentes y herramientas de su rubro.

| Rubro / cómo trabaja | Usos marcados | Herramientas sugeridas |
|---|---|---|
| Desarrollo / IT | Proyectos, Ideas | Chrome, Figma |
| Diseño | Diseño, Proyectos, Ideas | Figma, Chrome |
| Marketing / contenido | Contenido, Ideas | Chrome, Drive |
| Ventas / comercio | Clientes, Finanzas | Gmail / Calendar |
| Educación / Estudiante | Estudio, Escritura | Drive |
| Arte / música / video | Proyectos, Contenido, Ideas | Drive |
| Freelance / con clientes | Clientes, Finanzas | Gmail / Calendar |
| Buscando trabajo | Trabajo | Chrome, Gmail |

No pidas datos sensibles (documento, dirección, salud, plata exacta, contraseñas). Si los ofrece, no los guardes.

## 3. Para qué usa el vault

Una pregunta, **selección múltiple**, con los usos de su rubro ya marcados:

| Uso | Carpeta |
|---|---|
| Proyectos (código, apps, trabajos) | `IT/` — una subcarpeta por proyecto |
| Diseño (referencias, sistema de diseño, assets) | `Design/` — `Referencias/`, `Assets/` |
| Clientes | `Clientes/` — una nota por cliente |
| Estudio / cursos | `Personal/Estudio/` |
| Diario / journal | `Personal/Diario/` |
| Escritura | `Personal/Escritura/` |
| Trabajo / búsqueda laboral | `Trabajo/` |
| Contenido / redes | `Contenido/` |
| Lecturas / pelis / series | `Personal/Lecturas/` |
| Finanzas personales | `Finanzas/` |
| Salud / hábitos | `Salud/` |
| Ideas sueltas | `Ideas.md` (buzón de una línea) |

`Resources/` y `Attachments/` quedan siempre. Si eligió "otro", preguntale el nombre.

Carpetas del template que no eligió (`IT/`, `Personal/`): si están vacías, preguntá si las borra. Nunca borres una carpeta con contenido.

## 4. Agentes y skills

1. Explicá en una línea: **skill** = corre en esta charla y puede preguntarte · **agente** = trabaja aparte y te devuelve el resultado, no pregunta.
2. Contá lo que ya tiene (del inventario). Si ya hay uno que cubre algo, no propongas otro igual.
3. Proponé **máximo 3**, según los usos elegidos. Selección múltiple:

| Si eligió | Proponé | Tipo |
|---|---|---|
| Proyectos | `nuevo-proyecto`: arma la carpeta del proyecto con Overview, Decisiones y Worklog | skill |
| Ideas | `procesar-ideas`: limpia `Ideas.md` y manda cada idea a su carpeta | skill |
| Diario | `diario`: crea la entrada de hoy y hace 2–3 preguntas | skill |
| Estudio | `repasar`: te toma preguntas sobre lo que anotaste | skill |
| Contenido | `idea-a-post`: convierte una idea en borrador para tu red | skill |
| Trabajo | `postulaciones`: lleva la tabla de dónde te postulaste | skill |
| Proyectos con código | `explorar-repo`: lee un repo y resume su arquitectura en el vault | agente |
| Diseño | `brief-de-diseño`: convierte un pedido suelto en un brief claro (objetivo, público, entregables, referencias) | skill |
| Diseño + Figma | `revisar-diseño`: revisa un frame de Figma contra las reglas de `Design/` | agente |
| Clientes | `nuevo-cliente`: crea la nota del cliente con contacto, pedidos y estado | skill |


## 5. Herramientas

Una pregunta, **selección múltiple**: "¿Cuáles de estas usás o querés usar?"

- Chrome (que Claude use tu navegador con tus sesiones)
- Figma
- Gmail / Calendar / Drive
- Tareas programadas (que Claude haga algo solo cada cierto tiempo)
- Ninguna por ahora

Por cada una elegida: explicá en 1–2 líneas cómo activarla, sacado de [[Herramientas]]. **No configures nada vos**; lo activa el usuario.

Después, una pregunta sobre **permisos**: "¿Querés que te pida permiso cada vez que leo o edito una nota del vault?"

- **Que pregunte poco (recomendado):** puede leer y editar notas sin preguntar. Los `.env` (donde suelen ir las claves) quedan bloqueados.
- **Que pregunte siempre:** no se toca nada.

## 6. Confirmar

Mostrá un resumen de 5–8 líneas: estilo, quién es, rubro, carpetas a crear, agentes/skills a crear, herramientas, permisos. Preguntá: **"¿Lo armo?"**. No escribas nada antes del sí.

## 7. Armar

1. **AGENTS.md** — completá la sección "Quién soy y cómo contestarme" con lo respondido (lo salteado queda sin línea, no con `<...>`). Borrá la línea `<!-- inicio:pendiente -->`.
2. **Carpetas** — creá cada una con su índice `Index.md`:
   ```
   ---
   type: index
   tags: [index]
   updated: YYYY-MM-DD
   ---
   > [[Home]]
   # <Carpeta>
   > <qué va acá, una línea>
   ```
3. **Home.md** — una línea por carpeta, con link a su índice. Actualizá `updated:`.
4. **Agentes y skills** — seguí [[Cómo crear agentes]]: el `.md` real en `Agentes/<nombre>.md` (frontmatter `name` + `description`; los agentes además `model: sonnet`), pasos numerados cortos, y el symlink en `.claude/skills/<nombre>/SKILL.md` o `.claude/agents/<nombre>.md`.
5. Sumá una fila por cada uno a [[Index — Agentes]].
6. En `AGENTS.md`, sumá una línea `- **Herramientas:** <las elegidas>` a "Quién soy y cómo contestarme".
7. **Permisos** (solo si eligió "que pregunte poco"): en `.claude/settings.json` sumá esto **sin borrar los `hooks` que ya están**:
   ```json
   "permissions": {
     "allow": ["Read", "Grep", "Glob", "Edit", "Write"],
     "deny": ["Read(.env*)", "Write(.env*)", "Edit(.env*)"]
   }
   ```

## 8. Cerrar

En su estilo (si eligió respuestas cortas, una línea por punto):

1. **Qué quedó armado:** carpetas, agentes y herramientas.
2. **Dónde guardar cada cosa:** una línea por carpeta que creó (ej.: "ideas sueltas → Ideas.md", "snippets y prompts → Resources/").
3. **Cómo usarlo día a día**, con 2–3 frases de ejemplo que puede copiar:
   - "Me gusta esto, guardalo." → lo guardo en la nota que corresponde y te digo dónde.
   - "Acordate de que prefiero X." → lo sumo a tu perfil en AGENTS.md.
   - Una por cada agente/skill creado (ej.: "/diario").
4. **Primer paso:** algo concreto para hacer ya (ej.: "tirá tu primera idea en Ideas.md").
5. "Para cambiar algo, decí `/inicio`. Para crear un agente nuevo, mirá [[Cómo crear agentes]]."

## Reglas

- Una pregunta por mensaje. Nunca un formulario.
- Siempre se puede saltear.
- No toques nada fuera de la carpeta del vault (salvo leer `~/.claude/` para el inventario).
- Nada de secretos ni datos sensibles en ninguna nota.
