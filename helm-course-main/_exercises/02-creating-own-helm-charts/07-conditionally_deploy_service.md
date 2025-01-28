# Conditional Service Deployment Guide

## Overview

In this exercise, we're going to explore how to give users the option to conditionally deploy a service in our NGNX deployment. Currently, a service is always deployed, but we want to allow users to choose whether or not to enable the service. Your mission is to implement this functionality!

Here’s a quick summary of the main steps you should aim to complete:

1. Extend the `service` section of the `values.yaml` file to add a new parameter called `enabled`.
2. Set the default value of `enabled` to `true`.
3. Wrap the service block in an `if` condition that checks the status of the `enabled` parameter.
4. Test the implementation by setting `enabled` to `false` and ensuring the service isn't deployed.
5. Revert `enabled` back to `true` to see the service deployed again.

Take a shot at implementing the solution on your own before checking out the step-by-step guide!

## Step-by-Step Guide

1. **Extend the `values.yaml` File**  
   Open your `values.yaml` file and add a new parameter called `enabled` with a default value of `true`:

   ```yaml
   service:
     enabled: true
   ```

2. **Wrap the Service Block**  
   Next, locate the service block in your Helm template files. Wrap this block in an `if` condition to check for the value of `.Values.service.enabled`:

   ```yaml
   {{- if .Values.service.enabled }}
   apiVersion: v1
   kind: Service
   metadata:
     name: your-service-name
   spec:
     # Service specifications go here
   {{- end }}
   ```

3. **Test the Implementation**  
   Open your terminal and run the Helm template command to ensure the service is included. Use the command:

   ```
   helm template <path to chart>
   ```

   You should see the service included since `enabled` is set to `true`.

4. **Disable the Service**  
   Now, change the `enabled` value to `false` in your `values.yaml` and run the Helm template command again. This time, the service should not be included in the output.

5. **Final Verification**  
   Go ahead and uninstall any previous releases to ensure you have a clean slate:
   ```
   helm uninstall your-release-name
   ```
   After that, reinstall your chart to confirm that everything works as expected:
   ```
   helm install your-release-name .
   ```

## Conclusion

Great job! 💪 We've learned how to conditionally render Kubernetes services based on user-defined values in Helm charts. This gives users flexibility and control over their deployments. Remember, you can use this pattern for other Kubernetes objects, allowing for even more dynamic configurations. Keep practicing, and don't hesitate to explore further!
