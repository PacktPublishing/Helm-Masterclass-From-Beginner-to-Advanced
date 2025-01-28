# Exploring Variables in Helm Templates

## Overview

Welcome to this Helm templates lecture! Here, we'll dive into the world of variables and discover how they enhance our code's readability and maintainability. 🚀 Before you jump into the step-by-step instructions, I encourage you to give the implementation a shot on your own! Trying it out first will help reinforce what you learn.

In this exercise, we will implement a Helm template that allows users to set a custom name for their resources while also providing a default naming mechanism using variables. Here’s a quick summary of what you should aim to do:

1. Create a variable for the full name using Helm's templating syntax.
2. Add logic to check if a custom name is provided by the user.
3. Use the `default` function to streamline the naming process.
4. Test your implementation to ensure everything works smoothly.

Take a moment to try this out before checking the detailed guide below!

## Step-by-Step Guide

1. **Open your `_helpers.tpl` file** in the `templating-deep-dive` folder.
2. **Define a variable** at the beginning of your file using the syntax:
   ```go
   {{ $fullName := .Values.customName | default (printf "%s-%s" .Release.Name .Chart.Name) }}
   ```
   This sets `$fullName` to the custom name if provided or defaults to a combination of the release and chart names if not.
3. **Utilize the variable** throughout your templates instead of repeating expressions.
   Replace instances where you previously hardcoded the name with `$fullName`.
4. **Implement a conditional check** to adjust the variable based on the custom name:
   ```go
   {{ if .Values.customName }}
   {{ $fullName = .Values.customName }}
   {{ end }}
   ```
5. **Run your Helm templates** in the terminal:
   ```bash
   helm template <path to chart>
   ```
   Check if the output contains your custom name or defaults correctly based on your settings in `values.yaml`.
6. **Review your code** for cleanliness or redundant logic and adjust accordingly.

## Conclusion

In this lecture, we explored how to use variables in Helm templates to create cleaner code and avoid repetition. Utilizing variables not only enhances code readability but also simplifies future changes if adjustments are necessary. Keep practicing and experimenting with Helm's powerful templating capabilities, and don't hesitate to explore more about iterating over lists and dictionaries with variables. Happy coding! 🌟
