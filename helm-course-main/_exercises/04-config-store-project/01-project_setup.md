# Setting Up Your Config Store Project

## Overview

In this session, we'll focus on creating a basic setup for our Config Store application, which we'll build on in upcoming exercises. Before you peek at the step-by-step guide, try to implement the following steps on your own:

1. **Create a new GitHub repository** named "config-store" and initialize it with a README file, a `.gitignore`, and an MIT license.
2. **Clone the repository** to your local machine using either HTTPS or SSH.
3. **Set up your local project** by creating necessary files and directories, including a `Dockerfile`, a `.dockerignore`, and a `docker-compose.yaml` file.
4. **Install the required dependencies** with specific version numbers to ensure consistency across environments.
5. **Add a `nodemon` dev dependency** to help with real-time updates during development.
6. Configure the `.dockerignore` file to avoid sending unnecessary files during the Docker build process.

Give it a go! 🤓 Once you've tried it out, check the step-by-step guide for any details you might have missed.

## Step-by-Step Guide

1. **Create GitHub Repository**:

   - Go to GitHub and create a new public repository named `config-store`.
   - Include a README file, a `.gitignore` (using Node.js template), and choose the MIT license.

2. **Clone the Repository**:

   - Copy the repository URL and use the terminal to clone it:
     ```bash
     git clone [repository-url]
     ```

3. **Set Up Your Local Project**:

   - Create a new directory called `apps` to contain all your applications.
   - Move into the `config-store` directory:
     ```bash
     cd config-store
     ```
   - Open the project in your code editor.

4. **Initialize the Project**:

   - Run the command to create a `package.json` file:
     ```bash
     npm init -y
     ```

5. **Create Necessary Files**:

   - Create a `Dockerfile`, `.dockerignore`, and `docker-compose.yaml` file.
   - And a new directory named `src`.

6. **Install Required Dependencies**:

   - Use the following command to install the dependencies with exact versions:
     ```bash
     npm install express@4.21.1 sequelize@6.37.5 pg@8.13.1 pg-hstore@2.3.4 body-parser@1.20.3 cors@2.8.5 --save-exact
     ```

7. **Add `nodemon` as a Dev Dependency**:

   - Run the following command:
     ```bash
     npm install nodemon@3.1.7 --save-dev --save-exact
     ```

8. **Update the `.dockerignore`**:
   - Include `node_modules`, and any `.env` files to prevent them from being sent to the Docker build context.

## Conclusion

In this session, we've set up the foundation for our Config Store application, covering GitHub repository creation, local setup, and dependency management. Remember, understanding these steps now will make the upcoming coding sessions much smoother. Keep practicing, and don't hesitate to explore beyond what's covered here. Happy coding! 🚀
