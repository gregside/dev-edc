# QUICKSTART — Using dev-edc without Claude Code

dev-edc is a personal toolkit of reusable AI resources — skills, commands, prompts, agents, and more. Items in the `skills/` folder are formatted for **Claude Code** by default (Anthropic spec: YAML frontmatter + `SKILL.md`). If you're using a different AI coding tool, follow these steps.

---

## Step 1 — Fetch what you need

Use degit to pull any item into your project:

```sh
npx degit colinhauch/dev-edc/skills/{name} ./{name}
```

Or fetch everything:

```sh
npx degit colinhauch/dev-edc ./dev-edc
```

---

## Step 2 — Adapt to your tool

Open `SKILL.md` in your editor, or paste its contents into your AI agent and ask it to adapt the resource for your tool. Companion files in this folder have per-tool instructions:

| File | Tool |
|------|------|
| [cursor.md](./cursor.md) | Cursor (`.cursor/rules/*.mdc`) |
| [windsurf.md](./windsurf.md) | Windsurf (`.windsurf/rules/*.md` or `AGENTS.md`) |
| [codex.md](./codex.md) | Codex CLI (`.agents/skills/` or `AGENTS.md`) |
| [vscode.md](./vscode.md) | VS Code Copilot (`.claude/skills/` — works as-is) |

> **Note:** `SKILL.md` files contain YAML frontmatter that Claude Code uses to trigger resources automatically. If your tool doesn't support this format, the companion files above explain how to convert them.

---

## Step 3 — Persist adaptation instructions

After adapting, ask your agent to create a `NOTES.md` inside the resource's folder with instructions for how to adapt future dev-edc items for your tool. This keeps the context local rather than polluting your root instruction file.

A minimal `NOTES.md`:

```markdown
# dev-edc adaptation notes

Items from colinhauch/dev-edc use the Anthropic SKILL.md format:
YAML frontmatter (`name`, `description`) + Markdown body.

To adapt a new item for [your tool], follow the instructions in
`adapt-to-tool/[your-tool].md`.
```

---

## Step 4 — Clean up

Once adapted, ask your agent to remove the companion files you don't need:

> "Remove the companion files I don't need from adapt-to-tool."

---

More info: [github.com/colinhauch/dev-edc](https://github.com/colinhauch/dev-edc)
