# Installing Your First Helm Chart

## Overview

Welcome to our practical guide on installing your first Helm chart! This exercise is a great opportunity to dive into the Helm ecosystem and learn how to deploy applications in a Kubernetes cluster seamlessly. Let’s get started!

In this exercise, we'll be installing a WordPress application using a Helm chart from the Bitnami repository. To give you a head start before we jump into the step-by-step guide, here’s an outline of what you'll be doing:

1. Ensure your Kubernetes cluster is running. Check the status using `kubectl version`.
2. Add the Bitnami repository to your Helm repositories (if not yet done so).
3. Search for the WordPress chart within this repository.
4. Install a specific version of the WordPress chart using the `helm install` command.
5. Verify the installation by checking the pods and services created.
6. Expose the application to access it from your browser.

Remember, try to implement these steps yourself first! This is a fantastic way to strengthen your learning. Once you're ready, check out the detailed guide below! 🚀

## Step-by-Step Guide

1. Ensure your Kubernetes cluster is up and running. You can do this by running:
   ```bash
   kubectl version
   ```
2. If your cluster is running fine, add the Bitnami Helm repository:
   ```bash
   helm repo add bitnami https://charts.bitnami.com/bitnami
   helm repo update
   ```
3. Search for the WordPress chart to find its exact name:

   ```bash
   helm search repo wordpress
   ```

4. Choose the version you want to install (e.g., 23.1.20) and use the `helm install` command:

   ```bash
   helm install local-wp bitnami/wordpress --version 23.1.20
   ```

5. Check the status of the pods to ensure they are running:

   ```bash
   kubectl get pods
   ```

6. To expose the WordPress application, change the service type to `NodePort`:

   ```bash
   kubectl expose deploy local-wp-wordpress --type=NodePort --name=local-wp
   ```

7. Get the service URL to access your application:
   ```bash
   minikube service local-wp --url
   ```
   Copy the provided URL to your browser, and you should see your WordPress site up and running! 🎉

## Conclusion

Congratulations on successfully deploying your first application using Helm! This exercise has hopefully shown you how straightforward it is to manage applications with Helm charts. Keep exploring the various options Helm provides, and you'll find that your skills will increase significantly.

Continuing to practice your Helm commands and experimenting with different configurations will further deepen your understanding. Keep up the great work!
