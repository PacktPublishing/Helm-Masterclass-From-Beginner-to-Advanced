# Setting Values via CLI in Helm

## Overview

Welcome to the guide on how to set custom values for your WordPress deployment using Helm! In this exercise, we're going to dive into how to override the default values provided in the WordPress Helm chart by providing our own values through the CLI. This is an important skill that will help ensure your applications run smoothly and securely.

In this exercise, we'll be focusing on the following main steps to implement custom configuration values for your WordPress deployment using Helm:

1. **Explore the Default Values**: Review the default configuration values in the WordPress chart documentation.
2. **Identify Key Parameters**: Identify the specific parameters you want to set (like root and user passwords for MariaDB).
3. **Use CLI to Set Values**: Execute the Helm install command using the `--set` flag to specify your own values for the identified parameters.
4. **Verify Deployment**: Check the deployment status and logs to ensure everything is running correctly.
5. **Inspect Secrets**: Verify that the passwords set in your command are correctly reflected in the Kubernetes secrets.

Now, why not give it a shot and see if you can implement this on your own before checking out the detailed steps below? 🛠️

## Step-by-Step Guide

Here’s a clear step-by-step guide to help you through the process:

1. **Open the Helm Chart Documentation**: Start by navigating to the WordPress Helm chart documentation page.
2. **Locate Default Values**: Scroll down to find the default values and identify parameters you'll need to override (such as `mariadb.rootPassword` and `mariadb.userPassword`).
3. **Prepare Your Terminal**:
   - Open your terminal and prepare to run the Helm install command.
4. **Construct Your Helm Install Command**:
   - Begin with the base command: `helm install local-wordpress`.
   - Add the `--set` flags for the parameter paths and your custom values:
     - `--set mariadb.rootPassword=myAwesomePassword`
     - `--set mariadb.userPassword=myUserPassword`
5. **Run the Command**: Execute the constructed command to start the installation.
6. **Monitor the Deployment**: Check the status of your pods and logs using `kubectl` to ensure they are up and running correctly.
7. **Verify Secrets**: Use `kubectl get secret` to confirm that your passwords were set as expected.

Congratulations on getting through your first custom configuration! Remember, this process will help you avoid issues that arise from randomly generated values being used repeatedly. 🎉

## Conclusion

In this lecture, we learned how to override default configuration values in the WordPress Helm chart using the CLI. By setting specific parameters like the root and user passwords for MariaDB, we can maintain consistency and ensure smoother deployments. As you continue learning, keep practicing this skill to deepen your understanding of Helm and its value in managing Kubernetes applications.
