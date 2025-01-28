# Installing NGINX from a Helm Repository

## Overview

Welcome to another session! In this guide, we'll explore how to install NGINX from our own Helm repository. It’s a great opportunity for you to apply what you’ve learned so far and take a step further in your Kubernetes journey! 🛠️

Before diving into the step-by-step guide, here's a high-level overview of what you will be doing:

1. Copy the link to your Helm repository.
2. Use the Helm CLI to add your repository.
3. List your repositories to confirm the addition.
4. Search for the NGINX chart in your Helm repository.
5. Install the NGINX chart using the Helm install command.
6. Verify the installation by checking your pods.

I encourage you to try implementing the above steps on your own before looking at the detailed guide. Give it a shot!

## Step-by-Step Guide

Here’s a concise guide to help you install NGINX from your Helm repository:

1. **Copy Your Helm Repository Link**:

   - Make sure to copy the entire link without the `index.yaml`.

2. **Add the Repository with Helm**:

   - Open your terminal and run the following command:
     ```bash
     helm repo add <repo name> <repo url>
     ```
   - You can replace `<repo name>` with any name you prefer, such as your GitHub username.

3. **Confirm the Repository Addition**:

   - Check if the repository was added successfully by running:
     ```bash
     helm repo list
     ```

4. **Search for the NGINX Chart**:

   - Look for the NGINX chart by executing:
     ```bash
     helm search repo nginx
     ```

5. **Install NGINX Using Helm**:

   - To install the chart, use the following command:
     ```bash
     helm install super-nginx <repo name>/<chart name>
     ```

6. **Verify the Installation**:
   - Finally, check if your pods are running:
     ```bash
     kubectl get pods
     ```

Congratulations on following these steps! 🎉

## Conclusion

You've successfully learned how to install NGINX from your own Helm repository! This process is a fundamental skill in managing applications with Kubernetes, and you've taken a significant step forward. Keep practicing and exploring other features of Helm, such as chart templates and dependencies. There’s always more to learn, and I’m excited to see what you'll accomplish next!
