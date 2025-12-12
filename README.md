# 个人博客

这是一个基于 Jekyll 的个人博客系统。 

## 快速开始

### 环境要求

- Ruby 2.7.5 或更高版本
- Bundler

### 安装步骤

1. 克隆项目后，安装依赖：

```bash
bundle install
```

2. 初始化项目：

```bash
bundle exec rake bootstrap
```

3. 构建网站：

```bash
bundle exec rake build
```

4. 本地运行（开发模式）：

```bash
bundle exec rake serve
```

访问 `http://localhost:4000` 查看你的博客。

## 如何添加新博客

### 方法一：使用模板文件

1. 复制模板文件到 `_posts` 目录：

```bash
cp Post-Templates/YYYY-MM-DD-regular-post.markdown _posts/2024-01-01-你的文章标题.md
```

2. 修改文件名：
   - 文件名格式：`YYYY-MM-DD-文章标题.md` 或 `YYYY-MM-DD-文章标题.markdown`
   - 日期格式：`2024-01-01`
   - 标题使用英文或拼音，用连字符 `-` 分隔单词

3. 编辑文件内容，修改 frontmatter（文件开头的 YAML 配置）：

```yaml
---
layout: post
title: "你的文章标题"
date: 2024-01-01 12:00
comments: true
categories: [分类1, 分类2]
author: 你的作者ID  # 需要在 _config.yml 中配置
---
```

4. 在 `---` 下方开始写你的博客内容，支持 Markdown 语法。

### 方法二：手动创建

1. 在 `_posts` 目录下创建一个新文件，文件名格式：`YYYY-MM-DD-文章标题.md`

2. 在文件开头添加 frontmatter：

```yaml
---
layout: post
title: "你的文章标题"
date: 2024-01-01 12:00
comments: true
categories: [分类1, 分类2]
author: 你的作者ID
---
```

3. 在 frontmatter 下方写你的博客内容。

### Frontmatter 字段说明

- `layout`: 固定为 `post`，表示这是博客文章
- `title`: 文章标题（使用引号包裹）
- `date`: 发布日期，格式：`YYYY-MM-DD HH:MM` 或 `YYYY-MM-DD`
- `comments`: 是否启用评论，`true` 或 `false`
- `categories`: 文章分类，数组格式，例如：`[技术, 前端, JavaScript]`
- `author`: 作者ID，需要在 `_config.yml` 的 `authors` 部分配置

### 文章内容格式

- 使用 Markdown 语法编写
- 使用 `<!-- more -->` 标记摘要结束位置（摘要会显示在文章列表中）
- 支持代码块、图片、链接等 Markdown 功能

### 示例

创建一个名为 `2024-01-15-my-first-post.md` 的文件：

```yaml
---
layout: post
title: "我的第一篇文章"
date: 2024-01-15 10:00
comments: true
categories: [技术, 学习]
author: yourname
---

这是文章的摘要部分，会显示在博客首页。

<!-- more -->

这里是文章的完整内容。

## 二级标题

可以写更多内容...

- 列表项1
- 列表项2

### 代码示例

```javascript
console.log('Hello, World!');
```
```

## 配置作者信息

在 `_config.yml` 文件的 `authors` 部分添加你的作者信息：

```yaml
authors:
  yourname:
    name: 你的名字
    github: 你的GitHub用户名
    twitter: 你的Twitter用户名（可选）
    site: 你的个人网站（可选）
```

然后在文章的 frontmatter 中使用 `author: yourname`。

## 分类说明

- 分类会自动从文章中的 `categories` 字段生成
- 不需要预先配置分类，直接在文章中添加即可
- 建议使用统一的分类名称，便于管理

## 本地预览

在添加或修改文章后，运行：

```bash
bundle exec rake serve
```

然后访问 `http://localhost:4000` 查看效果。

## 部署

### GitHub Pages

如果使用 GitHub Pages 部署：

1. 将代码推送到 GitHub 仓库
2. 在仓库设置中启用 GitHub Pages
3. 选择 `source` 分支作为源分支（根据项目配置）

### 其他部署方式

可以构建静态文件后部署到任何静态网站托管服务：

```bash
bundle exec rake build
```

构建后的文件在 `_site` 目录中。

## 常见问题

### 文章不显示？

- 检查文件名格式是否正确（`YYYY-MM-DD-标题.md`）
- 检查 frontmatter 格式是否正确（YAML 语法）
- 确保文件在 `_posts` 目录下

### 分类页面不生成？

分类页面在开发模式下不会自动生成（因为生成时间较长）。在生产环境（`PRODUCTION=YES`）下会自动生成。

### 图片如何添加？

将图片放在 `images` 目录下，然后在 Markdown 中使用：

```markdown
![图片描述](/images/your-image.png)
```

## 更多资源

- [Jekyll 官方文档](https://jekyllrb.com/)
- [Markdown 语法指南](https://www.markdownguide.org/)

## 许可证

本项目代码采用 MIT 许可证。
