# Implementing Custom Validation Functions in Go Template

## Overview

Welcome to our guide on implementing custom validation functions using Go Template! In this exercise, we’ll build upon our previous discussions and explore how to create named templates for port range validation and service type validation within Helm charts. This is an exciting opportunity to enhance your skills!

In this exercise, your goal is to implement validation functions that ensure specific values meet certain requirements before they are rendered in the template. Here’s a high-level summary of the steps you should consider trying on your own:

1. **Define a new named template** in your `_helpers.tpl` file to create the validation logic.
2. **Cast the provided port** value to an integer to ensure it's in the correct format.
3. **Implement an if-check** to validate that the port is between 1 and 65535.
4. **Include the template** in your corresponding `service.yaml` file and pass the `.port` as context.
5. **Create a service type validation** that checks against allowed service types.
6. **Test your implementation** to confirm that both the port and service type validations work as expected.

Give it a shot! Try to implement the solution on your own before looking at the step-by-step guide. ✨

## Step-by-Step Guide

1. **Define the Port Range Validator**:

   - Open your `helpers.tpl` file and define a new named template called `validators.portRange`.
   - Within this template, expect a port value in the context.
   - Cast the port from string to integer, and implement an if-check to ensure it falls within the allowed range (1 - 65535).

2. **Add the Service Type Validator**:

   - Create another named template named `validators.serviceType`.
   - Check the service type against a predefined list of allowed types (e.g., cluster IP and node port).
   - Use the `has` function to verify if the provided service type is valid.

3. **Include Validators in Service Template**:

   - Navigate to your `service.yaml` and include both validation templates, passing in the port and type values as needed.

4. **Run the Helm Template Command**:

   - Use the `helm template` command to see the output.
   - Test with different port and service type values to ensure that the validations are working as intended.

5. **Adjust and Optimize**:
   - If necessary, modify the placement of the validations in your code for efficiency.
   - Explore the possibility of creating reusable validation functions for other parts of your application.

## Conclusion

We’ve made significant strides in understanding how to implement custom validation functions! By defining these validators, we can ensure that our Helm charts not only meet required validations but also enforce logical conditions effectively. Keep practicing these concepts, and don’t hesitate to experiment with more complex validation scenarios in your projects. Happy coding! 🚀
