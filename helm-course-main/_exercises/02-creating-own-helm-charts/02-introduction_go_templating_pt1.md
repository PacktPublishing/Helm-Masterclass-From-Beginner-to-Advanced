# Introduction to Go Templating

## Overview

Welcome to our exploration of Go Templating! 🎉 In this lecture, we will lay the groundwork for understanding how to effectively use Go Templating when working with Helm charts. As we go through the process of creating, packaging, and publishing charts, you'll find that Go Templating is an essential tool that you'll frequently use.

Before diving into the step-by-step guide, I encourage you to take a moment to try implementing the solution on your own. Here's what you'll aim to achieve:

1. Create a new directory for your Helm chart.
2. Setup the necessary files: `Chart.yaml`, `values.yaml`, and a `templates` directory.
3. Add basic information to the `Chart.yaml` file.
4. Create a simple template file within the `templates` directory.
5. Add values in the `values.yaml` file and use them in the template.
6. Run the `helm template` command to see the results.

Give it a shot! Once you've given it your best effort, feel free to check out the detailed guide below.

## Step-by-Step Guide

1. **Create a New Directory**: Start by making a new directory called `intro-go-templating`.

   ```bash
   mkdir intro-go-templating
   cd intro-go-templating
   ```

2. **Set Up Necessary Files**: Create `Chart.yaml`, `values.yaml`, and a `templates` directory.

   ```bash
   touch Chart.yaml values.yaml
   mkdir templates
   ```

3. **Edit `Chart.yaml`**: Open the `Chart.yaml` file and add the following details:

   ```yaml
   apiVersion: v2
   name: intro-go-templating
   version: 0.1.0
   appVersion: 0.1.0
   ```

4. **Create a Template File**: Within the `templates` directory, create a file named `sandbox.yaml` and add the following line:

   ```yaml
   test: true
   ```

5. **Run Helm Template Command**: Execute the command:

   ```bash
   helm template .
   ```

6. **Add Values to `values.yaml`**: Open the `values.yaml` file and add:

   ```yaml
   test:
     description: 'I am a string'
   ```

7. **Update `sandbox.yaml`**: In `sandbox.yaml`, use the value from `values.yaml`:

   ```yaml
   test: {{ .Values.test.description }}
   ```

8. **Test the Output**: Again run `helm template .` to see how the output looks.

9. **Use Comments**: Experiment with comments—try using both YAML comments and Go comments. Check what remains in the generated file.

10. **Trim Whitespace**: Test the whitespace trimming feature by modifying lines and using the leading dash with the template syntax.

By this point, you should have a clear understanding of how to use Go Templating with Helm.

## Conclusion

In this lecture, we explored the fundamentals of Go Templating, from setting up a simple Helm chart to using various features of the templating language. Remember, mastering these concepts will enhance your ability to manage and configure Helm charts efficiently. Keep practicing, and don't hesitate to revisit this material as you continue your learning journey! 🌟
