# APK Download and Install Guide for Redmi Pad 2

This guide is for a learner who does not know coding and does not have a PC.

## What the agent will do
The agent will build the app through GitHub Actions. You do not need to install Flutter, Android Studio, Java, Gradle, or any developer tool.

## How to download the APK
1. Open the GitHub repository on your Redmi Pad 2 browser.
2. Open the **Actions** tab.
3. Open the latest successful **Build Android APK** workflow run.
4. Scroll to **Artifacts**.
5. Download `meridian-ielts-coach-debug-apk`.
6. If it downloads as a zip file, extract it using the Files app.
7. Find `app-debug.apk`.

## How to install the APK
1. Tap `app-debug.apk`.
2. If Android says installation from this source is blocked, tap **Settings**.
3. Allow installs from your browser or file manager.
4. Go back and tap `app-debug.apk` again.
5. Tap **Install**.
6. Open **Meridian IELTS Coach**.

## What to test in the first APK
For the first scaffold APK, only test the app shell:

- The app opens.
- The dark premium design is readable.
- The Today, Practice, Progress, Vocabulary, and Settings tabs work.
- The text is comfortable on Redmi Pad 2.
- Nothing looks broken in portrait mode.
- If possible, rotate to landscape and check that the layout still feels like a tablet app.

## How to report feedback
You can simply say:

```text
Screen: Today
What I tapped: Practice tab
Expected: Practice page should open
Actual: It opened but text was too small
Feeling: Looks smooth, but the card spacing is too much
```

No coding language is needed.
