# Helm Upgrade: Installing a New Version of Chart

## Overview

Welcome! In this guide, we'll explore how to use the Helm Upgrade command to install a more recent version of a chart—specifically, the Bitnami WordPress chart. Before diving into the step-by-step process, I encourage you to first try implementing the solution on your own. Here’s a brief overview of the steps you’ll want to follow:

To successfully upgrade the chart version, here's what you should do:

1. Update your local Helm repositories with the command `helm repo update`.
2. Search for the latest version of the Bitnami WordPress chart.
3. Use the Helm Upgrade command to set the new version.
4. Confirm that your pods are running correctly after the upgrade.
5. Check the release history to view changes.

Take a moment to try these steps on your own! Once you’ve given it a shot, you can follow the detailed guide below for assistance. Let’s get started! 🚀

## Step-by-Step Guide

1. **Update Repositories**: Run `helm repo update` to refresh your local repository list.
2. **Search for Chart Versions**: Execute `helm search repo bitnami/wordpress --versions` to list all available versions of the Bitnami WordPress chart.

3. **Select the New Version**: Identify the most recent version from the list (e.g., `23.1.28`).

4. **Run the Upgrade Command**: Use the Helm Upgrade command like so:

   ```
   helm upgrade [RELEASE_NAME] bitnami/wordpress --version 23.1.28
   ```

   Replace `[RELEASE_NAME]` with the name of your release.

5. **Check Pod Status**: After the upgrade, ensure your pods are still running smoothly by using `kubectl get pods`.

6. **View Release History**: Finally, check the release history with:
   ```
   helm history [RELEASE_NAME]
   ```

## Conclusion

We’ve learned how to use the Helm Upgrade command to update the version of our Bitnami WordPress chart seamlessly. Remember, understanding semantic versioning is crucial—patch updates should be non-breaking, while major version changes could require further consideration. Keep practicing these techniques, and don't hesitate to reach out if you have any questions. Happy learning! 🎓
