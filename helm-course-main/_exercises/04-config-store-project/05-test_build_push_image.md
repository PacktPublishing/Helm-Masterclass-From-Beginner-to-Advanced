# Building and Pushing Docker Images

## Overview

In this exercise, we'll be focusing on testing our API and building and pushing our Docker image to Docker Hub. Before diving into the step-by-step guide, let's outline the main steps you should try implementing on your own:

1. Start your Docker Compose project by running `docker-compose up`.
2. Test the API endpoints using Postman.
3. Create, update, and delete key-value pairs through the API.
4. Handle authentication with Docker Hub, login with a personal access token, and build your Docker image.
5. Push your Docker image to Docker Hub.

Take some time to explore these steps and attempt the implementation yourself! Once you're ready, check out the step-by-step guide below. 🚀

## Step-by-Step Guide

1. **Start Docker Compose**: Open your terminal and run the command `docker-compose up`. Ensure that your containers are properly set up.
2. **Testing the API**:

   - Use Postman to send a request to your API endpoint at `/kv` to check initial responses.
   - Create a key-value pair by sending a POST request with appropriate JSON format including both the key and value.
   - Test the GET request to retrieve the value using the key created previously.
   - Use PUT and DELETE requests to modify or remove keys, confirming appropriate error messages for invalid requests.

3. **Docker Hub Authentication**:

   - Create a Docker Hub account if you don’t already have one.
   - Generate a personal access token from your Docker Hub account settings.
   - Open your terminal and run `docker login` using your Docker username and the personal access token.

4. **Building Your Docker Image**:

   - Make sure you are in the directory containing your Dockerfile.
   - Use the command `docker build` to create your image. Tag it appropriately (e.g., `username/config-store:1.0.0`) and specify the platforms if necessary.

5. **Pushing the Docker Image**:
   - Use the `--push` flag with your build command to automatically push your image to Docker Hub once it’s built.
   - Verify the image has been uploaded by checking your Docker Hub repository.

## Conclusion

Congratulations on getting through this exercise! You've successfully tested your API, built a Docker image, and pushed it to Docker Hub. These skills are essential for modern application development, and we encourage you to continue practicing. Keep exploring Docker and API development to strengthen your understanding! 😊
