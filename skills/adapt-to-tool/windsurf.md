# Adapting dev-edc skills to Windsurf

Windsurf supports two instruction formats: per-directory `.windsurf/rules/*.md` files and a repo-level `AGENTS.md`. Both use plain Markdown (no special frontmatter required).

## Target formats

### Option A — `.windsurf/rules/` (recommended for individual skills)

```
.windsurf/
└── rules/
    └── {skill-name}.md
```

### Option B — `AGENTS.md` (repo-level, for one or a few rules)

```
AGENTS.md   # or .windsurf/AGENTS.md
```

## How to adapt

### For `.windsurf/rules/{skill-name}.md`

1. **Create the output file** at `.windsurf/rules/{skill-name}.md`
2. **Add a top-level heading** using the skill name
3. **Copy the body** from the source `SKILL.md`
4. **Remove** the dev-edc repo reference line and the YAML frontmatter — Windsurf rules use plain Markdown
5. Optionally add a short activation note at the top describing when Windsurf should apply the rule

### For `AGENTS.md`

1. Add a new section heading (e.g., `## {Skill Name}`) to the existing `AGENTS.md`
2. Paste the skill instructions under that heading
3. Remove the YAML frontmatter and repo reference line

## Notes

- Windsurf loads `.windsurf/rules/` files as persistent context for the Cascade agent
- `AGENTS.md` is a single file; use it when you have a small number of rules or want a consolidated view
- Windsurf does not have a formal trigger/description field — the rule heading and opening text serve as context
