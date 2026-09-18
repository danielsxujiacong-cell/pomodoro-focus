# Handoff

- **更新：** 2026-09-17
- **状态：** 已完成并迁移至 GitHub，已启用 GitHub Pages 自动发布。
- **最近完成：** 推送 `main` 会自动把 `dist/` 更新到公开网站。

## Next action

如需迭代，先在浏览器进行交互验证，再将根目录源文件和 `dist/` 同步更新，提交并推送到 `main`。
## V3.1 账号体系

- 已完成：Supabase Auth 邮箱注册、密码登录、刷新保持会话、退出登录和状态展示。
- 配置：复制 `config.example.js` 为被忽略的 `config.js`，填写 Supabase 项目 URL 与 anon key。
- 当前未实现数据同步；番茄数据继续使用既有 `tomato-state` localStorage 结构。
- 下一步：V3.2 设计用户数据表、RLS 策略和 localStorage 到云端的迁移/冲突策略。
