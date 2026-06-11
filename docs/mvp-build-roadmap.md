# MVP Build Roadmap

## Build philosophy
Build the smallest polished personal APK that delivers real IELTS Speaking value. Avoid adding broad IELTS sections before the speaking loop works well.

## Recommended stack
- Framework: Flutter.
- Language: Dart.
- State management: Riverpod.
- Navigation: GoRouter.
- Local database: Drift or SQLite.
- Audio recording: Flutter audio recording plugin.
- AI: provider-agnostic service layer.
- Backup/export: Google Drive and file export later.
- APK generation: GitHub Actions so the learner does not need a PC.

## Phase 1: Documentation and app blueprint
Deliverables:
- Product requirements.
- IELTS Speaking system.
- AI scoring rubric.
- Tamil support plan.
- Google AI Pro integration plan.
- Redmi Pad 2 UX plan.
- MVP roadmap.

Status: this phase should be completed before app scaffolding.

## Phase 2: Flutter scaffold
Goal: produce the first installable APK shell through a cloud build, without requiring the learner to run any developer tools.

Deliverables:
- Flutter project.
- Android configuration.
- Premium dark theme foundation.
- Tablet-responsive shell.
- Basic navigation.
- Placeholder screens.
- GitHub Actions debug APK artifact.
- Plain-English APK download and install notes for Redmi Pad 2.

## Phase 3: Local data model
Deliverables:
- User profile model.
- Lesson model.
- Recording metadata model.
- Feedback model.
- Progress model.
- Local persistence.

## Phase 4: Speaking practice loop
Deliverables:
- Daily lesson screen.
- Prompt display.
- Audio recording.
- Local save.
- Recording history.
- Basic playback.

## Phase 5: Diagnostic and 100-day plan
Deliverables:
- Onboarding.
- Diagnostic test flow.
- Initial plan generation.
- Daily lesson schedule.
- Missed-day adaptation.

## Phase 6: Cloud AI feedback
Deliverables:
- Transcription integration.
- IELTS scoring prompt pipeline.
- English and Tamil feedback.
- Criteria scores.
- Band 8 answer rewrite.
- Next-task generation.

## Phase 7: Progress and review
Deliverables:
- Progress dashboard.
- Band trend.
- Weakness tracking.
- Vocabulary notebook.
- Grammar repair list.

## Phase 8: Google ecosystem support
Deliverables:
- Gemini prompt export.
- Google Drive backup option.
- Google Docs export.
- NotebookLM study packet export.

## Phase 9: APK pipeline
Goal: keep APK creation fully cloud-based for a learner who does not code and does not own a PC.

Deliverables:
- GitHub Actions workflow.
- Debug APK artifact.
- Release APK artifact if signing is configured.
- Installation instructions for Redmi Pad 2.
- Clear release notes describing what to test in non-technical language.
- GitHub Secrets guidance for API keys without exposing private credentials.

## No-PC acceptance criteria
- The learner is never required to install Flutter, Android Studio, Java, Gradle, or other developer tools.
- The learner can download APK artifacts from GitHub Actions using the Redmi Pad 2 browser.
- Each release explains what changed and what to test in plain English.

## MVP acceptance criteria
- The learner can install an APK on Redmi Pad 2.
- The learner can complete onboarding.
- The learner can record IELTS Speaking answers.
- The app can store recordings and progress locally.
- The app can generate or display a 100-day plan.
- The app can provide AI feedback when cloud AI is configured.
- The app adapts when days are missed.
- The UI is premium dark, tablet-friendly, and smooth.
