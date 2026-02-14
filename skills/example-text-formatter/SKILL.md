---
name: text-formatter
description: Formats text in various styles including uppercase, lowercase, title case, and sentence case
tags: [text, formatting, utility, string-manipulation]
triggers:
  - format text
  - text format
  - convert case
  - change case
version: 1.0.0
author: svenskills
---

# Text Formatter Skill

## Overview

This skill formats text in different styles. It's useful for standardizing text output, preparing content for different contexts, or simply changing the case of text strings. The skill supports multiple formatting styles including uppercase, lowercase, title case, and sentence case.

## Instructions

To format text using this skill:

1. Identify the input text that needs to be formatted
2. Determine the desired output format (uppercase, lowercase, title case, or sentence case)
3. Apply the appropriate formatting transformation
4. Return the formatted text to the user
5. If the format is not specified, ask the user which format they prefer

## Examples

### Example 1: Convert to Uppercase

**Input:**
```
Format this text to uppercase: hello world
```

**Output:**
```
HELLO WORLD
```

### Example 2: Convert to Title Case

**Input:**
```
Please format "the quick brown fox jumps over the lazy dog" in title case
```

**Output:**
```
The Quick Brown Fox Jumps Over The Lazy Dog
```

### Example 3: Convert to Lowercase

**Input:**
```
Change this to lowercase: ATTENTION PLEASE
```

**Output:**
```
attention please
```

### Example 4: Sentence Case

**Input:**
```
Format as sentence case: this is a new sentence. here is another one.
```

**Output:**
```
This is a new sentence. Here is another one.
```

## Parameters

- `text` (string, required): The text to be formatted
- `format` (string, required): The desired format. Options:
  - `uppercase` or `upper`: Convert all characters to uppercase
  - `lowercase` or `lower`: Convert all characters to lowercase
  - `titlecase` or `title`: Capitalize the first letter of each word
  - `sentencecase` or `sentence`: Capitalize the first letter of each sentence
- `preserve_acronyms` (boolean, optional): When true, preserves existing acronyms in title/sentence case, default: false

## Limitations

- The skill works best with Latin alphabet characters
- Complex grammatical rules (like articles in title case) may not be perfectly handled
- Special characters and numbers are preserved as-is
- Very long texts (>10,000 characters) may take longer to process

## Dependencies

No external dependencies required. This skill uses standard text manipulation functions.

## Notes

- When converting to title case, common words like "a", "an", "the", "and", "or", "but" are typically not capitalized unless they're the first word
- Sentence case detection relies on common punctuation marks (. ! ?)
- The skill preserves whitespace and special characters
- For programming-specific case conversions (camelCase, snake_case, etc.), consider creating a specialized skill
