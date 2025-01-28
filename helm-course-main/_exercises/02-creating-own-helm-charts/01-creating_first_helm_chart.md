# Creating an Nginx Helm Chart

## Overview

In today's session, we'll be diving into the process of creating our very first Helm chart for deploying Nginx to Kubernetes. 🐳 Before we get into the nitty-gritty, I encourage you to challenge yourself and give it a shot at implementing this on your own! Here’s a quick overview of what we’ll be doing.

So, here’s what you’ll be aiming to accomplish in this exercise:

1. Create a new directory to hold your Helm chart.
2. Create the `Chart.yaml` file containing metadata about your chart.
3. Generate an empty `values.yaml` file to hold configuration values later on.
4. Establish a `templates` directory that will contain the Helm templates for the Kubernetes manifests.
5. Develop `deployment.yaml` and `service.yaml` files for your Nginx deployment.
6. Utilize the Helm template command to generate Kubernetes manifests from your chart.
7. (Optional) Validate your chart using the `helm lint` command.

Take a moment to try implementing these steps on your own before referring to the detailed guide below. Remember, practice makes perfect! 💪

## Step-by-Step Guide

1. **Create a New Directory**: Open your terminal and create a directory named `creating-charts`, then navigate into it.

   ```bash
   mkdir creating-charts
   cd creating-charts
   ```

2. **Create the Nginx Chart Directory**: Inside the main directory, create another directory named `nginx`.

   ```bash
   mkdir nginx
   ```

3. **Create `Chart.yaml`**: Inside the `nginx` directory, create a file called `Chart.yaml` and add the following content:

   ```yaml
   apiVersion: v2
   name: nginx
   description: A Helm chart for deploying Nginx to Kubernetes
   type: application
   version: 0.1.0
   appVersion: 1.27.0
   ```

4. **Generate `values.yaml`**: Create an empty file named `values.yaml` in the `nginx` directory.

   ```bash
   touch values.yaml
   ```

5. **Create the `templates` Directory**: Now create a folder inside `nginx` called `templates` where we will hold our Kubernetes manifest files.

   ```bash
   mkdir templates
   ```

6. **Write `deployment.yaml`**: Inside the `templates` folder, create a `deployment.yaml` file and populate it as follows:

   ```yaml
   apiVersion: apps/v1
   kind: Deployment
   metadata:
     name: nginx
     labels:
       app: nginx
   spec:
     replicas: 1
     selector:
       matchLabels:
         app: nginx
     template:
       metadata:
         labels:
           app: nginx
       spec:
         containers:
           - name: nginx
             image: nginx:1.27.0
             ports:
               - containerPort: 80
   ```

7. **Create `service.yaml`**: Similarly, create a `service.yaml` file in the `templates` folder and add this content:

   ```yaml
   apiVersion: v1
   kind: Service
   metadata:
     name: nginx
     labels:
       app: nginx
   spec:
     type: ClusterIP
     selector:
       app: nginx
     ports:
       - protocol: TCP
         port: 80
         targetPort: 80
   ```

8. **(Optional) Create `.helmignore`**: You may want to create a `.helmignore` file to exclude unnecessary files when packaging your chart.

   ```bash
   touch .helmignore
   ```

   Add to it the following contents:

   ```
   .DS_Store
   .git
   ```

9. **Render the Templates**: After setting everything up, run the Helm template command to confirm it generates the Kubernetes manifests correctly.

   ```bash
   helm template <path to chart>
   ```

   The `<path to chart>` can also be a `.` if you are running the command from within the `nginx` folder.

10. **Lint your Chart**: Use Helm's lint command to check for any errors.

    ```bash
    helm lint <path to chart>
    ```

    The `<path to chart>` can also be a `.` if you are running the command from within the `nginx` folder.

11. **Install the Chart**: Finally, install your chart to make sure everything works smoothly.

    ```bash
    helm install my-nginx <path to chart>
    ```

    The `<path to chart>` can also be a `.` if you are running the command from within the `nginx` folder.

12. **Clean Up**: Once you've validated your Helm chart, uninstall it to clear your environment.

    ```bash
    helm uninstall my-nginx
    ```

## Conclusion

Congratulations on taking this step towards creating your own Helm chart! 🎉 Remember, we started with some essential Kubernetes manifests and set the stage for future enhancements using Go templating. Keep practicing, and don't hesitate to explore more functionalities in your charts as you continue your journey with Helm.
