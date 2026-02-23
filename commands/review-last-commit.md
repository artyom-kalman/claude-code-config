Review the last git commit in the current repository.

Instructions:
1. Run `git log -1 --format="%H %s%n%b"` to get the last commit hash, subject, and body.
2. Run `git diff HEAD~1..HEAD` to see the full diff of the last commit.
3. Run `git diff --stat HEAD~1..HEAD` to get a summary of changed files.
4. For each changed file, review the diff and provide feedback on:
   - Bugs or logic errors
   - Security issues
   - Performance concerns
   - Code style and readability
   - Missing error handling
   - Commit message quality (is it clear and descriptive?)
5. Summarize your findings with a list of issues grouped by severity (critical, warning, suggestion).
6. If there are no issues, confirm the commit looks good.
