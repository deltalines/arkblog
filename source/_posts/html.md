---
title: html
date: 2026-02-08 22:58:29
tags: web前端
category: 文档
---
# HTML 基础语法指南

## 什么是 HTML？

HTML（HyperText Markup Language，超文本标记语言）是用于创建网页的标准标记语言。它使用标签来描述网页结构，并通过浏览器呈现给用户。

## HTML 文档结构

```html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>我的第一个网页</title>
</head>
<body>
    <!-- 页面内容放在这里 -->
</body>
</html>
```

## 基本标签

### 1. 标题标签 (h1-h6)
```html
<h1>一级标题</h1>
<h2>二级标题</h2>
<h3>三级标题</h3>
<h4>四级标题</h4>
<h5>五级标题</h5>
<h6>六级标题</h6>
```

### 2. 段落标签
```html
<p>这是一个段落。</p>
<p>这是另一个段落。</p>
```

### 3. 换行标签
```html
<p>第一行<br>第二行</p>
```

### 4. 水平线标签
```html
<hr>
```

## 文本格式化

```html
<p><b>粗体文本</b></p>
<p><i>斜体文本</i></p>
<p><u>下划线文本</u></p>
<p><strong>强调文本（语义更强）</strong></p>
<p><em>强调文本（斜体）</em></p>
<p><mark>高亮文本</mark></p>
<p><small>小号文本</small></p>
<p><del>删除文本</del></p>
<p><ins>插入文本</ins></p>
<p>H<sub>2</sub>O</p> <!-- 下标 -->
<p>x<sup>2</sup></p> <!-- 上标 -->
```

## 链接

```html
<!-- 外部链接 -->
<a href="https://www.example.com" target="_blank">访问示例网站</a>

<!-- 内部链接 -->
<a href="about.html">关于我们</a>

<!-- 锚点链接 -->
<a href="#section1">跳转到第一节</a>

<!-- 邮件链接 -->
<a href="mailto:someone@example.com">发送邮件</a>

<!-- 电话链接 -->
<a href="tel:+1234567890">拨打电话</a>
```

## 图像

```html
<img src="image.jpg" alt="图片描述" width="300" height="200">
```

**属性说明：**
- `src`: 图像路径（必需）
- `alt`: 替代文本（图像无法显示时显示）
- `width`: 宽度
- `height`: 高度

## 列表

### 无序列表
```html
<ul>
    <li>项目一</li>
    <li>项目二</li>
    <li>项目三</li>
</ul>
```

### 有序列表
```html
<ol>
    <li>第一项</li>
    <li>第二项</li>
    <li>第三项</li>
</ol>
```

### 定义列表
```html
<dl>
    <dt>HTML</dt>
    <dd>超文本标记语言</dd>
    <dt>CSS</dt>
    <dd>层叠样式表</dd>
</dl>
```

## 表格

```html
<table border="1">
    <caption>学生信息表</caption>
    <thead>
        <tr>
            <th>姓名</th>
            <th>年龄</th>
            <th>专业</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>张三</td>
            <td>20</td>
            <td>计算机科学</td>
        </tr>
        <tr>
            <td>李四</td>
            <td>21</td>
            <td>软件工程</td>
        </tr>
    </tbody>
</table>
```

## 表单

```html
<form action="/submit" method="POST">
    <!-- 文本输入 -->
    <label for="name">姓名：</label>
    <input type="text" id="name" name="name" required>
    <br>
    
    <!-- 密码输入 -->
    <label for="password">密码：</label>
    <input type="password" id="password" name="password">
    <br>
    
    <!-- 邮箱输入 -->
    <label for="email">邮箱：</label>
    <input type="email" id="email" name="email">
    <br>
    
    <!-- 单选框 -->
    <label>
        <input type="radio" name="gender" value="male"> 男
    </label>
    <label>
        <input type="radio" name="gender" value="female"> 女
    </label>
    <br>
    
    <!-- 复选框 -->
    <label>
        <input type="checkbox" name="hobby" value="reading"> 阅读
    </label>
    <label>
        <input type="checkbox" name="hobby" value="sports"> 运动
    </label>
    <br>
    
    <!-- 下拉选择 -->
    <label for="city">城市：</label>
    <select id="city" name="city">
        <option value="beijing">北京</option>
        <option value="shanghai">上海</option>
        <option value="guangzhou">广州</option>
    </select>
    <br>
    
    <!-- 多行文本 -->
    <label for="message">留言：</label>
    <textarea id="message" name="message" rows="4" cols="30"></textarea>
    <br>
    
    <!-- 提交按钮 -->
    <input type="submit" value="提交">
    <!-- 重置按钮 -->
    <input type="reset" value="重置">
</form>
```

## 语义化标签（HTML5）

```html
<header>网页头部</header>
<nav>导航栏</nav>
<main>主要内容</main>
<section>文档的某个部分</section>
<article>独立的内容块</article>
<aside>侧边栏</aside>
<footer>网页底部</footer>
<figure>
    <img src="image.jpg" alt="示例">
    <figcaption>图片说明</figcaption>
</figure>
```

## 注释

```html
<!-- 这是一个HTML注释，不会在浏览器中显示 -->
<p>这是一个可见的段落。</p>
```

## 特殊字符

| 字符 | HTML 代码 |
|------|-----------|
| < | `&lt;` |
| > | `&gt;` |
| & | `&amp;` |
| " | `&quot;` |
| ' | `&apos;` |
| 空格 | `&nbsp;` |
| © | `&copy;` |

## 基本属性

```html
<!-- class属性：用于CSS样式 -->
<div class="container"></div>

<!-- id属性：唯一标识符 -->
<div id="header"></div>

<!-- style属性：内联样式 -->
<p style="color: red;">红色文字</p>

<!-- title属性：工具提示文本 -->
<a href="#" title="点击了解更多">了解更多</a>

<!-- data-*属性：自定义数据 -->
<div data-user-id="123"></div>
```

## 最佳实践建议

1. **使用语义化标签**：优先使用有意义的标签而非仅使用div
2. **添加alt属性**：所有图片都应包含替代文本
3. **保持结构清晰**：合理嵌套标签，避免过度嵌套
4. **使用小写标签**：HTML不区分大小写，但建议使用小写
5. **闭合所有标签**：确保每个开始标签都有对应的结束标签
6. **属性值加引号**：属性值始终使用双引号包裹

## 示例：完整HTML页面

```html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HTML学习页面</title>
</head>
<body>
    <header>
        <h1>欢迎学习HTML</h1>
        <nav>
            <a href="#home">首页</a> |
            <a href="#about">关于</a> |
            <a href="#contact">联系</a>
        </nav>
    </header>
    
    <main>
        <section id="home">
            <h2>HTML基础</h2>
            <p>HTML是构建网页的基础。</p>
        </section>
        
        <article>
            <h3>学习要点</h3>
            <ul>
                <li>理解标签结构</li>
                <li>掌握常用标签</li>
                <li>实践编写代码</li>
            </ul>
        </article>
    </main>
    
    <footer>
        <p>&copy; 2024 HTML学习网站</p>
    </footer>
</body>
</html>
```

---