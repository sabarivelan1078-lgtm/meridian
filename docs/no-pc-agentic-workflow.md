# No-PC Agentic Development and APK Guide

## Purpose
This guide exists because the learner does not know coding and does not have a PC. The project must be built so the learner can review plans, receive APK files, install them on Redmi Pad 2, and give feedback without running developer tools locally.

## Operating model
The learner should not be expected to edit code, install Flutter, run Gradle, or debug Android build errors. The AI coding agent should handle implementation, commits, pull requests, checks, and APK build setup.

The learner's role is to:
1. Confirm product decisions in plain English.
2. Test the APK on Redmi Pad 2.
3. Report what feels confusing, slow, ugly, inaccurate, or missing.
4. Share screenshots or recordings only when comfortable.
5. Approve the next small milestone.

The agent's role is to:
1. Convert product decisions into code and documentation.
2. Keep each change small enough to review.
3. Commit changes on the current branch.
4. Create pull requests with clear summaries.
5. Maintain a cloud APK build workflow.
6. Explain installation and testing steps in non-technical language.

## Cloud build strategy
Because the learner has no PC, APK files should be generated in GitHub Actions.

The build workflow should eventually:
1. Check out the repository.
2. Install Flutter.
3. Download dependencies.
4. Run analysis and tests.
5. Build a debug APK.
6. Upload the APK as a workflow artifact.

The learner should only need to:
1. Open the GitHub Actions run on the Redmi Pad 2 browser.
2. Download the APK artifact.
3. Install the APK.
4. Open the app and test the requested flow.

## Redmi Pad 2 APK installation guide
When an APK is available, the learner can install it using these steps:

1. Download the APK file from the GitHub Actions artifact.
2. Open the downloaded APK from the browser downloads or file manager.
3. If Android blocks installation, allow installs from that browser or file manager.
4. Tap Install.
5. Open the IELTS coach app.
6. Test the exact flow requested in the PR notes.

The app is personal-use only, so Play Store release is not required.

## Safe development sequence
The project should be built in small APK milestones.

### Milestone 1: App opens
Goal: prove an APK can be built and installed.

Includes:
- Flutter scaffold.
- Premium dark home screen.
- Basic navigation shell.
- Placeholder screens.
- GitHub Actions APK artifact.

Learner test:
- Install APK.
- Confirm the app opens.
- Confirm text is readable.
- Confirm navigation works.

### Milestone 2: Profile and settings
Goal: save the learner's IELTS preferences.

Includes:
- IELTS General Training selected.
- Goal Band 8.
- 15 minutes per day.
- English with Tamil support.
- Balanced examiner plus coach.
- Premium dark theme.

Learner test:
- Change a setting.
- Close and reopen app.
- Confirm the setting remains saved.

### Milestone 3: Speaking practice without AI
Goal: practice and save recordings locally.

Includes:
- Prompt cards.
- Timer.
- Record button.
- Playback.
- Local recording history.

Learner test:
- Record an answer.
- Replay it.
- Confirm it appears in history.

### Milestone 4: Diagnostic and plan
Goal: create the 100-day plan.

Includes:
- Diagnostic speaking flow.
- Initial skill profile.
- 100-day lesson schedule.
- Missed-day recovery placeholder.

Learner test:
- Complete diagnostic flow.
- View today's plan.
- Skip a day manually if supported and confirm plan adapts.

### Milestone 5: Cloud AI feedback
Goal: make the app useful as a coach.

Includes:
- Transcription.
- IELTS-style estimated band scoring.
- English feedback.
- Tamil explanations for key mistakes.
- Band 8 answer rewrite.

Learner test:
- Record an answer.
- Wait for AI feedback.
- Confirm the feedback is understandable and useful.

### Milestone 6: Google ecosystem support
Goal: use Google AI Pro ecosystem features where practical.

Includes:
- Gemini prompt export.
- NotebookLM weekly packet export.
- Google Drive backup option.
- Google Docs export option.

Learner test:
- Export one prompt or report.
- Confirm it can be opened or copied on Redmi Pad 2.

## Feedback format for the learner
The learner can give feedback without technical language by answering:

1. What screen were you on?
2. What did you tap?
3. What did you expect?
4. What happened instead?
5. Was anything slow, ugly, confusing, or hard to read?
6. If possible, attach a screenshot.

## Agent rules for future work
- Do not ask the learner to run terminal commands.
- Do not ask the learner to install Flutter, Android Studio, Java, or Gradle.
- Prefer cloud builds and downloadable APK artifacts.
- Explain every release in plain English.
- Keep each PR focused on one milestone.
- If AI keys are required, document exactly where the learner should paste them in GitHub secrets, not in code.
- Never commit personal API keys, recordings, or private learner data.
