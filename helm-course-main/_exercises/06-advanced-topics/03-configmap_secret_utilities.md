# Managing Config Maps and Secrets in Helm

## Overview

In this exercise, you will learn to implement utility functions that allow you to load multiple files as a config map or secret without individually iterating through them. Your goal is to utilize the `dot as config` method along with `files.glob` function effectively. Before diving into the step-by-step guide, give it a shot on your own! Here are the main steps you should try to implement:

1. Utilize the `files.glob` function to gather your files.
2. Wrap your gathered files with parentheses and apply the `dot as config` method.
3. Test your code using the `helm template` command and observe the results.
4. Replicate the process for creating a secret using the `dot as secrets` method.
5. Remember to note the best practices regarding sensitive data management.

Now, let's see how you can achieve this together! 💻

## Step-by-Step Guide

1. Start by using the `files.glob` function to load your files.
2. Remove any unnecessary parts of your initial code for clarity.
3. Wrap your code that utilizes `files.glob` in parentheses.
4. Apply the `dot as config` method to this wrapped code.
5. Indent your resulting output accordingly for readability.
6. Save your changes and execute the `helm template` command in your terminal. You'll see that it's generated everything as a config map in a single line of code!
7. To create a secret, create a `secret.yaml` file and replicate the previous steps but leverage `dot as secrets`.
8. Run `helm template` again to ensure both the config map and the base64 encoded secrets are generated.

## Conclusion

In this lecture, we've explored how to streamline the process of creating config maps and secrets using utility functions in Helm. Just remember to practice caution with sensitive data packaging! Keep experimenting and practicing what you've learned. You're making great strides in your understanding of Helm! 🚀
