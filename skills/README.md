# Skills Directory

[English](#english) | [中文](#中文)

---

## English

This directory contains custom Agent Skills that follow the Anthropic Agent Skills specification.

## Available Skills

### Text Processing

- **[example-text-formatter](./example-text-formatter/)**: Formats text in various styles (uppercase, lowercase, title case, sentence case)

### Productivity

- **[meeting-notes-organizer](./meeting-notes-organizer/)**: Organizes and structures meeting notes with action items, decisions, and key points

## Directory Structure

Each skill is contained in its own subdirectory with the following structure:

```
skill-name/
├── SKILL.md          # Main skill file with YAML frontmatter and instructions
├── scripts/          # (Optional) Helper scripts
├── data/             # (Optional) Data files
└── assets/           # (Optional) Images or other assets
```

## Using Skills

1. Browse this directory to find the skill you need
2. Open the skill's directory and read the `SKILL.md` file
3. Follow the instructions in the SKILL.md file
4. Skills can be used directly with AI agents that support the Agent Skills specification

## Adding New Skills

To add a new skill to this directory:

1. Create a new subdirectory with a descriptive name (use lowercase with hyphens)
2. Copy the template from `../template/SKILL.md` as a starting point
3. Fill in all sections of the SKILL.md file
4. Add any necessary scripts, data files, or assets
5. Test your skill thoroughly
6. Update this README to list your new skill

## Skill Categories

Skills can be organized by category. Suggested categories include:

- **Text Processing**: Skills for manipulating, formatting, or analyzing text
- **Data Analysis**: Skills for working with data and generating insights
- **Automation**: Skills for automating repetitive tasks
- **Creative**: Skills for creative tasks like writing, art, or design
- **Development**: Skills for coding, debugging, or development workflows
- **Productivity**: Skills for enhancing productivity and organization

---

## 中文

此目录包含遵循 Anthropic Agent Skills 规范的自定义代理技能。

## 可用技能

### 文本处理

- **[example-text-formatter](./example-text-formatter/)**：以各种样式格式化文本（大写、小写、标题大小写、句子大小写）

### 生产力

- **[meeting-notes-organizer](./meeting-notes-organizer/)**：组织和构建会议笔记，包括行动项、决策和要点

## 目录结构

每个技能都包含在自己的子目录中，结构如下：

```
skill-name/
├── SKILL.md          # 带有 YAML 前置内容和指令的主技能文件
├── scripts/          # （可选）辅助脚本
├── data/             # （可选）数据文件
└── assets/           # （可选）图像或其他资源
```

## 使用技能

1. 浏览此目录查找所需的技能
2. 打开技能目录并阅读 `SKILL.md` 文件
3. 按照 SKILL.md 文件中的说明操作
4. 技能可以直接与支持 Agent Skills 规范的 AI 代理一起使用

## 添加新技能

要向此目录添加新技能：

1. 创建一个具有描述性名称的新子目录（使用小写字母和连字符）
2. 从 `../template/SKILL.md` 复制模板作为起点
3. 填写 SKILL.md 文件的所有部分
4. 添加任何必要的脚本、数据文件或资源
5. 充分测试您的技能
6. 更新此 README 以列出您的新技能

## 技能类别

技能可以按类别组织。建议的类别包括：

- **文本处理**：用于操作、格式化或分析文本的技能
- **数据分析**：用于处理数据和生成洞察的技能
- **自动化**：用于自动化重复任务的技能
- **创意**：用于创意任务（如写作、艺术或设计）的技能
- **开发**：用于编码、调试或开发工作流的技能
- **生产力**：用于提高生产力和组织的技能
