# Customizing Values in Helm Charts

Welcome to our guide on customizing values in Helm charts! In this exercise, we'll dive into how to make your Kubernetes objects more flexible by adjusting configuration values. The focus here is to give you the skills to enhance your test connection files effectively. Before diving in, take a moment to try this on your own! Below is a brief overview of the steps we'll be implementing:

## Overview

In this exercise, you will learn how to:

1. Modify the `values.yaml` file to allow for customizable test configurations.
2. Adjust the test connection to use the new values from `values.yaml`.
3. Implement conditional rendering based on the enabled status of your tests.
4. Set up a deletion policy for test resources after execution.

Feel free to attempt these steps before checking out the detailed guide! Ready? Let's go for it! 🚀

## Step-by-Step Guide

1. **Open the `values.yaml` File**:

   - Scroll to the bottom and add a new section for your test configurations.

2. **Define Test Values**:

   - Set the `tests.enabled` value to `true`, along with specifying other necessary container configurations like `image repository`, `image tag`, and `volume configuration`.

3. **Update the Test Connection File**:

   - Modify the connection file to leverage values from the `values.yaml` file using a clearer structure.
   - Utilize `with` blocks for better readability and organization.

4. **Implement Conditional Rendering**:

   - Use conditions to control when your test resources are included based on whether `tests.enabled` is set to `true` or `false`.

5. **Add a Deletion Policy for Test Resources**:

   - Implement a strategy that allows for automatic deletion of resources based on the outcome of the tests (successful or failed).

6. **Run and Validate**:
   - Execute `helm template` to verify your configuration.
   - Perform `helm upgrade` and `helm test` commands to ensure your modifications work as intended.

## Conclusion

You've just explored the process of customizing values in your Helm charts, making them more flexible and user-friendly! We covered defining test configurations, updating connection files, and setting deletion policies for test resources. Keep practicing these concepts—it's essential for mastering Kubernetes management. Happy learning! 🎉
