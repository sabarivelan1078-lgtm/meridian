# AI Scoring and Feedback Rubric

## Scoring goal
The app should provide an estimated IELTS Speaking band as accurately as practical for a personal AI product. Scores must be presented as estimates, not official IELTS results.

## Scoring criteria
Every scored task should map to the four IELTS Speaking criteria:
1. Fluency and coherence.
2. Lexical resource.
3. Grammatical range and accuracy.
4. Pronunciation.

## Score format
The app should show:
- Overall estimated band.
- Criteria-level estimated bands.
- Confidence level.
- Explanation of score.
- Most important improvement.
- A stronger version of the answer.

Example:

```text
Overall estimated band: 6.5
Confidence: Medium

Fluency and coherence: 6.5
Lexical resource: 6.0
Grammatical range and accuracy: 6.5
Pronunciation: 6.5

Main blocker: limited answer development in Part 3.
Next action: practice giving one reason, one example, and one contrast in each answer.
```

## Input signals

### Transcript-based signals
- Grammar errors.
- Sentence variety.
- Vocabulary range.
- Collocations.
- Repetition.
- Topic relevance.
- Answer organization.
- Cohesive devices.
- Idiomatic language quality.

### Audio-based signals
- Speech rate.
- Long pauses.
- Filler words.
- Self-corrections.
- Recording duration.
- Completion of task.
- Pronunciation clarity from transcription confidence.
- Word endings and connected speech where technically feasible.

### Longitudinal signals
- Recent score trend.
- Repeated grammar mistakes.
- Weak topics.
- Improvements after feedback.
- Mock test performance.

## Reliability model
Not every score should be treated equally.

Reliability ranking:
1. Full mock test: highest confidence.
2. Part 2 plus Part 3 set: medium-high confidence.
3. Single Part 2 cue card: medium confidence.
4. Single Part 1 answer: low confidence.
5. Pronunciation sentence: skill-specific only.

## Feedback style
The app should behave like a balanced examiner plus coach.

Examiner mode:
- Objective scoring.
- Clear criteria mapping.
- No exaggerated praise.
- Direct explanation of weaknesses.

Coach mode:
- Encouraging tone.
- Practical next step.
- Small daily focus.
- English explanation with Tamil support.

## Band 8 feedback target
Feedback should teach practical Band 8 behaviors:
- Speak at length without unnatural hesitation.
- Develop ideas coherently.
- Use flexible vocabulary and natural collocations.
- Use a range of grammatical structures accurately.
- Remain easy to understand with natural stress and rhythm.

## Prompting requirements
AI prompts should require:
- Strict IELTS Speaking criteria.
- No inflated scores.
- Evidence from transcript.
- Separate feedback for each criterion.
- Tamil explanation for important mistakes when enabled.
- One focused improvement task for the next session.
- Band 8 model answer that is natural, not memorized.

## Safety and honesty
The app must clearly state:
- AI scores are estimates.
- Official IELTS scores can only be given by official IELTS examiners.
- Trend over time is more useful than one isolated score.
