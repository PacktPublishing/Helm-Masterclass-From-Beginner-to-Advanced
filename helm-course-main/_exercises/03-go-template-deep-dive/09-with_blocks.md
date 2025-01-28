# Understanding With Blocks in Helm Templates

## Overview

Welcome! In this guide, we’re going to explore how to utilize `with` blocks to manage security contexts in Helm templates, along with some practical insights to enhance your implementation skills. 💻

In this exercise, our main goal is to implement security context options for a container in your Helm templates while using `with` blocks for clarity and efficiency. Before diving into the step-by-step instructions, here’s a quick summary of the main steps you should consider:

1. Define security context options (like `runAsUser` and `fsGroup`) in your `values.yaml` file.
2. Use a conditional statement to include or exclude the security context based on an `enabled` flag.
3. Implement a with block to simplify access to nested values and avoid repetitive code.
4. Consider how to manage scopes for variables defined within blocks.

Now’s your chance to try it out on your own! See if you can implement this before proceeding with the detailed guide below.

## Step-by-Step Guide

1. **Set up values.yaml**: Define your security context options:

   ```yaml
   securityContext:
     enabled: true
     runAsUser: 1000
     fsGroup: 2000
   ```

2. **Modify your template**: Add a deployment template that conditionally includes the security context:

   ```yaml
   {{- if .Values.securityContext.enabled }}
   securityContext:
     runAsUser: {{ .Values.securityContext.runAsUser }}
     fsGroup: {{ .Values.securityContext.fsGroup }}
   {{- end }}
   ```

3. **Use with block**: Enhance readability by using a with block to group security context values:

   ```yaml
   {{- with .Values.securityContext }}
     {{- if .enabled }}
     securityContext:
       runAsUser: {{ .runAsUser }}
       fsGroup: {{ .fsGroup }}
     {{- end }}
   {{- end }}
   ```

4. **Test your configuration**: Use `helm template` to render and check if everything is working as expected. Adjust your values in `values.yaml` and verify the changes.

5. **Manage variable scopes**: Remember that variables defined inside blocks aren’t accessible outside those blocks; plan your scope accordingly.

## Conclusion

We’ve covered a lot in this session, from defining security context options to effectively managing variable scopes and simplifying your Helm templates using with blocks. Keep practicing these techniques, and don't hesitate to dig deeper into other Helm features as you go! Happy templating! 🎉

## Lecture Description
