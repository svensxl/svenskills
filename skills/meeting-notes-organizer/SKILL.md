---
name: meeting-notes-organizer
description: Organizes and structures meeting notes with action items, decisions, and key points
tags: [productivity, meetings, notes, organization, work]
triggers:
  - organize meeting notes
  - structure meeting
  - format meeting notes
  - meeting summary
version: 1.0.0
author: svenskills
---

# Meeting Notes Organizer

## Overview

This skill helps organize raw meeting notes into a structured format with clear sections for attendees, discussion points, decisions made, action items, and next steps. It's particularly useful for turning unstructured meeting transcripts or rough notes into professional, actionable documentation.

## Instructions

To organize meeting notes using this skill:

1. **Receive the raw meeting notes** - Accept the unstructured text or transcript
2. **Identify key elements**:
   - Meeting date and time (if available)
   - Attendees/participants
   - Main discussion topics
   - Decisions made
   - Action items with owners
   - Questions raised
   - Next steps
3. **Structure the output** using the following format:
   - Meeting title/subject
   - Date and attendees
   - Discussion points (organized by topic)
   - Key decisions
   - Action items (with owners and deadlines if mentioned)
   - Open questions
   - Next meeting/follow-up
4. **Format consistently** - Use clear headers, bullet points, and formatting
5. **Highlight action items** - Make action items prominent and actionable
6. **Return the organized notes** in markdown format

## Examples

### Example 1: Basic Meeting Notes

**Input:**
```
We met today to discuss the Q1 marketing campaign. John, Sarah, and Mike were there.
We talked about the budget - decided to allocate $50K. Sarah will create the campaign 
brief by next Friday. Mike mentioned we need to review competitors. Need to follow up 
with the design team. Next meeting is Feb 20th.
```

**Output:**
```markdown
# Q1 Marketing Campaign Planning

**Date:** Today
**Attendees:** John, Sarah, Mike

## Discussion Points

- Q1 marketing campaign planning
- Budget allocation discussion
- Competitor analysis needs
- Design team coordination

## Decisions Made

- ✓ Budget allocated: $50,000 for Q1 campaign

## Action Items

- [ ] **Sarah**: Create campaign brief (Due: Next Friday)
- [ ] **Mike**: Review competitor campaigns (Due: TBD)
- [ ] **Team**: Follow up with design team (Owner: TBD)

## Next Steps

- Next meeting: February 20th
```

### Example 2: Technical Team Meeting

**Input:**
```
Sprint planning - Feb 14. Team: Alex, Chen, Priya, Jordan. Discussed API 
performance issues. Chen found bottleneck in database queries. Decision: 
migrate to new caching layer. Alex to spike Redis implementation. Priya 
will update documentation. Need to schedule code review. Questions about 
deployment timeline. Target: end of sprint.
```

**Output:**
```markdown
# Sprint Planning - API Performance

**Date:** February 14
**Attendees:** Alex, Chen, Priya, Jordan

## Discussion Points

### API Performance Issues
- Database query bottlenecks identified by Chen
- Need for improved caching strategy
- Deployment timeline concerns

## Decisions Made

- ✓ Migrate to new caching layer
- ✓ Target completion: End of sprint

## Action Items

- [ ] **Alex**: Create Redis implementation spike
- [ ] **Priya**: Update technical documentation
- [ ] **Team**: Schedule code review session (Owner: TBD)

## Open Questions

- Exact deployment timeline to be determined

## Next Steps

- Complete caching layer migration by end of sprint
- Code review to be scheduled
```

### Example 3: Minimal Notes with Missing Information

**Input:**
```
Quick standup. Discussed blockers. Need help with authentication module. 
Design review tomorrow.
```

**Output:**
```markdown
# Standup Meeting

**Date:** Not specified
**Attendees:** Not specified

## Discussion Points

- Team blockers discussed
- Authentication module challenges
- Design review scheduled

## Action Items

- [ ] Address authentication module issues (Owner: TBD)
- [ ] Prepare for design review (Owner: TBD)

## Next Steps

- Design review: Tomorrow
```

## Parameters

- `raw_notes` (string, required): The unstructured meeting notes or transcript to organize
- `include_timestamp` (boolean, optional): Whether to include timestamp in the output, default: true
- `format_style` (string, optional): Output format style - "standard" (default), "detailed", or "brief"
- `highlight_actions` (boolean, optional): Whether to specially highlight action items, default: true

## Limitations

- Skill relies on information present in the input - cannot infer missing details
- Works best with English language notes
- May not capture nuanced context or implied meanings
- Time zones are not automatically detected
- Assignee detection depends on clear ownership statements in notes

## Dependencies

No external dependencies required. Works with standard text processing.

## Notes

### Best Practices

- For best results, ensure raw notes mention:
  - Who attended the meeting
  - When it occurred
  - Who is responsible for each action item
  - Any deadlines or due dates

### Format Conventions

- Uses markdown checkboxes (- [ ]) for action items
- Uses ✓ symbol for completed decisions
- Sections may be omitted if no relevant information is found
- Action items without owners are marked as "Owner: TBD"
- Deadlines marked as "Due: TBD" if not specified

### Customization

The output format can be adjusted based on organizational needs:
- Add priority levels to action items
- Include meeting costs or time spent
- Add tags or categories to discussion points
- Link to related documents or tickets
