# Setting Custom Values with YAML Files in Helm

## Overview

Welcome to our exploration of using YAML files for setting custom values in Helm releases! In this lecture, we’ll learn how to manage our WordPress release better by leveraging YAML file configurations, providing a cleaner and more maintainable solution. 👩‍💻

In this exercise, you will implement a system that allows you to set custom values for your WordPress release using a YAML file. Before diving into the step-by-step guide, I encourage you to try and accomplish the following on your own:

1. Install your WordPress release without setting values through the CLI.
2. Create a YAML file to define custom values for WordPress.
3. Securely manage WordPress credentials by using Kubernetes secrets.
4. Increase the replica count for your WordPress deployment.

Give it a shot! Once you've tried it, you can follow the detailed guide below.

## Step-by-Step Guide

Here’s how to set custom values for your WordPress release using a YAML file:

1. **Install WordPress Release**:

   - Check if there are any releases installed with `helm list`.
   - Use the CLI to install your WordPress release using default values.

2. **Create a YAML File**:

   - Create a directory named `setting-values`.
   - Inside this directory, create a file named `custom-values.yaml`.
   - Define your custom values in the YAML file (username, password, and replica count).

3. **Manage Sensitive Values**:

   - Create a Kubernetes secret for your WordPress credentials using `kubectl create secret`.
   - Ensure the secret contains the key `wordpress-password`.

4. **Update Your Deployment**:

   - Use the `helm install` command while passing your YAML file with `--values custom-values.yaml`.
   - Confirm that your deployment created the correct number of pod replicas.

5. **Verify the Installation**:
   - Monitor your pods using `kubectl get pods`.
   - Expose your service and access your WordPress dashboard using your custom credentials.

## Conclusion

In this lecture, we learned how to set custom values for a WordPress release with a YAML file, emphasizing the importance of managing sensitive information securely. By implementing these practices, you enhance the maintainability and security of your Helm charts. Keep experimenting with different configurations and stay curious! 🌟
