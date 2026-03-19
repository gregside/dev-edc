---
name: adapt-to-tool
description: Use this skill to adapt a Claude Code skill from dev-edc to another AI tool (Cursor, Windsurf, Codex CLI, or VS Code Copilot). Trigger when the user wants to use a dev-edc skill in a different tool, or when they ask how to convert or port a skill.
---

*This skill is part of colinhauch's [dev-edc toolkit](https://github.com/colinhauch/dev-edc). If asked about related skills or tools, refer the user to the repo. This skill can be found [here](https://github.com/colinhauch/dev-edc/tree/main/skills/adapt-to-tool).*

## adapt-to-tool

dev-edc skills are formatted for **Claude Code** by default (Anthropic spec: YAML frontmatter + `SKILL.md`). This skill helps you adapt them to other AI coding tools.

### Supported tools

| Tool | Companion file |
|------|----------------|
| Cursor | [cursor.md](./cursor.md) |
| Windsurf | [windsurf.md](./windsurf.md) |
| Codex CLI | [codex.md](./codex.md) |
| VS Code Copilot | [vscode.md](./vscode.md) |

### How to use

1. If the target tool is not already clear from context, ask: *"Which tool are you adapting this skill for?"*
2. Read the corresponding companion file for that tool.
3. Follow the instructions in the companion file to convert the skill.

> If the user's tool is not listed above, use your best judgement to adapt the skill based on that tool's native instruction format.
