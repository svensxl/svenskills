# Skill Template

[English](#english) | [中文](#中文)

---

## English

This directory contains a template for creating new Agent Skills that follow the Anthropic Agent Skills specification.

### How to Use This Template

1. **Copy the template**: Copy `SKILL.md` to a new directory under `skills/`
   ```bash
   cp template/SKILL.md skills/your-skill-name/SKILL.md
   ```

2. **Edit the YAML frontmatter**: Update the metadata at the top of the file
   - `name`: A unique identifier for your skill (lowercase-with-hyphens)
   - `description`: Brief summary of what the skill does
   - `tags`: Keywords for discovery and categorization
   - `triggers`: Words or phrases that should activate this skill
   - `version`: Semantic version number (e.g., 1.0.0)
   - `author`: Your name or identifier

3. **Write the instructions**: Replace the placeholder content with:
   - Clear overview of the skill's purpose
   - Step-by-step instructions for execution
   - Concrete examples with inputs and outputs
   - Documentation of parameters, limitations, and dependencies

4. **Add resources**: If needed, add scripts, data files, or other resources to your skill directory

5. **Test thoroughly**: Ensure your skill works as expected before committing

### Best Practices

- Keep instructions clear and concise
- Provide multiple examples showing different use cases
- Document all parameters and their types
- List any limitations or edge cases
- Include helpful notes and tips

---

## 中文

此目录包含用于创建遵循 Anthropic Agent Skills 规范的新代理技能的模板。

### 如何使用此模板

1. **复制模板**：将 `SKILL.md` 复制到 `skills/` 下的新目录
   ```bash
   cp template/SKILL.md skills/your-skill-name/SKILL.md
   ```

2. **编辑 YAML 前置内容**：更新文件顶部的元数据
   - `name`：技能的唯一标识符（小写-用连字符）
   - `description`：技能功能的简要总结
   - `tags`：用于发现和分类的关键词
   - `triggers`：应该激活此技能的词语或短语
   - `version`：语义版本号（例如 1.0.0）
   - `author`：您的姓名或标识符

3. **编写指令**：用以下内容替换占位符内容：
   - 技能目的的清晰概述
   - 执行的逐步说明
   - 带有输入和输出的具体示例
   - 参数、限制和依赖项的文档

4. **添加资源**：如有需要，将脚本、数据文件或其他资源添加到您的技能目录

5. **充分测试**：在提交之前确保您的技能按预期工作

### 最佳实践

- 保持说明清晰简洁
- 提供显示不同用例的多个示例
- 记录所有参数及其类型
- 列出任何限制或边缘情况
- 包含有用的注释和提示
