# Journal Status

**Status:** CURRENT

This file is the current-state dashboard. It is not a diary.

## Current phase

Editorial identity formation plus a bounded Ghost implementation prototype.

The prototype is allowed to proceed before naming only as a technical and visual spike. It is not a public launch and does not settle unresolved editorial identity decisions.

## Accepted baseline

- Independent English-language intellectual magazine/review.
- Founder & Editor: Ilias Konstantinidis.
- Broad subject scope is intentional.
- Canonical editorial north star: **Take a familiar idea seriously enough that it becomes unfamiliar again.**
- External contributors are structurally important to the publication's identity.
- The publication should be intellectually challenging without treating provocation as sufficient.
- Ghost 6 with a custom theme is the accepted v1 platform unless the prototype reveals a blocking requirement.
- Do not write a custom publishing backend without a concrete requirement Ghost cannot satisfy.

See `docs/00-DECISIONS.md` for accepted decisions.

## Current canonical research baseline

`docs/research/01-WHAT-THIS-JOURNAL-IS.md`

## Active task

Validate the first Ghost visual prototype locally.

Current implementation order:
1. boot local Ghost;
2. activate the repository theme;
3. publish representative test content;
4. review homepage, article, author and section pages on desktop and mobile;
5. record only genuine platform blockers.

Editorial identity work remains open in parallel:
- naming territory;
- comparator/whitespace research;
- one-sentence public positioning;
- final section/navigation architecture;
- first launch package and contributor targets.

## Deferred / not active

- public deployment;
- production hosting decision;
- monetization implementation;
- legal entity design;
- automated editorial workflows;
- custom backend development.

## Next authorized step

Run `scripts/bootstrap-ghost-local.sh` and inspect the custom theme in local Ghost. Do not add backend services during this spike.
