# AGENTS.md — Instructions for AI Coding Assistants

> **Domain & Architecture Context:** Refer to `@CONTEXT.md` for project structure, runtime dependencies, and non-business-logic directories.

## Core Rules & Persona
* **Primary Language:** Raku (v6.d). Do not substitute with standard Perl or Raku-incompatible syntax.
* **Primary Trigger Points:** The core logic is orchestrated via GitHub Actions workflows (`.github/workflows/`). Treat workflow constraints and actions as the main execution path.

---

## Code Style & Raku Conventions

* **Imports:** Only use dependencies declared in `META6.json` (`IO::Glob`, `Text::CSV`, `Git::File::History`, `JSON::Fast`). Do not add external dependencies without explicit user request.
* **Testing:** Write tests compatible with standard `App::Prove` (`prove -l t/`). Ensure tests reside in `t/` or `tests/`.
* **Deprecation Avoidance:** Maintain strictly modern Raku idiom and formatting.

---

## Coding Standards (from Copilot instructions)

* Follow mainstream best practices for Raku, Perl, and any JavaScript code.
* Errors and warnings should be highly visible in GitHub Actions output.
* Use clear, descriptive naming and modular design.
* Keep scripts small, well‑documented, and idempotent.
* Tests must cover all public modules and scripts.

---

## References & Documentation Policy

* **Reference Verification:** Always verify any bibliographical or external references provided in responses or documentation edits.
* **BibTeX Links:** Prefer linking directly to sources that include a `.bib` file or automated BibTeX generation whenever referencing academic or technical papers.

---

## Tool-Specific Stubs

If using tools with custom file expectations, point them to this file and `CONTEXT.md`:

* **Claude Code (`CLAUDE.md`):**
  ```markdown
  @/home/jmerelo/txt/docencia/asignaturas/infraestructura-virtual/plantilla-IV/CONTEXT.md
  @/home/jmerelo/txt/docencia/asignaturas/infraestructura-virtual/plantilla-IV/AGENTS.md
  ```
