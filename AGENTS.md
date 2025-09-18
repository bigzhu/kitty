# Repository Guidelines

## Project Structure & Module Organization
- Root contains primary Kitty configs: `kitty.conf` (base), `macos*.conf`, `linux*.conf`, and `test_config.conf`.
- Theme assets live in `kitty-themes/`; audio in `sounds/`.
- Documentation and notes: `README.md`, `tmux-style-hotkeys.md`, and this `AGENTS.md`.
- Keep platform-specific options in the matching `*.conf` files; avoid mixing OS logic.

## Build, Test, and Development Commands
- Run with local config: `kitty --config ./kitty.conf` (use in a new window).
- Validate config: `kitty --debug-config --config ./kitty.conf` (shows warnings and effective values).
- Preview themes: `kitty +kitten themes` (reads from `kitty-themes/` if configured).
- Diff current vs repo config: `git diff` and `rg` for quick search, e.g., `rg "map ctrl"`.

## Coding Style & Naming Conventions
- Files are `.conf` with `snake_case` prefixes, e.g., `macos_launch.conf`.
- Group related settings with comment headers, e.g., `# Fonts`, `# Keymaps`, `# OS-specific`.
- One setting per line; align simple key-value pairs: `font_size 12.0`.
- Key mappings: prefer tmux-like patterns documented in `tmux-style-hotkeys.md`.
- Keep comments concise; link to upstream docs when behavior is non-obvious.

## Testing Guidelines
- Smoke test per-OS: `kitty --config ./macos.conf` or `./linux.conf` as applicable.
- Use `test_config.conf` to verify experimental options before merging.
- After changes, run `kitty --debug-config` and exercise keymaps (pane splits, tabs, copy mode).

## Commit & Pull Request Guidelines
- Commits: imperative mood and scoped, e.g., `keymap: add pane resize shortcuts`.
- PRs: include a short summary, rationale, OS impact, and screenshots/gifs when UI/theme changes.
- Link related issues/notes; list manual test steps and any caveats.
- Keep PRs small and focused (themes, keymaps, rendering, perf, etc. in separate changes).

## Security & Configuration Tips
- Do not commit user-specific paths, tokens, or hostnames; use placeholders and comments.
- Prefer relative includes and document any required environment variables.
