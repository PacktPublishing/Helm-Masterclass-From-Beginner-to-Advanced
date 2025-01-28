# Uninstalling a Helm Chart

## Overview

Welcome to our guide on uninstalling a Helm chart! 🎉 In this exercise, we will walk through the process of removing a specific release from our Kubernetes cluster. Before diving into the step-by-step guide, I encourage you to give it a go on your own. Here’s a high-level overview of what you’ll need to do:

In this exercise, you will learn how to uninstall a Helm release and clean up all associated resources. Here’s a quick summary of the main steps to get you started:

1. List the installed Helm releases using `helm list`.
2. Uninstall the desired release with `helm uninstall <release-name>`.
3. Check for any remaining resources, such as services and pods, and remove those if necessary.
4. Look for any persistent volume claims (PVCs) that need to be deleted.
5. Confirm that all components have been properly removed from your cluster.

Now, take a moment to try these steps on your own before checking the detailed guide below. Ready? Let’s go! 🚀

## Step-by-Step Guide

1. **List Installed Releases**:
   Run the command `helm list` to display all the releases currently installed in your cluster.

2. **Uninstall the Release**:
   Execute `helm uninstall <release-name>` by replacing `<release-name>` with the name of the release you want to remove (e.g., `wordpress`).

3. **Check for Remaining Resources**:
   Use commands like `kubectl get pods` and `kubectl get services` to verify that the associated pods and services have been removed.

4. **Delete Remaining Services Manually** (if necessary):
   If you find services that were created outside of Helm (like `local-wordpress`), delete them manually using `kubectl delete service <service-name>`.

5. **Handle Persistent Volume Claims**:
   List the persistent volume claims with `kubectl get pvc`. If there are any related to the uninstalled release, delete them using `kubectl delete pvc <pvc-name>`.

6. **Confirm Deletion of Resources**:
   After deleting the PVC, check again with `kubectl get pvc` and `kubectl get pv` to ensure no resources remain.

## Conclusion

Great job! By following the steps above, you’ve successfully learned how to uninstall a Helm chart and clean up its resources from your Kubernetes cluster. Remember, it’s important to check for lingering resources, particularly persistent volumes, to maintain a tidy environment. Keep practicing, and you’ll become proficient in managing Helm releases and your cluster in no time!
