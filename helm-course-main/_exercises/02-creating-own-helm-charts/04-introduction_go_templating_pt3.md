# Introduction to Go Templating

## Overview

Welcome to your guide on using Go templating to implement flow control in Helm templates! In this session, we’ll dive into how you can effectively use conditionals and loops to make your templates more dynamic and flexible.

Before we get into the specifics, let’s give it a shot! Try to implement the following steps in your own time, and only refer to the guide if you get stuck:

1. Set up your `values.yaml` file and configure the environment variable.
2. Write an `if` condition in your template to check if the environment is set to production.
3. Render appropriate labels for both production and development environments using `if`, `else`, and `end`.
4. Clean up any leading whitespace by using the appropriate dashes.

Give it a go! 💪 Once you're done experimenting, check below for a step-by-step guide to ensure you're on the right track.

## Step-by-Step Guide

1. **Create/Modify `values.yaml`:**

   - Define your environment variable (e.g., `environment: production`).

2. **Edit your Template (`sandbox.yaml`):**

   - Start your `if` statement to check the value of `environment`:
     ```yaml
     {{ if eq .Values.environment "production" }}
     ```
   - Add the labels for the production scenario:
     ```yaml
     environment: production
     build: stable
     public ingress: true
     ```
   - Use `else` for the development scenario:
     ```yaml
     {{ else }}
     environment: dev
     build: alpha
     public ingress: false
     {{ end }}
     ```

3. **Render the Template:**

   - Run your helm template command to see the output.
   - Change the environment variable in your `values.yaml` to confirm it renders correctly in both scenarios.

4. **Whitespace Cleanup:**

   - Add dashes before the `else` and `end` statements to remove any unwanted whitespace:
     ```yaml
     {{- else }}
     ---
     {{- end }}
     ```

5. **Finalize and Test:**
   - Save your changes and re-run the helm template in your terminal to see the clean output.

## Conclusion

You’ve just taken your first steps in harnessing the power of Go templating! 🎉 By implementing conditionals in your Helm templates, you learn how to customize outputs based on specific conditions effectively. Remember, this is just the beginning; keep playing around with the syntax and try new configurations. We'll deepen this exploration of Go templates later on, so stay curious and keep practicing!
