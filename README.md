# dev-edc

My personal *developer everyday carry* — a toolkit of reusable AI resources for AI-accelerated engineering. Checkout the full toolkit on github: [colinhauch/dev-edc](https://github.com/colinhauch/dev-edc)

Pull the entire toolkit or only what you need into any project using [degit](https://github.com/Rich-Harris/degit):

Entire repo:
```sh
npx degit colinhauch/dev-edc
```

Specific item:
```sh
npx degit colinhauch/dev-edc/skills/{name} .claude/skills/{name}
```

---

## What is this?

`dev-edc` is a public collection of reusable AI resources — skills, commands, prompts, agents, config, and more. Each item lives in its own folder and can be dropped into any project independently. Items are formatted for **Claude Code** by default.

Some of these are authored by me, some by other individuals, and some published by organizations. I may edit resources published by others; the original author will always be credited (and linked if possible).

---

## Getting Started with Claude Code

1. Install an item into your project:
   ```sh
   npx degit colinhauch/dev-edc/skills/sync-edc .claude/skills/sync-edc
   ```
2. Skills are picked up automatically by Claude Code from `.claude/skills/`.
3. No global install required — degit copies files directly with no git history.

---

## Using with Other AI Tools

Items are formatted for Claude Code by default (YAML frontmatter + `SKILL.md`). If you're using **Cursor, Windsurf, Codex CLI, or another AI coding tool**, paste the contents of any `SKILL.md` into your tool and ask it to adapt the resource to your tool's native instruction format — most tools handle this without any manual steps.

---

## Available Resources

See [table-of-contents.md](./table-of-contents.md) for the full annotated list. I recomend 
