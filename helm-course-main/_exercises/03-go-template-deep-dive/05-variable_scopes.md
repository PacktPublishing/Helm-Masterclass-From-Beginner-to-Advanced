# Understanding Variable Scopes in Helm Templates

## Overview

In this exercise, we're going to explore the concept of variable scopes within Helm templates. Variable scopes dictate where a variable can be accessed in your code, similar to internal variables in programming functions. Your goal is to gain a solid understanding of how to properly declare and use variables in templates to prevent any scope-related errors.

To get started, here’s a quick overview of the steps you should try to implement on your own:

1. Create a variable in your Helm template.
2. Attempt to access the variable from outside its declaration block and observe the error it generates.
3. Use an `if-else` statement to declare a variable and see how its scope works.
4. Modify the declaration to be available outside the `if` block and see it in action.
5. Run the `helm template` command to verify that there are no undefined variable errors.

Give it a go, and once you’ve made your attempts, feel free to check the step-by-step guide for any clarifications! 🚀

## Step-by-Step Guide

Here’s how you can approach the task systematically:

1. **Declare a Variable**: Open your `_helpers.tpl` file and declare a variable using the colon-equal syntax (e.g., `{{ $fullName := .Values.name }}`).

2. **Access the Variable**: In your `deployment.yaml`, try to access the variable declared in `helpers.tpl`. Notice that this will lead to an error since the scope of the variable is limited to its block.

3. **Using If-Else**: Wrap your variable declaration within an `if` condition (e.g., `{{ if .Values.customName }} ... {{ else }} ... {{ end }}`) and assign different values to `$fullName`.

4. **Scope Confirmation**: Ensure that the use of `$fullName` in `_helpers.tpl` falls within the same block of code where it is declared.

5. **Rescope if Necessary**: Instead of using `:=` within the `if`, use `=` to update the variable without redefining it, allowing it to be accessed in nested blocks.

6. **Rerun the Template**: Run `helm template` again to confirm that there are no errors and everything works as intended.

## Conclusion

Understanding variable scopes in Helm templates is crucial to avoid scope-related issues that can lead to errors. Remember that a variable is only accessible within the block it is declared in, unless you've structured it to be available in nested blocks. Keep experimenting with these concepts to strengthen your knowledge, and don’t hesitate to revisit this guide as needed. Happy coding! 😊
