# Adding First Values: GoTem Planning

## Overview

Welcome! In this exercise, we're going to enhance our chart by integrating some flexible and customizable features, specifically focusing on the `values.yaml` file. The goal is to allow users to define important parameters such as the replicaCount, image name and tag, and service type and port. Before diving into the step-by-step guide, here's a quick summary of the main steps. I encourage you to give it a try on your own first!

1. Define the following parameters in the `values.yaml` file:

   - replicaCount
   - Image name and tag
   - Service type and port

2. Document each parameter for clarity.

3. Update the deployment template to use the defined parameters.

4. Test the changes by regenerating your templates and confirming the outputs.

Ready to give it a shot? Let’s see what you can come up with before looking at the detailed guide below! 🚀

## Step-by-Step Guide

1. **Open your `values.yaml` file**:

   - Create or update the following parameters:
     - `replicaCount` to set the number of replicas.
     - An object `image` containing `name` and `tag` for the image.
     - Parameters for `service.type` and `service.port`.

2. **Document your parameters**:

   - Write clear comments beside each parameter to explain their purpose.

3. **Modify your `deployment.yaml`**:

   - Interpolate the values from the `values.yaml` file:
     - For the `replicaCount`: Use `.Values.replicaCount`.
     - For the image: Use `.Values.image.name` and `.Values.image.tag`.

4. **Update your `service.yaml`**:

   - Replace hardcoded values with the new parameters:
     - For service type: Use `.Values.service.type`.
     - For service port: Use `.Values.service.port`.

5. **Add the HTTP container port configuration**:

   - Create a new section for `containerPorts` in `values.yaml`.
   - Add an `http` parameter under this section to specify the port.

6. **Reference the container port in both `deployment.yaml` and `service.yaml`**:

   - Use `.Values.containerPorts.http` for the container port.

7. **Test your changes**:
   - Use the Helm template command to regenerate your templates and verify that everything is working as intended.

## Conclusion

Great job! By following these steps, you’ve successfully defined several key values in your `values.yaml` file and learned how to reference them in your deployment and service templates. Remember, this foundational knowledge is crucial for building more complex configurations in the future. Keep practicing, and don't hesitate to explore more features! 🌟
