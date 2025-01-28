# Updating the Pod Definition to Leverage Config Maps

Welcome! In this session, we will focus on updating the pod definition file to utilize the new configuration map we've created. This is a crucial step in ensuring that your container can access the necessary files efficiently. Let's dive into this exciting task! 🚀

## Overview

Before we go through the steps together, I encourage you to give it a try on your own! Below is a high-level summary of the main steps you should follow:

1. **Update the container image**: Change from `WGAT` and `BZBOX` to `ALPINE` with version `3.20`.
2. **Set the command**: Adjust the command to run a shell script located at `/test/run.sh`.
3. **Define the volume**: Specify the volume in the pod definition and ensure it references the correct config map.
4. **Specify volume mounts**: Mount this volume to the correct path in the container.
5. **Implement hook weights**: Use hook weights to ensure the config map is created before the pod.
6. **Deploy the updated release**: Upgrade the release to apply your changes.

Give these steps a try before looking at the detailed guide below!

## Step-by-Step Guide

Here's a clear guide to help you implement the solution:

1. **Change the Container Image**: Update your pod definition to replace the container image from `WGAT` and `BZBOX` to `ALPINE:3.20`.
2. **Set the Command**: Modify the command to execute the script located at `/test/run.sh` without any further arguments.
3. **Define the Volume**:
   - Add a section for volumes in your pod definition.
   - Create a volume called `tests`, setting it to reference the config map you previously created.
4. **Specify Volume Mounts**:
   - Specify the volume mounts section in your container definition.
   - Ensure it mounts the `tests` volume to the path `/tests`, allowing your container to access the config map contents.
5. **Implement Hook Weights**:
   - Add hook weights to your definitions: set the config map weight to `0` and the pod weight to `10`, both enclosed in quotes.
6. **Upgrade the Release**:
   - Use the `helm upgrade` command to deploy your changes.
   - Ensure you are inside the correct directory for your chart.

## Conclusion

You've now updated your pod definition to leverage a config map effectively. Remember, this decoupling allows for a more flexible and robust testing structure within your Kubernetes setup. The implementation of hook weights ensures that resources are created in the correct order, minimizing potential deployment issues. Keep experimenting and practicing, as this will deepen your understanding of Kubernetes and Helm! 🌟
