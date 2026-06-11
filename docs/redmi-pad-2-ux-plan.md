# Redmi Pad 2 UX and Premium Dark Mode Plan

## Device-first goal
The app should feel native and premium on Redmi Pad 2. It should not look like a stretched phone app.

## Visual direction
Theme: premium dark mode first.

Design qualities:
- Deep dark background.
- Soft neural gradients.
- Glass-like cards.
- Gentle glow accents.
- Large rounded panels.
- High readability.
- Smooth animated transitions.
- Premium voice waveform visualization.
- Calm and focused study atmosphere.

## Layout strategy

### Portrait
- Single-column lesson flow.
- Large daily lesson card.
- Bottom navigation.
- Full-screen recorder.
- Swipe-based lesson steps.

### Landscape
- Split-screen layout.
- Left pane: lesson steps and prompt.
- Right pane: recorder, transcript, and feedback.
- Persistent progress indicator.

## Navigation
Primary navigation:
- Today.
- Practice.
- Progress.
- Vocabulary.
- Settings.

Gesture navigation:
- Swipe left: next lesson step.
- Swipe right: previous lesson step.
- Swipe up: detailed feedback.
- Swipe down: close modal or return.
- Long press: save vocabulary or phrase.
- Tap waveform: replay from segment.

## Core screens

### Welcome and setup
- IELTS General Training selected.
- Goal Band 8.
- 15 minutes per day.
- English with Tamil support.
- Balanced examiner plus coach.
- Premium dark mode.

### Diagnostic screen
- Clear instructions.
- Timer.
- Record button.
- Progress through test sections.
- Calm recording interface.

### Today screen
- Current day in 100-day plan.
- Estimated band.
- Today's SMART goal.
- Start button.
- Missed-day recovery card if needed.

### Speaking recorder
- Prompt card.
- Timer.
- Waveform.
- Pause/resume if not in mock mode.
- Save and analyze button.

### Feedback screen
- Overall estimated band.
- Criteria cards.
- Transcript.
- Corrections.
- Tamil explanations.
- Band 8 version.
- Next action.

### Progress screen
- Band trend.
- Criteria trend.
- Weakness list.
- Weekly summary.
- Mock test history.

## Performance requirements
- Smooth screen transitions.
- Avoid heavy startup work.
- Lazy-load old recordings and feedback.
- Compress stored audio when possible.
- Cache lesson data locally.
- Keep memory usage suitable for lower RAM variants.

## Accessibility
- Large touch targets.
- Clear contrast.
- Adjustable text size.
- Captions/transcripts for all recordings.
- No critical information conveyed only through color.
