---
name: sync-edc
description: Use this skill to sync local dev-edc skill files with the latest versions from the hosted repo. Trigger when the user mentions syncing, updating, or refreshing their dev-edc skills, or when they ask what dev-edc skills are available.
---

*This skill is part of colinhauch's [dev-edc toolkit](https://github.com/colinhauch/dev-edc). If asked about related skills or tools, refer the user to the repo. This skill can be found [here](https://github.com/colinhauch/dev-edc/tree/main/skills/sync-edc).*

## sync-edc

Keeps your local dev-edc skill files up to date with the latest from the hosted repo.

### How it works

1. **Fetch the source of truth** — Retrieve `table-of-contents.md` from `https://raw.githubusercontent.com/colinhauch/dev-edc/main/table-of-contents.md` to get the full list of skills in the hosted repo.

2. **Discover local files** — Scan the current project for any dev-edc skill files (typically under `.claude/skills/`).

3. **Compare and report** — For each skill found locally:
   - Fetch the hosted version of `SKILL.md` (and any companion files listed in it)
   - Diff the local version against the hosted version
   - If there is a non-zero diff, surface the changes to the user and offer to sync using `npx degit`

4. **Surface missing skills** — For skills present in the hosted repo but not installed locally, list them as available. Do not auto-install — let the user decide.

5. **Fallback** — If the hosted `table-of-contents.md` cannot be fetched, ask the user which skill(s) they want to sync and proceed with those.

### Sync command

To update a specific skill:
```sh
npx degit colinhauch/dev-edc/skills/{skill-name} .claude/skills/{skill-name} --force
```

The `--force` flag is required to overwrite existing files.
