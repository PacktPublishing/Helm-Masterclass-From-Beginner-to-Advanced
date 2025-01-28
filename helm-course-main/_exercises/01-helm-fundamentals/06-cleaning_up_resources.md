# Exploring Generated Values and Persistent Data in Helm

## Overview

Welcome! In this guide, we'll explore how Helm interacts with persistent data through the installation and uninstallation of WordPress. You'll learn what can happen if persistent volume claims aren't properly managed. Before diving into the step-by-step guide, I encourage you to challenge yourself and try implementing the solution based on the overview provided! 💻

In this exercise, you'll focus on understanding the implications of not deleting persistent volume claims when uninstalling a Helm release. The main steps you should try to implement are:

1. Install the Bitnami WordPress chart.
2. Retrieve the generated secrets for both MariaDB and WordPress.
3. Uninstall the WordPress release using `helm uninstall`.
4. Verify that secrets have been removed while persistent volume claims remain.
5. Attempt to install WordPress again and observe any issues that arise due to configuration mismatches.
6. Manually delete the persistent volume claim for MariaDB data.

Try to implement these steps on your own before proceeding to the detailed guide. Let’s see what you can come up with! 🚀

## Step-by-Step Guide

1. **Install WordPress**:

   - Use the Helm CLI to install the Bitnami WordPress chart.
   - Monitor the status of the pods to ensure they are in a ready state.

2. **Retrieve Secrets**:

   - Use `kubectl get secret` commands to access and note down both the WordPress and MariaDB passwords.

3. **Uninstall WordPress**:

   - Execute the command `helm uninstall local-wordpress` and verify that secrets are removed.

4. **Check Persistent Volume Claims**:

   - Use `kubectl get pvc` to confirm that the persistent volume claims are still present after the uninstallation.

5. **Reinstall WordPress**:

   - Run the Helm install command again and check for errors related to database connection.

6. **Clean Up**:
   - Manually delete the MariaDB persistent volume claim if it remains, ensuring a clean slate for future installations.

## Conclusion

In this exercise, we learned the importance of managing persistent data associated with Helm releases. By not cleaning up persistent volume claims, we can run into issues with lost configuration data, leading to our applications being unable to launch correctly. Keep practicing these concepts to strengthen your understanding of Kubernetes and Helm! Remember, managing stateful applications correctly is crucial in a cloud-native world. Happy learning! 🌟
