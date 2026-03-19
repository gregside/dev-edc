# dev-edc

My personal developer everyday carry — a toolkit of skills, tools, and config files for AI-accelerated engineering.

Pull only what you need into any project using [degit](https://github.com/Rich-Harris/degit):

```sh
npx degit colinhauch/dev-edc/skills/{skill-name} .claude/skills/{skill-name}
```

---

## What is this?

`dev-edc` is a public, versioned collection of reusable AI agent skills. Each skill lives in its own folder under `skills/` and can be dropped into any project independently. Skills are formatted for **Claude Code** by default.

---

## Getting Started with Claude Code

1. Install a skill into your project:
   ```sh
   npx degit colinhauch/dev-edc/skills/sync-edc .claude/skills/sync-edc
   ```
2. Skills are picked up automatically by Claude Code from `.claude/skills/`.
3. No global install required — degit copies files directly with no git history.

---

## Using with Other AI Tools

Skills are formatted for Claude Code out of the box. To adapt a skill for **Cursor, Windsurf, Codex CLI, or VS Code Copilot**, pull in the `adapt-to-tool` skill first:

```sh
npx degit colinhauch/dev-edc/skills/adapt-to-tool .claude/skills/adapt-to-tool
```

Then ask your agent to run the `adapt-to-tool` skill and specify your target tool.

---

## Available Skills

See [table-of-contents.md](./table-of-contents.md) for the full annotated list.
