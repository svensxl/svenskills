# Prompts for Creating Agent Skills

[English](#english) | [中文](#中文)

---

## English

This directory contains prompt materials and guidelines for creating high-quality Agent Skills that follow the Anthropic specification.

## Available Prompts

### Skill Creation Prompts

Use these prompts to help create new skills:

#### 1. Basic Skill Creation Prompt

```
I want to create a new Agent Skill following the Anthropic Agent Skills specification.

Skill purpose: [Describe what the skill should do]

Please help me create a SKILL.md file that includes:
1. Appropriate YAML frontmatter with name, description, tags, triggers, version, and author
2. Clear overview section
3. Step-by-step instructions
4. At least 3 examples with inputs and outputs
5. Parameter documentation if applicable
6. Limitations section
7. Dependencies section
8. Additional notes

Make sure the skill is well-documented and follows best practices.
```

#### 2. Skill Improvement Prompt

```
I have an existing Agent Skill that needs improvement. Here's the current SKILL.md:

[Paste your current SKILL.md content]

Please help me improve this skill by:
1. Enhancing the clarity of instructions
2. Adding more diverse examples
3. Better documenting parameters and limitations
4. Ensuring it follows the Anthropic Agent Skills specification
5. Suggesting additional triggers or tags
```

#### 3. Skill Testing Prompt

```
I've created an Agent Skill. Please help me test it thoroughly.

Here's the SKILL.md:

[Paste your SKILL.md content]

Please:
1. Review the skill for completeness
2. Suggest test cases to validate functionality
3. Identify potential edge cases or limitations
4. Recommend improvements to the documentation
```

## Skill Creation Guidelines

### 1. Choosing a Good Skill Name

- Use lowercase letters with hyphens (kebab-case)
- Make it descriptive but concise
- Avoid generic names
- Examples: `code-reviewer`, `meeting-summarizer`, `data-analyzer`

### 2. Writing Effective Descriptions

- Keep it under 100 characters
- Focus on the primary capability
- Use action verbs
- Be specific about what the skill does

### 3. Selecting Triggers

- Choose natural phrases users might say
- Include variations of the same concept
- Keep triggers between 1-4 words
- Avoid overly generic triggers that might conflict

### 4. Writing Clear Instructions

- Use numbered steps for sequential processes
- Be explicit about inputs and outputs
- Include decision points when appropriate
- Specify error handling procedures

### 5. Creating Helpful Examples

- Show basic usage first
- Include edge cases
- Demonstrate different parameter combinations
- Use realistic, practical scenarios

## Best Practices Checklist

When creating a skill, ensure:

- [ ] YAML frontmatter is complete and valid
- [ ] Skill name is unique and descriptive
- [ ] Description is clear and concise
- [ ] At least 3-5 relevant tags are included
- [ ] 3-5 appropriate triggers are specified
- [ ] Version follows semantic versioning (e.g., 1.0.0)
- [ ] Instructions are clear and step-by-step
- [ ] At least 3 examples with inputs and outputs
- [ ] Parameters are documented with types and defaults
- [ ] Limitations are honestly stated
- [ ] Dependencies are listed
- [ ] Additional notes provide helpful context

## Common Patterns

### Pattern 1: Processing Skill

For skills that transform input to output:

1. Validate input
2. Process/transform the data
3. Format output
4. Return results

### Pattern 2: Analysis Skill

For skills that analyze and provide insights:

1. Receive data/content
2. Apply analysis techniques
3. Generate insights
4. Present findings

### Pattern 3: Generation Skill

For skills that create new content:

1. Understand requirements
2. Apply generation rules
3. Create content
4. Review and refine
5. Deliver output

### Pattern 4: Automation Skill

For skills that automate tasks:

1. Define task parameters
2. Execute each step
3. Handle errors appropriately
4. Confirm completion
5. Report results

---

## 中文

此目录包含用于创建遵循 Anthropic 规范的高质量代理技能的提示词材料和指南。

## 可用提示词

### 技能创建提示词

使用这些提示词帮助创建新技能：

#### 1. 基本技能创建提示词

```
我想创建一个遵循 Anthropic Agent Skills 规范的新代理技能。

技能目的：[描述技能应该做什么]

请帮助我创建一个 SKILL.md 文件，包括：
1. 包含 name、description、tags、triggers、version 和 author 的适当 YAML 前置内容
2. 清晰的概述部分
3. 逐步说明
4. 至少 3 个带有输入和输出的示例
5. 参数文档（如适用）
6. 限制部分
7. 依赖项部分
8. 附加注释

确保技能文档完善并遵循最佳实践。
```

#### 2. 技能改进提示词

```
我有一个现有的代理技能需要改进。这是当前的 SKILL.md：

[粘贴您当前的 SKILL.md 内容]

请帮助我改进此技能：
1. 增强说明的清晰度
2. 添加更多样化的示例
3. 更好地记录参数和限制
4. 确保它遵循 Anthropic Agent Skills 规范
5. 建议其他触发器或标签
```

#### 3. 技能测试提示词

```
我创建了一个代理技能。请帮助我彻底测试它。

这是 SKILL.md：

[粘贴您的 SKILL.md 内容]

请：
1. 检查技能的完整性
2. 建议验证功能的测试用例
3. 识别潜在的边缘情况或限制
4. 推荐文档改进
```

## 技能创建指南

### 1. 选择好的技能名称

- 使用小写字母和连字符（kebab-case）
- 使其具有描述性但简洁
- 避免通用名称
- 示例：`code-reviewer`、`meeting-summarizer`、`data-analyzer`

### 2. 编写有效的描述

- 保持在 100 个字符以下
- 专注于主要功能
- 使用动作动词
- 具体说明技能的作用

### 3. 选择触发器

- 选择用户可能说的自然短语
- 包括同一概念的变体
- 将触发器保持在 1-4 个单词之间
- 避免可能冲突的过于通用的触发器

### 4. 编写清晰的说明

- 对顺序过程使用编号步骤
- 明确输入和输出
- 在适当时包括决策点
- 指定错误处理程序

### 5. 创建有用的示例

- 首先显示基本用法
- 包括边缘情况
- 演示不同的参数组合
- 使用现实、实用的场景

## 最佳实践清单

创建技能时，确保：

- [ ] YAML 前置内容完整且有效
- [ ] 技能名称唯一且具有描述性
- [ ] 描述清晰简洁
- [ ] 包含至少 3-5 个相关标签
- [ ] 指定 3-5 个适当的触发器
- [ ] 版本遵循语义版本控制（例如 1.0.0）
- [ ] 说明清晰且逐步说明
- [ ] 至少 3 个带有输入和输出的示例
- [ ] 参数记录有类型和默认值
- [ ] 诚实地陈述限制
- [ ] 列出依赖项
- [ ] 附加注释提供有用的上下文

## 常见模式

### 模式 1：处理技能

用于将输入转换为输出的技能：

1. 验证输入
2. 处理/转换数据
3. 格式化输出
4. 返回结果

### 模式 2：分析技能

用于分析和提供洞察的技能：

1. 接收数据/内容
2. 应用分析技术
3. 生成洞察
4. 呈现发现

### 模式 3：生成技能

用于创建新内容的技能：

1. 理解要求
2. 应用生成规则
3. 创建内容
4. 审查和完善
5. 交付输出

### 模式 4：自动化技能

用于自动化任务的技能：

1. 定义任务参数
2. 执行每个步骤
3. 适当处理错误
4. 确认完成
5. 报告结果
