# uppmax_intro_day_1

<!-- markdownlint-disable MD013 -->

[![Check links](https://github.com/UPPMAX/uppmax_intro_day_1/actions/workflows/check_links.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/uppmax_intro_day_1/actions/workflows/check_links.yaml)
[![Check markdown](https://github.com/UPPMAX/uppmax_intro_day_1/actions/workflows/check_markdown.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/uppmax_intro_day_1/actions/workflows/check_markdown.yaml)
[![Check spelling](https://github.com/UPPMAX/uppmax_intro_day_1/actions/workflows/check_spelling.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/uppmax_intro_day_1/actions/workflows/check_spelling.yaml)
[![Create website](https://github.com/UPPMAX/uppmax_intro_day_1/actions/workflows/create_website.yaml/badge.svg?branch=main)](https://github.com/UPPMAX/uppmax_intro_day_1/actions/workflows/create_website.yaml)

<!-- markdownlint-enable MD013 -->

Day 1 of the UPPMAX intro course, as taught by Richel.

## Why this new repository

It uses the same content as <https://github.com/UPPMAX/uppmax_intro>,
yet with ...

- the same layout as <https://github.com/UPPMAX/UPPMAX-documentation>
- more focus on re-using the content of <https://github.com/UPPMAX/uppmax_intro>,
  possibly by merging wisdom from <https://github.com/UPPMAX/uppmax_intro>
  to the UPPMAX documentation
- more focus on exercises

This has been discussed with the main contributor to <https://github.com/UPPMAX/uppmax_intro>.

## Credits

Credits go to:

- [The 'UPPMAX/uppmax_intro' contributors](https://github.com/UPPMAX/uppmax_intro/graphs/contributors)
- [The 'UPPMAX/UPPMAX-documentation' contributors](https://github.com/UPPMAX/UPPMAX-documentation/graphs/contributors)

## Files used by continuous integration scripts

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Filename                                  |Descriptions
------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json)        |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.spellcheck.yml](.spellcheck.yml)        |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)            |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.markdownlint.jsonc](.markdownlint.jsonc)|Configuration of the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[.markdownlintignore](.markdownlintignore)|Files ignored by the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.

<!-- markdownlint-enable MD013 -->
