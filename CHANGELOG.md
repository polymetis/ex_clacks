# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-05-03

First proper release after a long sleep — about a decade. The plug itself
still does the same thing it always did; this release brings the package
into compliance with current Elixir/Plug conventions and HexDocs.

### Breaking

- The `call/2` callback no longer accepts a single argument. The plug now
  formally declares `@behaviour Plug`, so the second argument (the return
  value of `init/1`) is required. Pipeline users are unaffected — Phoenix
  and Plug always pass it. Direct callers must update to
  `ExClacks.call(conn, ExClacks.init([]))`.

### Changed

- Minimum Elixir bumped from `~> 1.1` to `~> 1.14`.
- Plug constraint bumped from `~> 1.0` to `~> 1.14`.
- Module `ExClacks.Mixfile` renamed to `ExClacks.MixProject`.
- The package landing page now renders on HexDocs (added `ex_doc` and a
  proper `@moduledoc`).

### Fixed

- Stale `doctest ExClacks` directive removed — the docstring contained no
  `iex>` examples, so it was a silent no-op.
- README typos and broken Markdown headings.
- LICENSE.md now names the copyright holder.

## 0.1.1

Earlier release. No formal changelog kept prior to 1.0.0.
