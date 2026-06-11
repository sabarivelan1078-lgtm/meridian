# Meridian IELTS Speaking Coach

Meridian is being planned as a personal IELTS General Training Speaking coach for a Tamil-speaking learner using a Redmi Pad 2.

## Current status
The repository is in the planning-to-MVP stage. The current documentation defines the product requirements, IELTS Speaking training system, AI scoring approach, Tamil support plan, Redmi Pad 2 UX direction, Google AI Pro ecosystem strategy, and no-PC APK delivery workflow.

## Key product decisions
- IELTS type: General Training.
- Priority: Speaking first.
- Target: Band 8 speaking habits.
- Daily study time: 15 minutes.
- Language support: English with Tamil explanations.
- Coaching tone: balanced IELTS examiner plus friendly coach.
- Theme: premium dark mode first.
- Device: Redmi Pad 2.
- Release model: personal APK only, no Play Store requirement.
- Development constraint: the learner does not know coding and does not have a PC.

## Documentation map
- `docs/product-requirements.md` - product vision, target user, MVP scope, and success metrics.
- `docs/ielts-speaking-system.md` - diagnostic, daily lessons, weekly cycle, 100-day plan, and missed-day adaptation.
- `docs/ai-scoring-rubric.md` - IELTS-style estimated scoring and feedback requirements.
- `docs/tamil-support-plan.md` - English-first Tamil support strategy and Tamil learner error patterns.
- `docs/google-ai-pro-integration.md` - cloud AI, Google AI Pro companion workflows, privacy, and offline behavior.
- `docs/redmi-pad-2-ux-plan.md` - premium dark tablet UI, navigation, gestures, and accessibility.
- `docs/mvp-build-roadmap.md` - phased implementation plan from scaffold to APK pipeline.
- `docs/no-pc-agentic-workflow.md` - how the project should be built, released, installed, and tested without a PC.
- `docs/apk-download-install-guide.md` - plain-English APK download, install, and first-test instructions for Redmi Pad 2.

## Next implementation milestone
The first Flutter scaffold and GitHub Actions APK workflow are now present. Next, run the cloud workflow, download the debug APK artifact on Redmi Pad 2, and test the app shell before adding recording or AI feedback.
