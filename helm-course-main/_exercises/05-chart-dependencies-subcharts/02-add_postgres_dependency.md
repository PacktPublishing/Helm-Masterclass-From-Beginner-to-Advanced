# Adding PostgreSQL Dependency to Your Config Stored Chart

Welcome! In this guide, we'll walk through the process of adding a PostgreSQL dependency to your config stored chart using Helm. Before diving into the details, let's take a moment to understand what we're going to achieve. 🚀

## Overview

In this exercise, you will implement the addition of a PostgreSQL chart dependency to your existing chart configuration. Here's a high-level summary of the main steps you'll need to follow:

1. Verify that the Bitnami repository is set up in your Helm.
2. Update the repositories to fetch the latest chart information.
3. Search for the PostgreSQL chart in the repository.
4. Open the `chart.yaml` file and add the PostgreSQL dependency details under the dependencies section.
5. Run the command to update the dependencies and verify the installation.
6. Understand the difference between the `helm dependency update` and `helm dependency build` commands.

Now, take a moment to try implementing this on your own before looking at the step-by-step guide below!

## Step-by-Step Guide

Let’s break it down into manageable steps:

1. **Verify and Update Repository**:

   - Run `helm repo list` to check if the Bitnami repository is listed.
   - If it is, proceed to run `helm repo update` to get the latest version of the charts.

2. **Search for PostgreSQL Chart**:

   - Execute `helm search repo postgreSQL` to find the PostgreSQL chart by Bitnami.

3. **Add Dependency in `chart.yaml`**:

   - Open your `chart.yaml` file.
   - Under the `dependencies` section, add the PostgreSQL chart with its name, version (use the chart version you found), and repository URL.

4. **Update Dependencies**:

   - Navigate to your config store directory.
   - Run `helm dependency update` to download and update the dependencies.

5. **Build Command**:

   - If needed, run `helm dependency build` to rebuild the charts based on the chart lock file.

6. **Check Dependencies**:
   - Use `helm dependency list` to see the status of your current chart dependencies.

## Conclusion

In this session, we covered how to add a PostgreSQL dependency to your chart by updating your `chart.yaml` file, running the necessary Helm commands, and understanding dependency management within subcharts. Don't hesitate to dive deeper into the Helm documentation for more intricate details and options as you progress. Keep practicing, and enjoy the learning journey! 🎉
