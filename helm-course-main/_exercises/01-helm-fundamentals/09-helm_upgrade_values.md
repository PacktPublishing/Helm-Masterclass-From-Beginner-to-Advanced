# Upgrading Helm Releases: A Practical Guide

## Overview

In this exercise, we will focus on upgrading Helm releases effectively. Remember, as our applications evolve, we often need to modify or update our configurations without the hassle of uninstalling and reinstalling Helm releases. Instead, we can make use of the `helm upgrade` command to get the job done smoothly! 🚀

Before diving into the step-by-step guide, here’s a quick summary of the main steps you should try to implement on your own:

1. Enable auto-scaling in your `values.yaml` configuration.
2. Set the minimum and maximum replicas for the auto-scaling feature.
3. Run the `helm upgrade` command with necessary parameters and flags.
4. Verify the upgrade and check the changes made to your application.

Give it a shot and see if you can implement these steps before consulting the guide below!

## Step-by-Step Guide

1. Make sure that your Kubernetes cluster has the metrics server enabled. If you are using Minikube, run `minikube addons enable metrics-server`.

2. **Modify Your `values.yaml`:**  
   Open your `custom-values.yaml` file and enable auto-scaling. Additionally, set the minimum replicas to 2 and the maximum replicas to 10.

3. **Run the Upgrade Command:**  
   In your terminal, execute the following command:

   ```bash
   helm upgrade local-wordpress bitnami/wordpress --reuse-values --values custom-values.yaml --version 23.1.20
   ```

4. **Observe the Upgrade Process:**  
   Watch the terminal output to confirm that the upgrade was successful. You should see your pods being terminated and recreated reflecting the new configuration.

5. **Validate Configurations:**  
   To validate the configurations, run:

   ```bash
   kubectl get pods
   ```

   This ensures that the expected number of replicas are running, confirming that auto-scaling is functioning as intended.

6. **Check History and Secrets:**  
   To see the upgrade history, you can run:
   ```bash
   helm history local-wordpress
   ```
   Also, check for your new secrets with:
   ```bash
   kubectl get secrets
   ```

## Conclusion

In this guide, we tackled how to upgrade Helm releases smoothly using the `helm upgrade` command, without any unnecessary reinstalls. We also learned the significance of managing configurations effectively to get the desired outcomes. Keep practicing these steps and experimenting with different configurations! 🛠️ The more you explore, the more comfortable you'll become with Helm.
