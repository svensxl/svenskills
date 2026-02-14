# svenskills

[English](#english) | [中文](#中文)

---

## English

### Overview

This repository stores custom agent skills and prompt materials used in daily life and work. All skills follow the [Anthropic Agent Skills specification](https://agentskills.io/specification), ensuring they are modular, portable, and reusable across compatible AI platforms.

### Repository Structure

```
svenskills/
├── skills/           # Custom agent skills
├── prompts/          # Prompt materials for creating skills
├── template/         # Template for creating new skills
└── README.md         # This file
```

### What are Agent Skills?

Agent Skills are standardized, self-contained packages that teach AI agents (like Claude) new capabilities. Each skill includes:
- **SKILL.md**: Main file with metadata, instructions, and behavior definitions
- Optional scripts, data files, or other resources
- YAML frontmatter for metadata and configuration

### Using Skills

1. Browse the `skills/` directory to find available skills
2. Each skill folder contains a `SKILL.md` file with complete documentation
3. Skills can be used directly with compatible AI platforms

### Creating New Skills

1. Use the template in `template/` directory as a starting point
2. Follow the [Agent Skills specification](https://agentskills.io/specification)
3. Refer to `prompts/` directory for helpful prompt materials
4. Test your skill before adding it to the repository

### Contributing

When adding new skills:
1. Create a new directory under `skills/` with a descriptive name
2. Include a `SKILL.md` file with proper YAML frontmatter
3. Add any necessary scripts or resources
4. Update this README if needed
5. Ensure your skill follows the Anthropic specification

### Resources

- [Agent Skills Specification](https://agentskills.io/specification)
- [Anthropic Skills Repository](https://github.com/anthropics/skills)
- [Official Documentation](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview)

---

## 中文

### 概述

此仓库用来存储我的生活和工作中使用的自定义代理技能（agent skills）以及创建这些技能的提示词材料。所有技能都遵循 [Anthropic Agent Skills 规范](https://agentskills.io/specification)，确保它们模块化、可移植且可在兼容的 AI 平台上重复使用。

### 仓库结构

```
svenskills/
├── skills/           # 自定义代理技能
├── prompts/          # 创建技能的提示词材料
├── template/         # 创建新技能的模板
└── README.md         # 本文件
```

### 什么是 Agent Skills？

Agent Skills（代理技能）是标准化的、自包含的软件包，用于教会 AI 代理（如 Claude）新的能力。每个技能包括：
- **SKILL.md**：包含元数据、指令和行为定义的主文件
- 可选的脚本、数据文件或其他资源
- 用于元数据和配置的 YAML 前置内容

### 使用技能

1. 浏览 `skills/` 目录查找可用技能
2. 每个技能文件夹都包含一个 `SKILL.md` 文件，内有完整文档
3. 技能可以直接与兼容的 AI 平台一起使用

### 创建新技能

1. 使用 `template/` 目录中的模板作为起点
2. 遵循 [Agent Skills 规范](https://agentskills.io/specification)
3. 参考 `prompts/` 目录获取有用的提示词材料
4. 在将技能添加到仓库之前进行测试

### 贡献指南

添加新技能时：
1. 在 `skills/` 下创建一个描述性名称的新目录
2. 包含一个带有适当 YAML 前置内容的 `SKILL.md` 文件
3. 添加任何必要的脚本或资源
4. 如需要，更新本 README
5. 确保您的技能遵循 Anthropic 规范

### 资源链接

- [Agent Skills 规范](https://agentskills.io/specification)
- [Anthropic Skills 仓库](https://github.com/anthropics/skills)
- [官方文档](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview)
