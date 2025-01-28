# README for Extracting Test Scripts

## Overview

In this exercise, we're going to focus on enhancing our testing structure by creating a more decoupled approach between our tests and the pods executing them. The goal is to extract the command and arguments into their own script and utilize a config map and volumes to mount this script as a file inside our container.

Before diving into the step-by-step guide, here's a quick summary of what you'll be implementing. I encourage you to try these steps on your own first:

1. Create a new config map file under the test directory.
2. Set up the necessary metadata and annotations for the config map.
3. Load the script data correctly into the config map.
4. Create a `files` directory and a subdirectory for test scripts.
5. Write a `run.sh` script that installs curl and executes a curl command.
6. Ensure that template functions are used correctly to replace variable placeholders in your script.

Give it a shot! Don’t worry if you miss something; we’ll go through it in detail.

## Step-by-Step Guide

1. **Create the Config Map File**:

   - Navigate to your test directory and create a new file named `test-files.yaml`.
   - Define the API version, kind, metadata, and annotations, ensuring you include `Helm.sh/hook: test`.

2. **Load Script Data**:

   - Within the `data` section of your config map file, use the `files.glob` method to specify the pattern for loading your test scripts.

3. **Set Up the Files Directory**:

   - Create a `files` directory at the top level of your chart.
   - Inside it, create a `test-scripts` directory.

4. **Write the run.sh Script**:

   - In the `test-scripts` directory, create a file named `run.sh`.
   - Write the necessary shell commands: first, install curl, and then execute a curl command targeting your test hook.

5. **Ensure Correct Template Usage**:

   - Ensure you utilize Gold template functions and the `TPL` function to dynamically replace placeholders with appropriate context values.

6. **Testing the Configuration**:
   - Run the `helm template` command from your terminal to verify that the contents are correctly processed and variables are replaced.

## Conclusion

You've just learned how to extract commands and arguments from your pod configurations into their own scripts, using config maps and volumes. This decoupled structure is crucial for clean and manageable testing. Keep practicing with these concepts as they will be valuable for your development toolkit! 🌱
