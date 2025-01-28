# Setting Up an Express Application with Docker

Welcome to the guide on setting up an Express application using Docker! In this exercise, we’ll walk through the steps of creating a simple yet functional web server with Docker integration. Before diving into the details, I encourage you to try implementing the solution yourself first. It'll be a great way to reinforce what you've learned!

### Overview

In this exercise, you'll be implementing a basic Express application with Docker. Here’s a quick summary of what you'll be trying to achieve:

1. Create an `index.js` file in the source folder to house the main application code.
2. Set up Express, CORS, and Body Parser within this file.
3. Initialize the Express app to listen on a specified port and handle a simple GET route.
4. Create a `Dockerfile` with a multi-stage build for both development and production environments.
5. Configure a `docker-compose.yaml` file to manage the app service and its dependencies.

Give it a shot before consulting the step-by-step guide below! 🚀

### Step-by-Step Guide

1. **Create `index.js`:**

   - Within your source folder, create an `index.js` file.
   - Require `express`, `cors`, and `body-parser`.
   - Initialize the Express app: `const app = express();`
   - Call `app.use()` for `cors` and `body-parser.json()`.

2. **Set the Port:**

   - Define your port variable, using `process.env.PORT` or default it to `3000`.
   - Start your application with `app.listen(port, ...)` to log that the server is running.

3. **Add a Simple Route:**
   - Implement a basic `GET` route that responds with "Hello World".
4. **Update `package.json`:**

   - Create a new script for development using `nodemon` in your `package.json`.

5. **Run Your Application:**

   - Use the terminal to run your application with `npm run dev`.
   - Test that it runs correctly by sending a request to `localhost:3000`.

6. **Create the Dockerfile:**

   - Set up a multi-stage Dockerfile with development and production stages.
   - For development, copy necessary files and specify the command to run the app.

7. **Set Up Docker Compose:**

   - Define your services in `docker-compose.yaml`, specifying the build context and port mappings.
   - Add necessary configurations for the watch option to sync file changes.

8. **Run Docker Compose:**
   - Execute `docker-compose up --build --watch` in the terminal to build and deploy your application.

### Conclusion

Congratulations on setting up your initial Express app with Docker! 🎉 You've learned how to create a simple server and containerize it for both development and production environments. This foundation is essential as you build more complex applications. Keep practicing, and don't hesitate to explore additional features or enhancements. Happy coding!

### Lecture Description


