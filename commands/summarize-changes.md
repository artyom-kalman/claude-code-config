Summarize all uncommitted changes (staged and unstaged) as a commit message that matches this repository's commit message style.

Instructions:
1. Run `git log --oneline -20` to study the existing commit message style (format, tense, prefix conventions, length, capitalization, etc.).
2. Run `git diff` and `git diff --cached` to see all uncommitted changes.
3. Run `git status` to get an overview of modified, added, and deleted files.
4. Analyze the changes and produce a commit message that:
   - Follows the exact style and conventions observed in the git log (e.g. conventional commits, imperative mood, sentence case, etc.)
   - Accurately describes what changed and why
   - Groups related changes logically if there are multiple distinct changes
5. Present the commit message in a code block so it's easy to copy.
6. If the changes are too large or unrelated to fit a single commit message, suggest splitting them and provide a separate message for each logical group.
