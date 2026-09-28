# Project context

## Goal

提供一个舒缓、中文优先的个人专注计时页面，包含待办、专注记录与护眼提醒。

## Constraints

- 保持为零依赖静态网页。
- 待办、倒计时剩余时间、声音与弹窗状态仅保存在浏览器本地；登录后只同步 MVP 定义的统计、周期、植物和计时设置。
- Supabase 仅使用客户端 anon/publishable key；用户状态表启用 RLS，按 `auth.uid()` 限制每一行。
- localStorage 是离线缓存；首次登录迁移本地核心数据，已有云端行优先恢复，离线修改保留账号级待同步快照并按 `updated_at` 合并。
- 环境音来源链接保留在页面中。

## Verification

用现代浏览器打开 `index.html`，检查开始/暂停/重置、三种计时模式、待办、设置、统计、全屏模式、Auth 和云端同步。数据库首次配置需执行 `supabase/migrations/20260928000000_user_state.sql`；不使用 service_role key。
