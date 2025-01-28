# Mastering If-Else Statements in Helm Templates

## Overview

In this exercise, we'll be revisiting and enhancing our understanding of if-else statements and conditionals within Helm templates and Go templates. Before diving into the step-by-step guide, here's a brief summary of what we'll implement:

1. Copy the service configuration from the `values.yaml` file to a new `service.yaml`.
2. Utilize named templates to populate labels and selectors for the service.
3. Implement if-else statements for conditionally rendering elements based on the service status.
4. Test the implementation by rendering the templates.

Give it a shot to implement these steps independently before we walk through the detailed guide! We believe in your ability to tackle this challenge. 😊

## Step-by-Step Guide

1. **Set up your workspace**: Make sure you have your NGNX chart and the relevant files ready.
2. **Modify the `values.yaml` file**: Copy the service portion from the `intro-go-templating/values.yaml` and paste it into a new `values.yaml` file after the container ports section.
3. **Create the `service.yaml` file**: In this file, paste the contents of your copied service information. Ensure the indentation is correct (4 spaces).
4. **Refactor the naming**: Use named templates to refactor the service’s name for better reusability.
5. **Implement conditionals**: Add if-else statements to conditionally render the container ports based on whether the service is enabled.
6. **Test your changes**: Run the `helm template` command to verify that your service information is rendered correctly based on the conditions set in the previous step.
7. **Explore additional configurations**: Experiment with adding more complex if-else structures, such as changing the replica count based on the environment.

## Conclusion

By completing this exercise, you've reinforced your understanding of if-else statements and their practical applications within Helm templates. Remember, while conditionals are powerful, it's important to use them judiciously to maintain clarity in your templates. Keep practicing and experimenting with these concepts to deepen your knowledge!
