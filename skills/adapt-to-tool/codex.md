# Adapting dev-edc skills to Codex CLI

Codex CLI uses a folder-based skill pattern very similar to Claude Code. Adaptation is minimal — the primary change is the target path and minor frontmatter differences.

## Target format

```
.agents/
└── skills/
    └── {skill-name}/
        └── SKILL.md
```

Alternatively, global instructions can go in a root-level `AGENTS.md`.

## How to adapt

### For `.agents/skills/` (recommended — mirrors dev-edc structure)

1. **Copy the skill folder** to `.agents/skills/{skill-name}/`
2. **Keep `SKILL.md` as-is** — Codex uses the same `name` and `description` frontmatter fields
3. **Remove** the dev-edc repo reference line (the italicized line) if desired — it is informational only
4. **Update any path references** that point to `.claude/skills/` → `.agents/skills/`

### For `AGENTS.md` (flat, repo-level)

1. Add a section heading (`## {Skill Name}`) to `AGENTS.md`
2. Paste the skill body below the heading
3. Remove the YAML frontmatter block

## Notes

- Codex CLI uses a nearly identical skill model to Claude Code, so most skills port with no substantive changes
- The `description` field in frontmatter is used by Codex for skill discovery — keep it clear and trigger-oriented
- Companion files (e.g., `cursor.md`, `windsurf.md`) can be carried over as-is; reference them from `SKILL.md` the same way
