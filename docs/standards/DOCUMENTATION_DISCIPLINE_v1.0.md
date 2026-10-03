# Journal Documentation Discipline v1.0

**Status:** STANDARD

## Purpose

Prevent documentation drift, duplicate "latest" files, stale concept claims and research notes silently becoming project truth.

`PROJECT_RULES.md` is the higher-authority repository governance source. This standard is subordinate to it.

## Canonical source

GitHub is the canonical source of truth for durable project documentation.

Chat output, local notes, exported files and temporary prototypes are not canonical until committed and registered in `docs/00-DOCS-INVENTORY.md`.

## Required control documents

1. `PROJECT_RULES.md`
2. `docs/STATUS.md`
3. `docs/00-DECISIONS.md`
4. `docs/00-DOCS-INVENTORY.md`
5. `docs/00-START-HERE.md` as onboarding

## One-question / one-current-document rule

Each durable editorial, product, architecture or operational question should have one current authoritative document.

Do not create parallel `*-v2-final.md`, `*-new.md`, `*-updated.md` or second "current" documents when the existing current document can be updated.

A new document is justified only when it has a distinct durable scope.

## Required statuses

Every durable document must be registered with exactly one status:

- **CANONICAL**
- **CANONICAL RESEARCH BASELINE**
- **ACTIVE DRAFT**
- **EVIDENCE**
- **RESEARCH INPUT**
- **DEFERRED**
- **SUPERSEDED**
- **OPERATIONS**
- **STANDARD**
- **CURRENT**

Do not infer authority from date, filename or recency.

## Research closure rule

A completed research workstream must end in at least one of:

1. update to a canonical/current document;
2. accepted/rejected decision in `docs/00-DECISIONS.md`;
3. explicit DEFERRED or SUPERSEDED status.

## Decision rule

Research, evidence and recommendations are not decisions.

Accepted decisions belong in `docs/00-DECISIONS.md`.

## Conflict rule

If two documents conflict:

1. stop;
2. check the source-of-truth hierarchy;
3. identify the stale document;
4. update inventory/status;
5. do not silently synthesize a third interpretation.

## New-document gate

Before creating a durable document, check whether an existing current document already owns the question, whether it can be updated, whether the scope is genuinely distinct, what status the new file will have, and whether it will be registered in the inventory in the same change.

## Same-change rule

Any durable change that creates a document, changes canonical status, supersedes a document or changes source of truth must update `docs/00-DOCS-INVENTORY.md` in the same change.

If an accepted editorial/product decision changes, update `docs/00-DECISIONS.md` in the same change.

## Archive rule

Do not delete stale documentation merely to tidy the tree. Replace, mark SUPERSEDED, update references, then archive/remove only in a dedicated cleanup.

## Agent rule

Agents must read the control set before durable work and must not create parallel governance.

## Minimum-discipline principle

Prefer fewer documents, clearer ownership, explicit status, short decisions, and evidence separated from conclusions.
