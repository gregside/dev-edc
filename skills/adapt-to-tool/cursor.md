# Adapting dev-edc skills to Cursor

Cursor uses `.cursor/rules/*.mdc` files for persistent agent instructions. Each rule file contains YAML frontmatter and a Markdown body.

## Target format

```
.cursor/
└── rules/
    └── {skill-name}.mdc
```

### `.mdc` file structure

```markdown
---
description: When this rule should be applied (shown to agent for context selection)
globs: optional/path/patterns/**  # leave blank for global rules
alwaysApply: false  # set true if this rule should always be active
---

[rule content here]
```

## How to adapt

1. **Create the output file** at `.cursor/rules/{skill-name}.mdc`
2. **Copy the frontmatter fields**:
   - `description` → use the `description` from the source `SKILL.md` frontmatter
   - `globs` → set if the skill is path-specific, otherwise leave blank
   - `alwaysApply` → set `true` for core workflow rules, `false` for on-demand skills
3. **Copy the body** — paste the skill instructions from `SKILL.md` directly below the frontmatter
4. **Remove** the dev-edc repo reference line (the italicized line at the top) — it is not needed in Cursor rules
5. **Remove** any Claude Code-specific references (e.g., mentions of `.claude/skills/`)

## Notes

- Cursor supports multiple `.mdc` files; one per skill is the recommended pattern
- The `description` field is used by Cursor to decide when to include the rule in context — make it clear and trigger-oriented
- `alwaysApply: true` rules are always injected; use sparingly to avoid bloating context
