# Including Named Templates in Subcharts

## Overview

In this exercise, we're diving into the concept of including named templates from subcharts in our parent charts. Our goal is to understand how values defined in subcharts can be accessed and utilized in the parent chart. Before jumping to the step-by-step guide, take a moment to challenge yourself with these main steps:

1. Define a value in your `helpers.tpl` file in the subchart.
2. Create a file in your parent chart to include the defined value.
3. Pass the current context when including the subchart value.
4. Test the output using the Helm template command.
5. Understand how name overrides affect both the parent and subchart contexts.

Give it a try! Implement the solution on your own before checking out the detailed guide below. 🚀

## Step-by-Step Guide

Here’s a straightforward guide to help you through the process:

1. **Define the Value in the Subchart**: In your `helpers.tpl`, define a value like `demo subchart.fullname` to hold a name you want to reference in your parent chart.
2. **Create a YAML File in the Parent Chart**: Navigate to your parent chart's config store and create a file named `from-subchart.yaml`. Add a simple comment in this file.
3. **Include the Subchart Value**: Copy the value definition from your `helpers.tpl` and paste it into your `from-subchart.yaml`, ensuring you pass the current context (using `.`).
4. **Test with Helm**: Use the terminal to run the Helm template command and verify the output, searching for your newly created definition.
5. **Experiment with Name Overrides**: Adjust the `nameOverride` value in both the parent and subchart `values.yaml` to see how context affects the template evaluation.

## Conclusion

By understanding how to include named templates from subcharts, you've learned a vital pattern that allows you to share values between your charts effectively. Just remember, while sharing information can be useful, it's crucial to maintain a balance to avoid tight coupling. Keep practicing, and continue exploring other aspects of Helm to expand your expertise!
