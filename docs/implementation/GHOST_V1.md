# Ghost v1 implementation

**Status:** CURRENT

## Decision boundary

Ghost is the accepted v1 publishing platform unless the implementation spike exposes a blocking editorial requirement.

This avoids writing commodity publishing infrastructure from scratch. It does not freeze the public name, final information architecture, final visual identity, newsletter policy or long-term deployment topology.

## Current implementation state

- Prototype branch: `feature/ghost-v1-prototype`.
- Draft pull request: **#1 — Ghost v1 editorial prototype**.
- Custom theme implemented in `theme/`.
- Local bootstrap implemented in `scripts/bootstrap-ghost-local.sh`.
- Runtime path `.runtime/` is ignored by Git.
- Documentation and accepted Ghost v1 boundary are present on the branch.
- Local execution and visual inspection are still pending.
- Nothing from this prototype has been merged into `main` yet.
- No production instance exists yet.

## v1 architecture

- Ghost 6 owns publishing, editor, posts, pages, authors, tags, staff roles, scheduling and publication metadata.
- A custom theme in the repository owns the public site.
- The publication name remains a Ghost setting, not source code.
- Working editorial territories can initially map to Ghost tags.
- External authors receive Contributor access only after editorial acceptance or commissioning.
- Pitch intake remains outside Ghost in v1.
- No custom application backend is authorized unless a concrete requirement cannot be met cleanly by Ghost.

## Repository layout

- `theme/` - custom Ghost theme.
- `scripts/bootstrap-ghost-local.sh` - local development bootstrap.
- `.runtime/` - ignored local Ghost runtime.

## Local bootstrap

If the repository is not yet cloned:

    cd ~/Documents
    git clone https://github.com/turbomurzik/journal.git
    cd journal
    git fetch origin
    git checkout feature/ghost-v1-prototype

Install Ghost CLI once if needed:

    npm install -g ghost-cli@latest

From the repository root:

    ./scripts/bootstrap-ghost-local.sh

Then open:

    http://localhost:2368
    http://localhost:2368/ghost

Complete onboarding with a temporary title if the publication name is not yet decided. Activate `journal-editorial-theme` in Ghost Admin.

## Prototype acceptance test

1. Ghost boots locally without repository-specific backend code.
2. The custom theme activates without errors.
3. A post can be created, previewed and published.
4. Author and tag archive pages render correctly.
5. Long-form article typography is credible on desktop and mobile.
6. The visual result does not look like a stock Ghost or Substack publication.
7. No v1 editorial requirement currently forces a custom backend.

## Merge rule

Do not merge PR #1 into `main` until the local acceptance test has been completed and any concrete blocker has either been fixed or documented.

## Not yet decided

- publication name and domain;
- final navigation labels;
- final homepage composition;
- newsletter configuration;
- production hosting;
- analytics;
- membership or payments;
- submission form and contributor intake;
- automated editorial workflows.
