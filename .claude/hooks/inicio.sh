#!/bin/sh
# Primera vez: si AGENTS.md sigue con la marca, obliga a correr el skill inicio.
if grep -q 'inicio:pendiente' "$CLAUDE_PROJECT_DIR/AGENTS.md" 2>/dev/null; then
  cat <<'EOF'
{"hookSpecificOutput":{"hookEventName":"SessionStart","additionalContext":"Este vault todavía no está configurado (AGENTS.md tiene <!-- inicio:pendiente -->). Antes de responder cualquier otra cosa, corré el skill `inicio`."}}
EOF
fi
exit 0
