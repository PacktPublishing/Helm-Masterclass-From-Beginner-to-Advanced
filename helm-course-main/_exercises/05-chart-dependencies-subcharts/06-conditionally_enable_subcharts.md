# Conditionally Enable Subcharts in Helm

Welcome! In this guide, we’ll explore how to conditionally include subcharts in your Helm configuration, specifically focusing on managing dependencies like databases. This is an essential skill for optimizing your deployments and allowing for more flexible configurations. Before diving into the steps, let’s see if you can try this out on your own first! 💡

## Overview

In this exercise, you'll learn how to conditionally enable or disable subcharts based on varying conditions. Here’s a quick summary of what you need to do:

1. **Understand the concept of the `condition` key.** Learn how to add a condition to your subcharts in the `Chart.yaml` file.
2. **Modify the `values.yaml` file** to toggle subcharts' enabling or disabling through Boolean flags.
3. **Explore the use of tags** to group dependencies, enabling or disabling them collectively.
4. **Test your configurations** by rendering Kubernetes manifests to confirm the changes.

Feel free to give it a go on your own before checking out the detailed guide below!

## Step-by-Step Guide

1. **Set up your `Chart.yaml`:** In your main chart's `Chart.yaml`, include the subcharts (e.g., PostgreSQL, demo) under the dependencies section.

2. **Add the `condition` key:**

   - In the `Chart.yaml`, for the PostgreSQL dependency, specify a condition in the format:
     ```yaml
     condition: postgresql.enabled
     ```

3. **Update the `values.yaml`:**

   - Locate the section for subcharts and add the following to the `values.yaml`:
     ```yaml
     postgresql:
       enabled: false # Change this to true to enable the chart
     ```

4. **Run the Helm template command:** Use the terminal to execute:

   ```bash
   helm template <chart-name>
   ```

   This will show the generated manifests based on your current configuration.

5. **Utilize tags for multiple subcharts:**

   - Define tags for your subcharts in the `Chart.yaml`. For example:
     ```yaml
     tags:
       - database
     ```
   - In the `values.yaml`, use:
     ```yaml
     tags:
       database: true # Set to false to disable all tagged charts
     ```

6. **Test your configurations:** After modifying the flags or tags, run the Helm template command again to ensure only the desired resources are included.

## Conclusion

By mastering the inclusion and exclusion of subcharts, especially with options like the `condition` key and tags, you enhance the flexibility and efficiency of your Helm deployments. Remember that conditionally including dependencies is vital for optional components to ensure your application runs smoothly without unnecessary overhead. Keep practicing these techniques to solidify your understanding! 🚀
