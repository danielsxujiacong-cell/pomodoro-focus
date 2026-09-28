# Handoff

- Status: V3.2 Supabase cloud-sync MVP is implemented in the canonical D: checkout. The SQL migration was applied and real Auth/cloud tests passed; changes are not yet committed.
- Completed: first-login local migration, cloud-first restore, account-scoped pending snapshots, one-minute focus completion and plant growth, refresh and sign-out/sign-in restore, a separate empty-storage origin restoring all cloud fields/settings, and cycle reset preserving totals and mature tomatoes.
- Pending: final diff/staging review, commit/push, GitHub Pages Actions verification, and update/verification of the existing Sites deployment.
- Offline note: localStorage-first writes and retry-after-error logic are in place and code-reviewed; a browser-level network outage was not simulated in this pass.
- Security: use only the existing anon/publishable key; never add a service_role key.
- Local start: follow `README.md` and `AGENTS.md`.
- Deployment targets: https://danielsxujiacong-cell.github.io/pomodoro-focus/ and https://pomodoro-sun-focus.danielsxujiacong.chatgpt.site.
