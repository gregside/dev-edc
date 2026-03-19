# Adapting dev-edc skills to VS Code Copilot

VS Code Copilot reads persistent instructions from `.github/copilot-instructions.md` or a repo-level `AGENTS.md`. Both are plain Markdown — no frontmatter or special format required.

## Target formats

### Option A — `.github/copilot-instructions.md` (recommended)

```
.github/
└── copilot-instructions.md
```

This file is automatically loaded by Copilot Chat as persistent context for all interactions in the workspace.

### Option B — `AGENTS.md` (repo-level)

```
AGENTS.md
```

## How to adapt

### For `.github/copilot-instructions.md`

1. **Open or create** `.github/copilot-instructions.md`
2. **Add a section heading** (e.g., `## {Skill Name}`) for the skill
3. **Paste the skill body** below the heading
4. **Remove** the YAML frontmatter block and the dev-edc repo reference line — plain Markdown only
5. If the skill references companion files, inline the relevant content directly (Copilot does not follow file references)

### For `AGENTS.md`

Same steps as above — add a heading and paste the skill body.

## Notes

- VS Code Copilot does not support multi-file skill structures; all instructions must be in a single file
- There is no trigger/description mechanism — Copilot applies instructions from `copilot-instructions.md` to every chat session in the workspace
- Keep instructions concise; the entire file is injected into every prompt
- If adapting multiple skills, combine them into one file with clear section headings
