# Exploring Default Configurations in WordPress on Kubernetes

## Overview

Welcome! In this guide, we’re diving into the default configurations you encounter when deploying a WordPress website using Helm in a Kubernetes cluster. Before you peek at the step-by-step instructions, I challenge you to try implementing the solution yourself! Here's a high-level overview of what you’ll be working on:

In this exercise, you will:

1. Access the WordPress admin panel.
2. Retrieve default credentials for your WordPress installation from the created Kubernetes secrets.
3. Log in to the WordPress admin panel using the retrieved credentials.

I encourage you to give these steps a shot before moving on to the detailed guide below! 😊

## Step-by-Step Guide

Here's a concise roadmap to help you get through the exercise:

1. **Access the Admin Panel**: Go to the URL `/wp-admin` of your WordPress installation.
2. **Find Default Credentials**:
   - Go to the WordPress chart documentation on ArtifactHub.
   - Look for the `WordPress configuration parameters`.
   - Note that the username defaults to `user`.
3. **Retrieve the Password**:
   - Inspect the created Kubernetes secrets with `kubectl get secret`, and identify the one that was created by Helm when installing WordPress.
   - Open a terminal and use the command:
     ```bash
     kubectl get secret <your-secret-name> -o jsonpath="{.data.wordpress-password}" | base64 --decode
     ```
   - Ensure that you don't copy any extra characters, like the percentage sign.
4. **Log In**: Return to the admin panel and enter your username and the decoded password to access your dashboard.

## Conclusion

In this session, we explored how to access the WordPress admin panel and retrieve the default configurations set up within the Kubernetes cluster. This knowledge is essential as you continue to learn about managing applications with Kubernetes. Keep practicing these steps to solidify your understanding!
