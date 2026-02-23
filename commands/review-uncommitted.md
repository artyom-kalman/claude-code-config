Review all uncommitted changes (staged and unstaged) in the current git repository.

Instructions:
1. Run `git diff` to see unstaged changes and `git diff --cached` to see staged changes.
2. Run `git status` to get an overview of modified, added, and deleted files.
3. Run the project linter (`bun lint`) and include any violations in your report
4. For each changed file, review the diff and provide feedback on:
   - Bugs or logic errors
   - Security issues
   - Performance concerns
   - Code style and readability
   - Missing error handling
5. Summarize your findings into exactly two lists:
   - Important Issues (fix before committing):
      - Bugs, logic errors, security problems, and anything that could break functionality or cause real harm. These are worth stopping and fixing now.
   - Minor Nitpicks (safe to ignore):**
      - Style preferences, cosmetic tweaks, trivial suggestions, and anything that doesn't affect correctness or security. 
      
6. If there are no important issues, confirm the changes look good and are safe to commit.
