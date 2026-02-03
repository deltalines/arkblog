# Hexo 明日方舟主题博客

这是一个使用明日方舟主题的 Hexo 博客网站。

## 使用说明

### 安装依赖

```bash
npm install
```

### 本地预览

```bash
npm run server
# 或
hexo server
```

### 生成静态文件

```bash
npm run build
# 或
hexo generate
```

### 清除缓存

```bash
npm run clean
# 或
hexo clean
```

## 目录结构

```
website/
├── _config.yml          # Hexo配置文件
├── _config.arknights.yml # 主题配置文件
├── package.json
├── scaffolds/          # 模板
├── source/            # 源文件
│   ├── _posts/       # 文章
│   └── about/        # 关于页面
└── themes/           # 主题
    └── arknights/    # 明日方舟主题
```

## 主题特性

- ✨ 明日方舟风格设计
- 🌙 暗色/亮色主题切换
- 🔍 本地搜索
- 📊 Mermaid 图表支持
- 📈 字数统计和阅读时长
- 💬 多种评论系统支持

更多信息请查看主题 README。
