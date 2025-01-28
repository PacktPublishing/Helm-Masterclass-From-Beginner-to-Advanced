# Helm Upgrade: Helpful Flags and Best Practices

## Overview

Welcome back! In this guide, we will explore some important flags you can use with the `helm upgrade` command to ensure a smooth upgrade process in your Kubernetes deployments. Our focus is on preventing issues during upgrades by using specific options that help manage resources effectively. 🚀

Before we dive into the step-by-step guide, let's summarize what you'll be implementing in this exercise. You'll try to successfully upgrade a Helm release while incorporating helpful flags to manage potential failures. Here’s a quick rundown of what you should aim to do:

1. Identify the service type you need to update for your deployment (change from LoadBalancer to NodePort).
2. Modify your custom values YAML file accordingly.
3. Execute the Helm upgrade command with the relevant flags to handle potential errors.
4. Validate the upgrade and check Helm's revision history to ensure everything is functioning correctly.

Take some time to attempt the implementation on your own before checking out the detailed guide below. Ready? Let’s do this! 😉

### Step-by-Step Guide

1. **Delete Existing Service**:
   Begin by removing any existing LoadBalancer type service using `kubectl delete service <your-service-name>`.
2. **Update Service Type**:
   Modify your values file to change the service type to NodePort. You can use [ArtifactHub](https://artifacthub.io) to reference the correct field if needed.

3. **Prepare Helm Upgrade Command**:
   Use the following format for your Helm upgrade command:

   ```bash
   helm upgrade <release-name> <chart-name> --reuse-values --values <custom-values-file.yml> --atomic --cleanup-on-fail --debug --timeout 2m
   ```

4. **Run the Upgrade Command**:
   Execute your Helm upgrade command from the terminal and monitor its output for any messages or errors.

5. **Review the Results**:
   Once the command completes, check the status of your pods and services using:

   ```bash
   kubectl get pods
   kubectl get services
   helm history <release-name>
   ```

6. **Handle Failed Upgrades**:
   If the upgrade fails, take note of Helm's automatic rollback capabilities due to the atomic flag. Review the release history to identify any issues with the attempted upgrade.

7. **Clean Up Resources**:
   Manually check for any leftover replica sets or persistent volume claims and clean them up as necessary.

### Conclusion

In this guide, we learned how to effectively utilize Helm upgrade flags to streamline the deployment process and make it more resilient to failures. By leveraging options like `--atomic` and `--cleanup-on-fail`, you can maintain a clean state in your Kubernetes environment, even when things don't go according to plan. Keep practicing these concepts to enhance your Helm skills!
