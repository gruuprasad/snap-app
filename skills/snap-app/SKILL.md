---
name: snap-app
description: >-
  Use this skill when you need to see the current visual state of the user's application, UI, or browser.
  This allows you to take screenshots autonomously without the user needing to manually switch windows or upload files.
---

# Taking an App Screenshot

When you need to see the visual state of the application to verify UI, layout, design, or check for errors:

1. Run the terminal command: `snap-app` (or `snap-app --app <name>` if targeting a specific browser or app window).
2. The tool autonomously auto-detects the user's app window, focuses it, snaps the screen, and restores focus back to the terminal in ~0.2s without requiring any user intervention or manual window switching.
3. Read the `.png` file path returned on stdout using your file viewing tool.
4. Analyze the image and proceed with your task.

Do not ask the user for permission to take a screenshot if they have asked you to look at the app. Just run `snap-app`.
