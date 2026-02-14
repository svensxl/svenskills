# Contributing to svenskills

[English](#english) | [中文](#中文)

---

## English

Thank you for your interest in contributing to this repository! This document provides guidelines for adding new skills and improving existing ones.

## How to Contribute

### Adding a New Skill

1. **Plan Your Skill**
   - Clearly define what your skill will do
   - Research if a similar skill already exists
   - Review the [Anthropic Agent Skills specification](https://agentskills.io/specification)

2. **Create the Skill Structure**
   ```bash
   # Create a new directory under skills/
   mkdir skills/your-skill-name
   
   # Copy the template
   cp template/SKILL.md skills/your-skill-name/SKILL.md
   ```

3. **Fill Out the SKILL.md File**
   - Complete all sections of the YAML frontmatter
   - Write clear, step-by-step instructions
   - Provide multiple examples with realistic inputs and outputs
   - Document parameters, limitations, and dependencies
   - Add helpful notes and tips

4. **Add Resources (if needed)**
   - Scripts should go in a `scripts/` subdirectory
   - Data files should go in a `data/` subdirectory
   - Images or assets should go in an `assets/` subdirectory

5. **Test Your Skill**
   - Test all examples in your documentation
   - Try edge cases and error scenarios
   - Ensure instructions are clear and complete
   - Verify all triggers work as expected

6. **Update Documentation**
   - Add your skill to `skills/README.md` under the appropriate category
   - Include a brief description and link to your skill directory

7. **Submit Your Changes**
   - Create a commit with a clear message
   - Push your changes
   - Create a pull request with a description of your skill

### Improving Existing Skills

1. **Identify the Improvement**
   - Bug fixes
   - Clarity improvements
   - Additional examples
   - Enhanced documentation
   - New features

2. **Make Your Changes**
   - Keep changes focused and minimal
   - Maintain consistency with the existing style
   - Update version number if appropriate (bug fixes: patch, new features: minor)

3. **Test Thoroughly**
   - Ensure existing functionality still works
   - Test your improvements
   - Verify documentation is still accurate

4. **Submit Your Changes**
   - Create a descriptive commit message
   - Explain what was improved and why

## Skill Quality Guidelines

### YAML Frontmatter

- `name`: Use lowercase with hyphens, be descriptive (e.g., `markdown-formatter`)
- `description`: Under 100 characters, clearly state the skill's purpose
- `tags`: 3-5 relevant tags for discoverability
- `triggers`: 3-5 natural phrases users might say
- `version`: Follow [semantic versioning](https://semver.org/) (MAJOR.MINOR.PATCH)
- `author`: Your name or username

### Instructions

- Use clear, concise language
- Number steps in sequential processes
- Be explicit about inputs and outputs
- Include error handling guidance
- Explain edge cases

### Examples

- Provide at least 3 examples
- Show different use cases
- Use realistic scenarios
- Include both simple and complex cases
- Format consistently

### Documentation

- Be thorough but concise
- Use proper markdown formatting
- Include code blocks where appropriate
- Organize information logically
- Proofread for clarity

## Code of Conduct

- Be respectful and constructive
- Help others learn and improve
- Give credit where credit is due
- Focus on the quality of contributions
- Welcome newcomers

## Questions?

If you have questions about contributing:
- Check the [template](template/) directory for examples
- Review the [prompts](prompts/) directory for guidance
- Look at [existing skills](skills/) for inspiration
- Open an issue to discuss your idea before starting

## License

By contributing to this repository, you agree that your contributions will be licensed under the same license as the project.

---

## 中文

感谢您对本仓库的贡献兴趣！本文档提供了添加新技能和改进现有技能的指南。

## 如何贡献

### 添加新技能

1. **规划您的技能**
   - 明确定义您的技能将做什么
   - 研究是否已存在类似的技能
   - 查看 [Anthropic Agent Skills 规范](https://agentskills.io/specification)

2. **创建技能结构**
   ```bash
   # 在 skills/ 下创建新目录
   mkdir skills/your-skill-name
   
   # 复制模板
   cp template/SKILL.md skills/your-skill-name/SKILL.md
   ```

3. **填写 SKILL.md 文件**
   - 完成 YAML 前置内容的所有部分
   - 编写清晰的逐步说明
   - 提供多个带有真实输入和输出的示例
   - 记录参数、限制和依赖项
   - 添加有用的注释和提示

4. **添加资源（如需要）**
   - 脚本应放在 `scripts/` 子目录中
   - 数据文件应放在 `data/` 子目录中
   - 图像或资源应放在 `assets/` 子目录中

5. **测试您的技能**
   - 测试文档中的所有示例
   - 尝试边缘情况和错误场景
   - 确保说明清晰完整
   - 验证所有触发器按预期工作

6. **更新文档**
   - 将您的技能添加到 `skills/README.md` 的适当类别下
   - 包含简要描述和指向您技能目录的链接

7. **提交更改**
   - 创建带有清晰消息的提交
   - 推送您的更改
   - 创建带有技能描述的拉取请求

### 改进现有技能

1. **识别改进点**
   - 错误修复
   - 清晰度改进
   - 附加示例
   - 增强文档
   - 新功能

2. **进行更改**
   - 保持更改集中和最小化
   - 保持与现有样式的一致性
   - 如适当，更新版本号（错误修复：补丁，新功能：次要）

3. **彻底测试**
   - 确保现有功能仍然有效
   - 测试您的改进
   - 验证文档仍然准确

4. **提交更改**
   - 创建描述性提交消息
   - 解释改进了什么以及为什么

## 技能质量指南

### YAML 前置内容

- `name`：使用小写字母和连字符，具有描述性（例如 `markdown-formatter`）
- `description`：少于 100 个字符，清楚地说明技能的目的
- `tags`：3-5 个相关标签以便发现
- `triggers`：用户可能说的 3-5 个自然短语
- `version`：遵循[语义版本控制](https://semver.org/)（MAJOR.MINOR.PATCH）
- `author`：您的姓名或用户名

### 说明

- 使用清晰、简洁的语言
- 在顺序过程中编号步骤
- 明确输入和输出
- 包含错误处理指导
- 解释边缘情况

### 示例

- 提供至少 3 个示例
- 显示不同的用例
- 使用真实场景
- 包括简单和复杂的情况
- 格式一致

### 文档

- 彻底但简洁
- 使用正确的 markdown 格式
- 在适当的地方包含代码块
- 逻辑地组织信息
- 校对以确保清晰

## 行为准则

- 尊重和建设性
- 帮助他人学习和改进
- 给予应有的信用
- 专注于贡献的质量
- 欢迎新人

## 有疑问？

如果您对贡献有疑问：
- 查看 [template](template/) 目录获取示例
- 查看 [prompts](prompts/) 目录获取指导
- 查看[现有技能](skills/)获取灵感
- 在开始之前打开问题讨论您的想法

## 许可证

通过贡献到此仓库，您同意您的贡献将按照与项目相同的许可证进行许可。
