# Google AI Pro and Cloud AI Integration Plan

## Goal
Use cloud AI for the best possible IELTS Speaking feedback while also taking advantage of the learner's Google AI Pro ecosystem where practical.

## Important constraint
A consumer Google AI Pro subscription may not automatically provide backend API access for a custom APK. The app should not assume that Google AI Pro can be embedded as free app infrastructure unless an official API entitlement supports it.

## Recommended architecture
Use a provider-agnostic AI layer.

```text
Flutter app
  -> Local data and audio storage
  -> AI service interface
  -> Provider adapters
      -> Gemini API
      -> OpenAI API
      -> Future provider
  -> Google ecosystem exports
```

## Cloud AI recommendation
For best scoring quality, the app should use cloud AI for:
- Audio transcription.
- IELTS rubric scoring.
- Feedback generation.
- Tamil explanations.
- Band 8 answer rewriting.
- Adaptive plan updates.

The app should keep progress locally and sync/export only when the learner chooses.

## Google AI Pro companion features

### Gemini prompt export
The app can generate copy-ready prompts for Gemini:
- Score my IELTS Speaking answer.
- Rewrite this answer at Band 8.
- Explain my grammar mistakes in Tamil.
- Create follow-up Part 3 questions.

### NotebookLM export
The app can export weekly study packets containing:
- Transcripts.
- Mistakes.
- Vocabulary list.
- Grammar repair list.
- Weekly progress summary.

### Google Drive backup
The app can use Google Drive for optional backup of:
- User profile.
- 100-day plan.
- Progress database export.
- Audio recordings.
- Transcripts.
- Feedback history.

### Google Docs export
The app can export:
- Weekly progress report.
- Band 8 answer bank.
- Vocabulary notebook.
- Grammar repair plan.

## Privacy controls
The app must provide:
- Local-only mode.
- Cloud AI consent.
- Google Drive sync toggle.
- Delete recording option.
- Delete transcript option.
- Export all data option.
- Clear all data option.

## Offline behavior
The MVP can require internet for high-quality AI feedback, but it should still work offline for:
- Viewing the plan.
- Recording practice.
- Saving recordings locally.
- Reviewing previous feedback.
- Completing non-AI drills.

When internet returns, queued recordings can be processed.
