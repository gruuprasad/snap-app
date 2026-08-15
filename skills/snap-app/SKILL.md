---
name: snap-app
description: >-
  Use this skill when you need to see the current visual state of the user's application, UI, or browser.
  This allows you to take screenshots autonomously without the user needing to manually upload files.
---

# Taking an App Screenshot

When you need to see the visual state of the application to verify UI, layout, design, or check for errors:

1. Run the terminal command: `snap-app` using your `run_command` tool.
2. This script prints a 3-second countdown to stderr, giving the user time to focus their app window. Wait for the command to finish.
3. The command will output the absolute path to the generated `.png` screenshot file on stdout.
4. Use your `view_file` tool to read the `.png` file at that absolute path.
5. Analyze the image and proceed with your task.

Do not ask the user for permission to take a screenshot if they have asked you to look at the app. Just run the tool and tell them you are taking a look.
