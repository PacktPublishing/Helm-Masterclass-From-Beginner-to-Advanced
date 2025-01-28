# Integration of PostgreSQL with Helm

Welcome! In this guide, we’ll walk through integrating the PostgreSQL subchart into our existing project while maintaining best practices for handling sensitive information. 🚀 Before diving into the details, I encourage you to try implementing the solution yourself first. It’s a great way to reinforce your learning!

## Overview

In this exercise, we aim to successfully integrate the PostgreSQL subchart into our project and manage its configuration effectively. Here’s a quick summary of the main steps you should follow:

1. Clean up your project by removing the demo subchart and unnecessary files.
2. Customize the PostgreSQL configuration in the `values.yaml` file, especially focusing on authentication credentials.
3. Create a `.env` file to store your secrets and set up a Kubernetes secret.
4. Update your deployment configuration to correctly reference PostgreSQL credentials.
5. Verify that your services can communicate successfully.
6. (Optional) Refactor your code for improved readability.

Give these steps a go before checking the detailed guide below!

## Step-by-Step Guide

Follow these steps to integrate the PostgreSQL subchart into your project:

1. **Clean Up**:

   - Remove the demo subchart from your dependencies and delete its related files.
   - Run the command `helm dependency update` to update the `Chart.lock` file.

2. **Configure PostgreSQL**:

   - Navigate to the PostgreSQL chart documentation on ArtifactHub.
   - In your `values.yaml` file, set the username and database, while securely configuring the password through an existing Kubernetes secret.

3. **Create Secrets**:

   - Add a `.env` file at the root of your repository to store your sensitive information.
   - Use the command `kubectl create secret generic postgres-creds --from-env-file=.env` to create the secret in your Kubernetes cluster.

4. **Update Deployment Configuration**:

   - Update the `deployment.yaml` file to include environment variables for your application that reference the PostgreSQL credentials, ensuring that the password is fetched from the Kubernetes secret.

5. **Build Connection String**:

   - Construct the database URL using the values you've set. Ensure that the service name is predictable and set via the `fullNameOverride` key in the `values.yaml`.

6. **Verify and Test**:

   - Install the Helm chart and confirm that your PostgreSQL service is up and running using `kubectl get pods`.
   - Test your API with tools like Postman to confirm that it's correctly interfacing with the PostgreSQL database.

7. **Clean Up** (optional):
   - Uninstall the release and delete the persistent volume claims and secrets afterward.

## Conclusion

Great job! You’ve successfully integrated the PostgreSQL subchart into your application, ensuring both security and functionality. Remember, these concepts are crucial for managing data securely in a microservices architecture, so continue practicing and exploring more about Helm and Kubernetes!
