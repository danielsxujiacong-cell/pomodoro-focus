# Handoff

- Status: V3.2 Supabase cloud-sync MVP is committed as `04b52f7` and published. GitHub Pages Actions succeeded; Sites version 10 is live.
- Completed: first-login local migration, cloud-first restore, account-scoped pending snapshots, one-minute focus completion and plant growth, refresh and sign-out/sign-in restore, a separate empty-storage origin restoring all cloud fields/settings, and cycle reset preserving totals and mature tomatoes.
- Next: for later changes, start from the pushed `main` branch and keep the root source files and `dist/` copies aligned.
- Offline note: localStorage-first writes and retry-after-error logic are in place and code-reviewed; a browser-level network outage was not simulated in this pass.
- Security: use only the existing anon/publishable key; never add a service_role key.
- Local start: follow `README.md` and `AGENTS.md`.
- Deployment targets: https://danielsxujiacong-cell.github.io/pomodoro-focus/ and https://pomodoro-sun-focus.danielsxujiacong.chatgpt.site.
