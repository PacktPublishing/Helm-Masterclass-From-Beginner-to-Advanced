# Creating and Implementing Library Charts in Helm

## Overview

In this session, we'll explore the fascinating world of library charts in Helm. Library charts are really handy for providing a reusable set of utilities that can be leveraged by other charts. Before diving into the step-by-step guide, I encourage you to give the implementation a shot on your own! Here’s a quick summary of the main steps you’ll be trying to implement:

1. Create a new directory for your library charts.
2. Set up a new chart within that directory, commonly known as "common".
3. Change the type of your chart from application to library in the `Chart.yaml` file.
4. Create and customize utility functions using templates.
5. Add your library chart as a dependency in the parent chart.
6. Run `helm dependency update` and check if everything works.

Give it a go! Once you’ve given it your best shot, feel free to look at the step-by-step guide below for additional details. 🚀

## Step-by-Step Guide

1. **Create a Library Chart Directory**: Start by creating a new directory named `library-charts` under your code directory.
2. **Create a Common Chart**: Move into the `library-charts` directory and create a new chart by running:

   ```bash
   helm create common
   ```

3. **Modify the Chart Type**: Open the `Chart.yaml` file in the `common` directory and change the type field from `application` to `library`.

4. **Clean Up Unnecessary Files**: Delete all files inside the `templates` folder and the `values.yaml` file, keeping the folder itself intact.

5. **Create Utility Files**: Create a new template file, perhaps named `_naming.tpl`, and move any necessary functions from the parent chart’s helpers into this file.

6. **Update the Parent Chart**: In the parent chart's `Chart.yaml`, specify `common` as a dependency, pointing to the relative path of your library chart.

7. **Run Dependency Update**: Navigate to the parent chart directory in your terminal and execute:

   ```bash
   helm dependency update
   ```

8. **Test for Errors**: Run the `helm template` command to ensure everything is working correctly and troubleshoot any issues related to naming and referencing.

## Conclusion

Today, we delved into how library charts can streamline our Helm charts by providing reusable utilities. Remember that library charts don’t render Kubernetes resources by themselves—they just enhance the functionality of your main charts. Keep experimenting with these concepts to deepen your understanding! You're on the right path to mastering Helm charts. 🌟
