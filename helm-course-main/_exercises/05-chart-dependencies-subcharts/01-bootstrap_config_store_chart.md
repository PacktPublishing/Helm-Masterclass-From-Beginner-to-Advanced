# Bootstrapping Config Store Chart

Welcome! In this guide, we're diving into the process of bootstrapping the Config Store chart. This exercise will help you set up the project structure and understand how to manage your configuration store application effectively. Before we jump into the step-by-step instructions, let’s break down the main tasks you’ll need to tackle. 🛠️

## Overview

The goal of this exercise is to bootstrap the Config Store chart and configure the essential components required to run our application smoothly. Here's what you should aim to implement:

1. Familiarize yourself with the overall project structure and its dependencies.
2. Create a new directory for subcharts and use the `helm create` command to generate the Config Store chart.
3. Adjust your `values.yaml` to configure resources, security contexts, and image settings.
4. Run the `helm lint` command to verify the chart and ensure all configurations are set correctly.
5. Install the chart using `helm install`, and watch for any errors related to database connectivity.

Try to implement the solution on your own before diving into the detailed steps below!

## Step-by-Step Guide

1. **Understand Project Structure**:

   - Review the `package.json` file for dependencies and development commands.
   - Explore the `Dockerfile` for instructions and the index.js file to understand the application setup.

2. **Create Subcharts Directory**:

   - Create a new directory named `subcharts`.
   - Navigate into this directory and run `helm create config-store`.

3. **Configure values.yaml**:

   - Check the ingress settings and adjust accordingly (turn off if not needed).
   - Uncomment resource specifications in `deployment.yaml` and set limits (e.g., CPU and memory).
   - Enable security contexts and adjust any required image repository configurations.

4. **Lint and Validate the Chart**:

   - Inside the `config-store` folder, run `helm lint` to ensure everything is correctly configured.
   - Generate the templates using `helm template config-store` to preview the resources being created.

5. **Install the Chart**:

   - Run the command: `helm install config-store ./config-store`.
   - Monitor the status of your pods using `kubectl get pod` to identify any issues.

6. **Handling Database Connection**:
   - If there are errors related to the database URL, note that you will eventually need to manage dependencies and include a PostgreSQL chart.

## Conclusion

Great job on exploring and bootstrapping the Config Store chart! Remember, this process helps you gain a solid understanding of how to set up and work with Helm charts. Keep practicing these concepts to deepen your knowledge and confidence in managing configurations effectively.

Now, let's keep learning and experimenting with what you've implemented! 🚀
