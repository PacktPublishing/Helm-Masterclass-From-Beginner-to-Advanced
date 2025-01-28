# Setting Up a PostgreSQL Database for Your Application

Welcome! In this guide, we’ll walk through the process of configuring a PostgreSQL database and integrating it with our application. Before diving into the detailed steps, I encourage you to try implementing the solution by yourself first. It’s a great way to enhance your learning! Here’s a brief overview of what you’ll be doing:

## Overview

By the end of this exercise, you should aim to achieve the following:

1. Create a `.env` file to store your database credentials (username, password, database name).
2. Update the `compose.yaml` file to include your database configuration.
3. Develop the necessary application logic to connect to your PostgreSQL database using Sequelize.
4. Ensure everything is working correctly by running your application and verifying the connection.

**Now, take a moment to try these steps on your own! If you get stuck, that’s perfectly fine—let's look at the step-by-step guide below.** 🌟

## Step-by-Step Guide

1. **Create a `.env` file** in your project root with the following content:

   ```
   DB_USER=config_store_user
   DB_PASSWORD=config_store_password
   DB_NAME=config_store
   ```

2. **Modify your `compose.yaml` file:**

   - Add an environment variable for your database URL.
   - Create a new service for your PostgreSQL database with the correct image and environment variables.
   - Specify the volume for persistent data storage.

   Your `compose.yaml` should look something like this:

   ```yaml
   services:
     app:
       environment:
         - DATABASE_URL=postgres://${DB_USER}:${DB_PASSWORD}@db:${DB_PORT}/${DB_NAME}
       depends_on:
         - db
     db:
       image: postgres:17.1
       environment:
         - POSTGRES_USER=${DB_USER}
         - POSTGRES_PASSWORD=${DB_PASSWORD}
         - POSTGRES_DB=${DB_NAME}
       volumes:
         - postgres_data:/var/lib/postgresql/data

   volumes:
     postgres_data:
   ```

3. **Create a new file `db.js`** next to `index.js`:

   ```javascript
   const { Sequelize } = require('sequelize');
   const sequelize = new Sequelize(process.env.DATABASE_URL, {
     dialect: 'postgres',
   });

   module.exports = sequelize;
   ```

4. **Update your `index.js` file** to authenticate and synchronize with the database:

   ```javascript
   const db = require('./db');

   db.authenticate()
     .then(() => {
       console.log('Connected to PostgreSQL');
       return db.sync();
     })
     .then(() => {
       console.log('Database synchronized, starting server');
       app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
     })
     .catch((err) => {
       console.error('Unable to connect to the database:', err);
     });
   ```

5. **Run your application** by executing:

   ```
   docker-compose up
   ```

6. **Test the application** by making an HTTP request to your local server (e.g., localhost:3000) to confirm it's working!

## Conclusion

In this exercise, we successfully set up and integrated a PostgreSQL database with our application. By configuring the database and establishing a connection via Sequelize, we created a robust foundation for further development. Remember to keep practicing and exploring different features of PostgreSQL! 🚀
