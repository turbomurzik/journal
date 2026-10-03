# Journal Project Rules

**Status:** ACTIVE — canonical repository governance.

## Source-of-truth hierarchy

1. `PROJECT_RULES.md`
2. `docs/00-DECISIONS.md`
3. `docs/STATUS.md`
4. `docs/00-DOCS-INVENTORY.md`
5. current canonical specification for the scoped work
6. `docs/research/*`
7. implementation artifacts and temporary notes

A lower-level artifact may not silently override a higher-level decision.

## Startup protocol

Before durable work, read the four control documents above and only the current documents relevant to the task.

Do not infer project state from README prose, research notes or chat history alone.

## Documentation discipline

- one durable question = one current authoritative document;
- update the current document instead of creating parallel "latest/final/v2" files;
- research and evidence are not decisions;
- every durable document must be registered in the inventory;
- completed research must be promoted, deferred or superseded explicitly;
- surface conflicts instead of silently reconciling them.

## Document states

`CANONICAL`, `CANONICAL RESEARCH BASELINE`, `CURRENT`, `ACTIVE DRAFT`, `EVIDENCE`, `RESEARCH INPUT`, `DEFERRED`, `SUPERSEDED`, `OPERATIONS`.

A newer file is not automatically more authoritative.

## Decisions and current state

Accepted editorial/product decisions belong in `docs/00-DECISIONS.md`.

`docs/STATUS.md` is the current-state dashboard, not a diary. It must answer: where we are, what is accepted, what is active, what is deferred, and what may be done next.

## Research boundary

`docs/research/*` contains research, evidence and synthesis. It must distinguish fact, inference, recommendation and accepted decision.

## Scope and hygiene

Prefer one bounded task at a time. Keep commits small and single-purpose. Do not create duplicate governance systems. Preserve durable reasoning and evidence.

## Completion claims

Do not claim durable work is complete unless decisions, status and inventory are consistent.

## Entry files

`AGENTS.md` and `CLAUDE.md` are thin pointers only and may not create competing governance.
