# Cluster Cleanup Guide

Welcome to the Cluster Cleanup guide! In this session, we’ll walk through the important steps needed to clean up your cluster after using hooks. Before diving into the details, let’s take a moment to try it out on your own. Here’s what you’ll be trying to achieve:

## Overview

We want to ensure that our cluster is tidy and free from unnecessary jobs or remnants from previous operations. Here’s a quick rundown of the steps you might take to clean up:

1. Uninstall the Helm release and its associated Kubernetes objects.
2. Check if any pods are still running from the jobs that were created by the hooks.
3. Delete leftover jobs manually.
4. Confirm that there are no remaining pods or jobs in the cluster.

Give it a shot! Attempt to implement these steps yourself before checking out the detailed guide below. 😊

## Step-by-Step Guide

1. **Uninstall Helm Release:** Start by uninstalling the Helm release with the command:
   ```
   helm uninstall your-release-name
   ```
2. **Check for Running Pods:** Run the command to see if there are any running pods:
   ```
   kubectl get pods
   ```
3. **Check for Active Jobs:** Next, look for any jobs that may still be active:
   ```
   kubectl get jobs
   ```
4. **Delete Leftover Jobs:** If you find any jobs, delete them using the command:
   ```
   kubectl delete job <job-name>
   ```
   Repeat this for any jobs that are listed.
5. **Confirm Cleanup:** Finally, confirm that there are no pods or jobs left by running the initial commands again:
   ```
   kubectl get pods
   kubectl get jobs
   ```

## Conclusion

In this session, we covered how to clean up your cluster by uninstalling the Helm release and removing any leftover jobs and pods. It’s a straightforward process, but it’s essential to keep your environment clean as you continue with your projects. Keep practicing these commands, and don't hesitate to explore further as you learn. Happy coding! 🚀
