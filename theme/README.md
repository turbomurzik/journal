# Journal Ghost Theme

Custom Ghost theme for the Journal project.

This is deliberately a publication theme, not a generic blog skin. The visual baseline is editorial and print-derived: strong masthead, restrained palette, visible hierarchy, long-form reading width, author archives and section archives.

## Local use

Run from the repository root:

    ./scripts/bootstrap-ghost-local.sh

Then open:

    http://localhost:2368
    http://localhost:2368/ghost

Complete Ghost onboarding with any temporary site title and activate the theme from Settings -> Site -> Theme.

The publication name is intentionally not encoded in the theme. It is read from Ghost settings because naming remains an open editorial decision.

## Validate

From this directory:

    npm test
