# 番茄 · 专注空间

一个本地运行的中文番茄钟网页：专注、休息、待办、统计、环境音、护眼远眺提醒和 Supabase 邮箱账号。

## 状态

- **阶段：** V3.2 Supabase 核心数据云同步 MVP
- **运行方式：** 用浏览器打开 `index.html`，或访问 GitHub Pages
- **最后更新：** 2026-09-28

## 快速开始

无需安装依赖。复制 `config.example.js` 为 `config.js`，填入 Supabase URL 和 anon key 后，用浏览器打开 `index.html`。首次启用云同步前，在现有 Supabase 项目执行 `supabase/migrations/20260928000000_user_state.sql`。

## 目录

- `index.html`、`style.css`、`app.js`：网页源代码
- `config.example.js`：Supabase 配置模板；真实 `config.js` 被 `.gitignore` 排除
- `supabase/migrations/`：用户状态表与 RLS 数据库迁移
- `dist/`：可直接部署的构建副本
- `docs/PROJECT_CONTEXT.md`：项目背景与验证方式
- `docs/HANDOFF.md`：跨电脑续作说明

## 同步

切换电脑前提交并推送；在另一台电脑确认工作区干净后拉取最新 `main`。

登录后同步总专注次数/分钟、本轮进度、当前植物成长、成熟番茄和专注/休息时长。任务、倒计时剩余时间、声音和弹窗状态仍保存在本机；断网时继续写入 localStorage，恢复联网后重试。

## 自动发布

推送到 `main` 会由 GitHub Actions 自动将 `dist/` 发布到 GitHub Pages。修改根目录的 HTML、CSS 或 JS 后，也请同步更新 `dist/`，再提交和推送即可。
