# Handoff

- **更新：** 2026-09-28
- **状态：** V3.2 Supabase 云同步 MVP 已实现并发布；migration 已应用，真实 Auth/云端恢复与隔离浏览器验收通过。GitHub Pages 成功，Sites 版本 10 在线。
- **最近完成：** `user_state` 表及 RLS 已在 Supabase 创建；测试账号完成首次本地数据上传、专注完成/植物成长、刷新和重新登录恢复、空 localStorage 新 origin 恢复、1/5/15 分钟设置恢复，以及手动清零周期但保留长期统计。断网恢复使用 localStorage 与 15 秒重试路径已通过代码检查，未模拟浏览器级物理断网。

## Next action

后续迭代从 GitHub `main` 继续；修改源文件后保持 `dist/` 副本一致并执行浏览器回归。
## V3.1 账号体系（历史实现）

- 已完成：Supabase Auth 邮箱注册、密码登录、刷新保持会话、退出登录和状态展示；V3.2 同步现已实现并通过云端恢复验收。
- 配置：复制 `config.example.js` 为被忽略的 `config.js`，填写 Supabase 项目 URL 与 anon key。
- `tomato-state` 继续保存本地完整页面状态；仅核心统计、周期、植物和专注/休息时长写入 `user_state`。
- 未同步倒计时、任务、提醒/声音/弹窗；离线变更按账号暂存并按 `updated_at` 协调。
