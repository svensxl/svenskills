# Quick Reference: YAML Frontmatter Fields

[English](#english) | [中文](#中文)

---

## English

This is a quick reference guide for the YAML frontmatter fields used in SKILL.md files according to the Anthropic Agent Skills specification.

## Required Fields

### name
- **Type:** string
- **Format:** lowercase-with-hyphens (kebab-case)
- **Example:** `"text-summarizer"`, `"code-reviewer"`
- **Description:** Unique identifier for the skill

### description
- **Type:** string
- **Max Length:** ~100 characters
- **Example:** `"Summarizes large bodies of text into concise highlights"`
- **Description:** Brief summary of what the skill does

## Common Optional Fields

### tags
- **Type:** array of strings
- **Example:** `[summarization, text, NLP, productivity]`
- **Description:** Keywords for discovery and categorization
- **Best Practice:** Include 3-5 relevant tags

### triggers
- **Type:** array of strings
- **Example:** `["summarize", "summary", "tldr"]`
- **Description:** Words or phrases that activate this skill
- **Best Practice:** Include 3-5 natural trigger phrases

### version
- **Type:** string (semantic versioning)
- **Example:** `"1.0.0"`, `"2.1.3"`
- **Description:** Version number following semver (MAJOR.MINOR.PATCH)
- **Best Practice:** Start with 1.0.0 for new skills

### author
- **Type:** string
- **Example:** `"John Smith"`, `"@username"`, `"company-name"`
- **Description:** Creator or maintainer of the skill

## Advanced Optional Fields

### permissions
- **Type:** array of strings
- **Example:** `["network", "file_read", "file_write"]`
- **Description:** Required permissions for skill execution
- **Common Values:**
  - `network` - Requires internet access
  - `file_read` - Needs to read files
  - `file_write` - Needs to write files
  - `shell` - Requires shell command execution

### guardrails
- **Type:** array of strings
- **Example:** `["never delete files", "log all execution", "require confirmation"]`
- **Description:** Safety restrictions and operational rules

### dependencies
- **Type:** array of strings or objects
- **Example:** `["python>=3.8", "numpy>=1.20"]`
- **Description:** External dependencies required by the skill

### license
- **Type:** string
- **Example:** `"MIT"`, `"Apache-2.0"`, `"proprietary"`
- **Description:** License under which the skill is distributed

### category
- **Type:** string
- **Example:** `"text-processing"`, `"data-analysis"`, `"automation"`
- **Description:** Primary category for the skill

### language
- **Type:** string or array
- **Example:** `"en"`, `["en", "zh", "es"]`
- **Description:** Supported natural languages (ISO 639-1 codes)

## Complete Example

```yaml
---
name: advanced-summarizer
description: Generates intelligent summaries with customizable length and style
tags: [summarization, text, AI, NLP, productivity]
triggers:
  - summarize
  - create summary
  - tldr
  - brief me
version: 2.1.0
author: Jane Developer
category: text-processing
license: MIT
language: [en, zh]
permissions:
  - file_read
guardrails:
  - never modify original files
  - preserve privacy-sensitive information
dependencies:
  - python>=3.9
  - transformers>=4.0
---
```

## Field Selection Guidelines

### Minimal Skill (Beginner)

This is the absolute minimum required for a valid skill. While functional, adding tags and triggers (shown in Standard Skill below) is **strongly recommended** for better discoverability and usability.

```yaml
---
name: my-skill
description: What this skill does
version: 1.0.0
author: Your Name
---
```

### Standard Skill (Recommended)
```yaml
---
name: my-skill
description: What this skill does
tags: [tag1, tag2, tag3]
triggers:
  - trigger phrase 1
  - trigger phrase 2
version: 1.0.0
author: Your Name
---
```

### Production Skill (Advanced)
```yaml
---
name: my-skill
description: What this skill does
tags: [tag1, tag2, tag3, tag4]
triggers:
  - trigger phrase 1
  - trigger phrase 2
  - trigger phrase 3
version: 1.0.0
author: Your Name
category: main-category
license: MIT
permissions:
  - permission1
  - permission2
guardrails:
  - safety rule 1
  - safety rule 2
dependencies:
  - dependency1
  - dependency2
---
```

---

## 中文

这是根据 Anthropic Agent Skills 规范在 SKILL.md 文件中使用的 YAML 前置内容字段的快速参考指南。

## 必需字段

### name（名称）
- **类型：** 字符串
- **格式：** 小写-带连字符（kebab-case）
- **示例：** `"text-summarizer"`、`"code-reviewer"`
- **描述：** 技能的唯一标识符

### description（描述）
- **类型：** 字符串
- **最大长度：** 约100个字符
- **示例：** `"Summarizes large bodies of text into concise highlights"`
- **描述：** 技能功能的简要总结

## 常见可选字段

### tags（标签）
- **类型：** 字符串数组
- **示例：** `[summarization, text, NLP, productivity]`
- **描述：** 用于发现和分类的关键词
- **最佳实践：** 包含3-5个相关标签

### triggers（触发器）
- **类型：** 字符串数组
- **示例：** `["summarize", "summary", "tldr"]`
- **描述：** 激活此技能的词语或短语
- **最佳实践：** 包含3-5个自然触发短语

### version（版本）
- **类型：** 字符串（语义版本控制）
- **示例：** `"1.0.0"`、`"2.1.3"`
- **描述：** 遵循 semver（主要.次要.补丁）的版本号
- **最佳实践：** 新技能从1.0.0开始

### author（作者）
- **类型：** 字符串
- **示例：** `"张三"`、`"@username"`、`"company-name"`
- **描述：** 技能的创建者或维护者

## 高级可选字段

### permissions（权限）
- **类型：** 字符串数组
- **示例：** `["network", "file_read", "file_write"]`
- **描述：** 技能执行所需的权限
- **常见值：**
  - `network` - 需要互联网访问
  - `file_read` - 需要读取文件
  - `file_write` - 需要写入文件
  - `shell` - 需要执行 shell 命令

### guardrails（护栏）
- **类型：** 字符串数组
- **示例：** `["never delete files", "log all execution", "require confirmation"]`
- **描述：** 安全限制和操作规则

### dependencies（依赖项）
- **类型：** 字符串或对象数组
- **示例：** `["python>=3.8", "numpy>=1.20"]`
- **描述：** 技能所需的外部依赖项

### license（许可证）
- **类型：** 字符串
- **示例：** `"MIT"`、`"Apache-2.0"`、`"proprietary"`
- **描述：** 技能分发的许可证

### category（类别）
- **类型：** 字符串
- **示例：** `"text-processing"`、`"data-analysis"`、`"automation"`
- **描述：** 技能的主要类别

### language（语言）
- **类型：** 字符串或数组
- **示例：** `"en"`、`["en", "zh", "es"]`
- **描述：** 支持的自然语言（ISO 639-1 代码）

## 完整示例

```yaml
---
name: advanced-summarizer
description: Generates intelligent summaries with customizable length and style
tags: [summarization, text, AI, NLP, productivity]
triggers:
  - summarize
  - create summary
  - tldr
  - brief me
version: 2.1.0
author: Jane Developer
category: text-processing
license: MIT
language: [en, zh]
permissions:
  - file_read
guardrails:
  - never modify original files
  - preserve privacy-sensitive information
dependencies:
  - python>=3.9
  - transformers>=4.0
---
```

## 字段选择指南

### 最小技能（初学者）

这是有效技能所需的绝对最小值。虽然可用，但**强烈建议**添加标签和触发器（如下面的标准技能所示）以获得更好的可发现性和可用性。

```yaml
---
name: my-skill
description: What this skill does
version: 1.0.0
author: Your Name
---
```

### 标准技能（推荐）
```yaml
---
name: my-skill
description: What this skill does
tags: [tag1, tag2, tag3]
triggers:
  - trigger phrase 1
  - trigger phrase 2
version: 1.0.0
author: Your Name
---
```

### 生产技能（高级）
```yaml
---
name: my-skill
description: What this skill does
tags: [tag1, tag2, tag3, tag4]
triggers:
  - trigger phrase 1
  - trigger phrase 2
  - trigger phrase 3
version: 1.0.0
author: Your Name
category: main-category
license: MIT
permissions:
  - permission1
  - permission2
guardrails:
  - safety rule 1
  - safety rule 2
dependencies:
  - dependency1
  - dependency2
---
```
