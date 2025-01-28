# Rollbacks in Helm

## Overview

In today's exercise, we're diving into the concept of rollbacks in Helm, particularly focusing on how to revert changes made during a Helm upgrade that didn't go as planned 😊. Imagine you've upgraded WordPress and hit a snag — don't worry, we'll learn how to roll back to the last functional version smoothly.

Here’s a quick summary of the main steps to try on your own:

1. Upgrade your Helm release and intentionally set a non-existent image tag.
2. Verify the status of your pods to see any errors.
3. Check the Helm history for the release to confirm the problematic upgrade was recorded.
4. Use the `helm rollback` command to revert to the last successful version.
5. Clean up any leftover resources that were created during the failed upgrade.

Give it a shot before delving into the step-by-step guide below!

## Step-by-Step Guide

1. **Perform Helm Upgrade**: Use `helm upgrade` on your release while setting a non-existent image tag.
   ```bash
   helm upgrade <release-name> <chart> --set image.tag=non-existent
   ```
2. **Check Pods Status**: Run the following command to view the status of your pods and identify any errors.

   ```bash
   kubectl get pods
   ```

3. **View Helm History**: Confirm the history of the release and note the revision numbers.

   ```bash
   helm history <release-name>
   ```

4. **Rollback to Previous Revision**: Use the `helm rollback` command to revert to your last successful state.

   ```bash
   helm rollback <release-name> <revision-number>
   ```

5. **Clean Up**: Check for any remnants such as old replica sets and delete them as necessary.
   ```bash
   kubectl delete replicaset <replicaset-name>
   ```

## Conclusion

Today, we learned the importance of rollbacks in Helm, especially when facing issues after an upgrade. Remember that rolling back does not necessarily clean up all resources created during the upgrade, so checking for and removing those manually is a good practice. Keep experimenting with Helm, and don't hesitate to explore further! You've got this! 🚀
