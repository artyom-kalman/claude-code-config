Review all uncommitted changes (staged and unstaged) in the current git repository.

Instructions:
1. Run `git diff` to see unstaged changes and `git diff --cached` to see staged changes.
2. Run `git status` to get an overview of modified, added, and deleted files.
3. Check for accidentally included files:
   - Secrets or credentials (.env, API keys, tokens, private keys)
   - Large binaries or build artifacts
   - Debug code (console.log, print statements, debugger breakpoints)
   - Files that should be in .gitignore
   Flag these immediately — they should be unstaged before committing.
4. If a project linter is available (check for eslint, luacheck, ruff, clippy, etc. based on the project type), run it and include violations in your report. Skip this step if no linter is configured.
5. For each changed file, READ THE FULL FILE (not just the diff) so you understand the surrounding context — imports, types, related functions, how the changed code is actually used.
6. Only flag an issue if you have CONFIRMED it by reading the relevant code. Do not speculate. If a diff looks like it might have a bug, trace through the logic and verify before reporting it. Ask yourself:
   - Does this variable/function/type actually exist? Check the file.
   - Is this code actually reachable? Check the callers.
   - Is the "missing" error handling actually needed, or is it handled upstream?
   - Would this actually break at runtime, or does it just look unusual?
7. For each issue you report, include a brief explanation of WHY it's a problem with a specific reference to the code that confirms it (e.g. "X is nil here because line 42 only sets it when Y is true, but line 60 doesn't check Y").
8. Summarize your findings into exactly two lists:
   - Important Issues (fix before committing):
      - Bugs, logic errors, security problems, and anything that could break functionality or cause real harm. These are worth stopping and fixing now.
   - Minor Nitpicks (safe to ignore):
      - Style preferences, cosmetic tweaks, trivial suggestions, and anything that doesn't affect correctness or security.
9. If there are no important issues, confirm the changes look good and are safe to commit.
10. Finally, run /summarize-changes to suggest a commit message.

IMPORTANT: Fewer, verified issues are far more valuable than a long list of maybes. If you're not sure something is a real problem, leave it out.
