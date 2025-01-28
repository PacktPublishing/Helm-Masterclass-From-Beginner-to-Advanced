# Implementing Routes for a Database Model in a Web Application 🚀

## Overview

In this exercise, we will be implementing the application logic for a web application that interacts with a database model. The focus is on creating routes that allow us to perform CRUD (Create, Read, Update, Delete) operations on a simple key-value pair model. Before diving into the step-by-step guide, it’s always beneficial to try tackling the challenge yourself! Here's a brief summary of the main steps you'll need to implement:

1. Stop any hot reloading to avoid synchronization issues while creating models.
2. Create a new `models.js` file to define a key-value model using Sequelize.
3. Create a `routes.js` file to set up API routes for your key-value operations.
4. Implement GET, POST, PUT, and DELETE methods in your routes.
5. Test your routes using Postman to ensure everything works as expected.

Give it a shot! Try to implement the solution before checking out the detailed guide below.

## Step-by-Step Guide

### 1. Stop Hot Reloading

Make sure to stop your Docker Compose project to avoid issues with model synchronization.

### 2. Create the Model

- In your `source` folder, create a file named `models.js`.
- Import the necessary Sequelize components:
  ```javascript
  const { Sequelize, DataTypes } = require('sequelize');
  const DB = require('./DB');
  ```
- Define the model:
  ```javascript
  const kv = DB.define('kv', {
    key: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
    value: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  });
  module.exports = { kv };
  ```

### 3. Set Up Routes

- Create a new file named `routes.js` in the `source` folder.
- Import Express and the kv model:
  ```javascript
  const express = require('express');
  const { kv } = require('./models');
  const api = express.Router();
  ```

### 4. Implement CRUD Operations

#### GET Requests

- Retrieve all key-value pairs:
  ```javascript
  api.get('/kv', async (req, res) => {
    try {
      const pairs = await kv.findAll();
      res.json(pairs);
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  });
  ```
- Retrieve a specific key-value pair:
  ```javascript
  api.get('/kv/:key', async (req, res) => {
    const key = req.params.key;
    try {
      const pair = await kv.findOne({ where: { key } });
      if (pair) {
        res.json(pair);
      } else {
        res.status(404).json({ error: 'Key not found' });
      }
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  });
  ```

#### POST Request

- Create a new key-value pair:
  ```javascript
  api.post('/kv', async (req, res) => {
    const { key, value } = req.body;
    if (!key || !value) {
      return res
        .status(400)
        .json({ error: 'Both key and value fields are required' });
    }
    try {
      const existingPair = await kv.findOne({ where: { key } });
      if (existingPair) {
        return res.status(400).json({ error: 'Key already present' });
      }
      const newPair = await kv.create({ key, value });
      res.status(201).json(newPair);
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  });
  ```

#### PUT Request

- Update a key-value pair:
  ```javascript
  api.put('/kv/:key', async (req, res) => {
    const key = req.params.key;
    const { value } = req.body;
    if (!value) {
      return res.status(400).json({ error: 'Value field is required' });
    }
    try {
      const [updatedCount] = await kv.update({ value }, { where: { key } });
      if (updatedCount > 0) {
        const updatedPair = await kv.findOne({ where: { key } });
        res.json(updatedPair);
      } else {
        res.status(404).json({ error: 'Key not found' });
      }
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  });
  ```

#### DELETE Request

- Remove a key-value pair:
  ```javascript
  api.delete('/kv/:key', async (req, res) => {
    const key = req.params.key;
    try {
      const deletedCount = await kv.destroy({ where: { key } });
      if (deletedCount > 0) {
        res.sendStatus(204);
      } else {
        res.status(404).json({ error: 'Key not found' });
      }
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  });
  ```

### 5. Test Using Postman

After setting up your routes, use Postman to test your API endpoints to ensure they work correctly.

## Conclusion

We've successfully implemented routes for handling key-value pairs in our web application. Remember that our focus was on creating a minimal application for demonstration purposes, and there are plenty of opportunities to enhance error handling and structure. Keep experimenting with your code and exploring the possibilities! Happy coding! 😊
