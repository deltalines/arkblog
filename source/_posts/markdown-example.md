---
title: Markdown 语法示例
date: 2026-02-04 10:00:00
tags:
  - Markdown
  - 教程
category: 文档
---

这篇文章展示了 Markdown 的常用语法和本主题的一些特殊标签。

<!-- more -->

## 标题

# 一级标题
## 二级标题
### 三级标题
#### 四级标题
##### 五级标题
###### 六级标题

## 文本样式

**粗体文本**

*斜体文本*

***粗斜体文本***

~~删除线~~

## 列表

### 无序列表

- 项目 1
- 项目 2
  - 子项目 2.1
  - 子项目 2.2
- 项目 3

### 有序列表

1. 第一项
2. 第二项
3. 第三项

## 链接和图片

[这是一个链接](https://hexo.io)

![图片描述](https://ak.hypergryph.com/assets/index/images/ak/pc/faction/1.png)

## 引用

> 这是一段引用文本。
> 可以包含多行。
>
> — 引用来源

## 代码

### 行内代码

这是 `行内代码` 示例。

### 代码块

```javascript
function hello() {
  console.log("Hello, Arknights!");
}

hello();
```

```python
def greet(name):
    print(f"你好，{name}！")

greet("博士")
```

## 表格

| 列1   | 列2   | 列3   |
|-------|-------|-------|
| 内容1 | 内容2 | 内容3 |
| 内容4 | 内容5 | 内容6 |

## 分割线

---

## 主题特殊标签

### 提示框

本主题支持多种提示框样式（需要在主题标签插件支持下）。

### Mermaid 图表

<div class="mermaid">
graph LR
A[开始] --> B{判断}
B -->|是| C[结果1]
B -->|否| D[结果2]
</div>

## 结语

以上就是 Markdown 的基本语法示例。更多高级功能请参考主题文档！
