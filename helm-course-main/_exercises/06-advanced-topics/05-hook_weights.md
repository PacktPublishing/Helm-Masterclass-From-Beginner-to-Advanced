# Helm Review: Implementing Hook Weights

Welcome to this essential guide on implementing hook weights in Helm! 🎉 Here, we'll focus on using weights to execute hooks sequentially, along with understanding the implications of delete policies for multiple hooks.

## Overview

Before diving into the step-by-step guide, let’s summarize what we’re trying to achieve. In this exercise, you will learn how to:

1. Create multiple hooks with different weights.
2. Set up a before hook creation delete policy.
3. Observe the execution order of hooks.
4. Explore how to manage and delete jobs associated with hooks.

We encourage you to try implementing this solution yourself before checking the detailed steps below. Get your hands dirty and see what you can achieve! 💪

## Step-by-Step Guide

Here’s a concise guide to follow as you implement the solution:

1. **Create a new YAML file for your second hook** (e.g., `second_hook.yaml`).
2. **Set the weights:** Assign a weight of zero to the backup hook and one to your second hook.
3. **Add your logic:** Ensure the backup hook introduces a delay (e.g., `sleep 10`) to visualize job execution in your terminal.
4. **Deploy the hooks:** Use the `helm upgrade` command to apply the changes.
5. **Monitor the job executions** with `kubectl get jobs` to verify the order of execution.
6. **Modify delete policies:** Adjust the policies for the hooks based on your desired behavior (e.g., `hook succeeded` or `hook failed`).
7. **Test and confirm the execution order** when uninstalling the release.

Now it's time to see how well you can execute this plan!

## Conclusion

In this lecture, we explored how to use weights to dictate the order of hook execution in Helm. We saw how different delete policies can affect the lifecycle of our jobs and ensured the proper functioning of pre-upgrade hooks. By practicing these concepts, you’ll solidify your understanding and boost your skills in managing hooks effectively. Keep experimenting and learning—there's always more to discover! 🚀
