# Netlify 部署指南

## 方案一：直接拖放部署（最快速）

1. 访问 https://app.netlify.com/
2. 登录或注册账号
3. 直接将 `public` 文件夹拖到页面上
4. 等待部署完成，获取网址

**优点**: 
- 最简单快速
- 无需配置

**缺点**: 
- 每次更新都需要重新生成和上传

---

## 方案二：Git 仓库部署（推荐）

### 步骤 1: 准备 Git 仓库

在 website 目录下初始化 Git：

\`\`\`bash
cd d:\std\hexo-theme-arknights-main\website
git init
git add .
git commit -m "Initial commit"
\`\`\`

### 步骤 2: 推送到 GitHub

\`\`\`bash
# 在 GitHub 创建新仓库后
git remote add origin https://github.com/你的用户名/你的仓库名.git
git branch -M main
git push -u origin main
\`\`\`

### 步骤 3: 在 Netlify 连接仓库

1. 访问 https://app.netlify.com/
2. 点击 "Add new site" → "Import an existing project"
3. 选择 "GitHub" 并授权
4. 选择您的仓库
5. 构建设置会自动识别（已配置 netlify.toml）
6. 点击 "Deploy site"

### 构建配置（已自动配置在 netlify.toml）

- **Build command**: \`npm install && npx hexo generate\`
- **Publish directory**: \`public\`
- **Node version**: 18.0.0

---

## 需要上传到 Git 的文件

\`\`\`
website/
├── source/              ✅ 源文件和文章
├── themes/              ✅ 主题
├── scaffolds/           ✅ 模板
├── _config.yml          ✅ Hexo配置
├── _config.arknights.yml ✅ 主题配置
├── package.json         ✅ 依赖
├── netlify.toml         ✅ Netlify配置（已创建）
└── .gitignore           ✅ Git忽略配置（已配置）
\`\`\`

## 不需要上传的文件（已在 .gitignore 中配置）

\`\`\`
❌ node_modules/    # 依赖包（太大，Netlify会自动安装）
❌ public/          # 生成的网站（Netlify会自动生成）
❌ .deploy_git/     # 部署临时文件
❌ db.json          # 数据库缓存
❌ *.log            # 日志文件
\`\`\`

---

## 更新博客流程（使用 Git 方式）

1. 在 \`source/_posts/\` 中编辑或新增文章
2. 提交并推送到 GitHub：
   \`\`\`bash
   git add .
   git commit -m "新增文章"
   git push
   \`\`\`
3. Netlify 会自动检测更新并重新部署

---

## 方案对比

| 特性 | 直接上传 public | Git 仓库部署 |
|------|----------------|--------------|
| 速度 | ⚡ 最快 | 🐢 稍慢 |
| 更新方式 | 手动重新上传 | Git push 自动部署 |
| 适用场景 | 一次性部署 | 频繁更新 |
| 版本控制 | ❌ 无 | ✅ 有 |
| 推荐度 | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ |

---

## 自定义域名（可选）

1. 在 Netlify 站点设置中找到 "Domain management"
2. 点击 "Add custom domain"
3. 按照提示配置 DNS 记录

---

## 常见问题

### Q: 部署失败怎么办？

A: 检查 Netlify 的构建日志，常见问题：
- Node.js 版本不匹配（已在 netlify.toml 中指定）
- 依赖安装失败（检查 package.json）
- 主题文件缺失（确保 themes 目录已上传）

### Q: 部署后样式不显示？

A: 检查 \`_config.yml\` 中的 \`url\` 和 \`root\` 配置，应该设置为您的 Netlify 域名。

### Q: 如何查看部署状态？

A: 登录 Netlify 控制台，可以看到：
- 部署历史
- 构建日志
- 实时部署状态

---

## 推荐步骤总结

**如果只是想快速预览：**
👉 使用方案一，直接拖放 \`public\` 文件夹

**如果要长期使用和更新博客：**
👉 使用方案二，通过 Git 仓库部署

现在 \`netlify.toml\` 配置文件已创建完成，您可以选择任一方案开始部署！🚀
