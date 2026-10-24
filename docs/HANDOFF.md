# Handoff

- **更新：** 2026-09-28
- **状态：** V3.2 Supabase 云同步 MVP 已实现并发布；migration 已应用，真实 Auth/云端恢复与隔离浏览器验收通过。GitHub Pages 成功，Sites 版本 10 在线。
- **最近完成：** `user_state` 表及 RLS 已在 Supabase 创建；测试账号完成首次本地数据上传、专注完成/植物成长、刷新和重新登录恢复、空 localStorage 新 origin 恢复、1/5/15 分钟设置恢复，以及手动清零周期但保留长期统计。断网恢复使用 localStorage 与 15 秒重试路径已通过代码检查，未模拟浏览器级物理断网。

## 2026-10-16 周期状态修复

- 已修复：第 4 次专注完成时立即归零本轮计数，自动长休息期间显示专属提示；只有自动长休息结束才改变自动长休息标记。标记保存在本地 `tomato-state`，Supabase 表结构不变。
- 本地浏览器短时长检查：1/2/3 次专注的圆点与提示一致；手动长休息结束保留 1/4，刷新后进度和累计统计恢复。第 4 次完成观察到累计次数增加且周期归零，自动长休息结束后回到专注。长休息专属提示按页面逻辑设置，但本次没有在计时期间直接截取；Supabase 登录态恢复未操作。
- 已提交并推送：`949a0cc`。GitHub Pages 工作流成功；`focus.danielxu.cn/app.js` 与 Pages 返回的新版本一致。仓库记录的 Sites 项目使用独立 `chatgpt.site` 地址，不属于此自定义域名。

## Next action

后续迭代从 GitHub `main` 继续；修改源文件后保持 `dist/` 副本一致并执行浏览器回归。
## V3.1 账号体系（历史实现）

- 已完成：Supabase Auth 邮箱注册、密码登录、刷新保持会话、退出登录和状态展示；V3.2 同步现已实现并通过云端恢复验收。
- 配置：复制 `config.example.js` 为被忽略的 `config.js`，填写 Supabase 项目 URL 与 anon key。
- `tomato-state` 继续保存本地完整页面状态；仅核心统计、周期、植物和专注/休息时长写入 `user_state`。
- 未同步倒计时、任务、提醒/声音/弹窗；离线变更按账号暂存并按 `updated_at` 协调。

## 2026-10-24 · SEO

仅更新公开首页 SEO、canonical、robots.txt 和 sitemap.xml，并同步 dist；保留 dist 原有图标。无构建步骤，计时、账号和存储代码未改动。
推送后需核对自定义域名已更新；搜索平台归属验证与 sitemap 提交由用户完成。
