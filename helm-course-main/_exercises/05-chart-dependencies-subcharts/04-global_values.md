# Using Global Values in Helm Charts

## Overview

Welcome back! In this lecture, we explored how to set values in our Helm charts that can be accessed throughout all subcharts from the parent chart using the global keyword. Understanding this can help streamline your chart configurations and keep your values organized. Here’s a quick summary of the steps you should aim to implement:

1. Identify the global variable you want to use and its path in the values file.
2. Modify the parent chart’s `values.yaml` file to include your global setting.
3. Access the global value in a subchart template using the appropriate syntax.
4. Test and verify that the global value is applied correctly in the rendered templates.

Before jumping to the step-by-step guide, take a moment to try implementing these steps on your own. It’s a great way to reinforce your learning! 😊

## Step-by-Step Guide

Here’s a concise guide to help you use global values effectively in your Helm charts:

1. **Open Your Parent Chart:** Start by opening your parent chart’s `values.yaml` file in your IDE.
2. **Add Global Values:**

   - Instead of setting subchart-specific values at the top level, set values under the `global` key. For example:
     ```yaml
     global:
       defaultStorageClass: my-custom-storage-class
     ```

3. **Access Global Values in Subcharts:**

   - In the template files of your subchart, access the global value using:
     ```yaml
     .Values.global.defaultStorageClass
     ```

4. **Run Helm Template Command:**

   - Navigate to your terminal and run the Helm template command to see the rendered output:
     ```bash
     helm template ./path_to_your_chart
     ```

5. **Verify Outputs:**

   - Check that your custom global value appears where expected in the rendered templates.

6. **Iterate if Necessary:**
   - If things aren’t working as planned, revisit your values file and template access paths.

## Conclusion

In this lecture, we learned how to effectively use the global keyword in our Helm charts to manage values across subcharts. By setting global values, we can streamline our configurations and enhance flexibility. Don’t forget to practice this concept further, as it is an essential part of mastering Helm. Keep experimenting and exploring! 🚀
