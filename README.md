# Eventure Event Platform

> Event platform built with the MERN stack & Redux.

<img src="/frontend/public/images/screens.png">

This project is part of my [MERN Stack Event Platform](https://www.eventify.com/mern-stack-event-platform) course. It is a full-featured event browsing and ticket purchasing platform with PayPal & credit/debit payment integrations. Experience it live at [Link]

This is the initial version of the app, offering event exploration, detailed views, and secure checkout processes.

- [Features](#features)
- [Usage](#usage)
  - [Env Variables](#env-variables)
  - [Install Dependencies (frontend & backend)](#install-dependencies-frontend--backend)
  - [Run](#run)
- [Build & Deploy](#build--deploy)
  - [Seed Database](#seed-database)

* [License](#license)

## Features

- Event listings with detailed pages
- User reviews and ratings for events
- Search functionality for events
- User profile with order history
- Admin event management
- Admin user management
- Admin Order details page
- Checkout process (ticket selection, payment method, etc)
- PayPal / credit card integration
- Database seeder (events & users)

## Usage

- Create a MongoDB database and obtain your `MongoDB URI` - [MongoDB Atlas](https://www.mongodb.com/cloud/atlas/register)
- Create a PayPal account and obtain your `Client ID` - [PayPal Developer](https://developer.paypal.com/)

### Env Variables

Rename the `.env.example` file to `.env` and add the following

```
NODE_ENV = development
PAGINATION_LIMIT=8
PORT = 5000
MONGO_URI = your mongodb uri
JWT_SECRET = 'your_secret'
PAYPAL_CLIENT_ID = your paypal client id
```

Change the JWT_SECRET to what you want

### Install Dependencies (frontend & backend)

```
npm install
cd frontend
npm install
```

### Run

```
# Run frontend (:3000) & backend (:5000)
npm run dev

# Run backend only
npm run server

Note: Change proxy to http://locahost:5000 in frontend/package.json to run Locally
```
## Run with Docker Compose

To run the application using Docker Compose, follow these steps:

1. Make sure you have [Docker](https://www.docker.com/get-started) installed on your machine.

2. Open a terminal in the project's root directory.

3. Run the following command to start the application using Docker Compose:

    ```bash
    docker-compose up
    ```

    This will build and start the frontend and backend services defined in the `docker-compose.yaml` file.

4. Open your browser and visit [http://localhost:3000](http://localhost:3000) to access the application.

5. To stop the application, press `Ctrl + C` in the terminal where `docker-compose up` is running.

6. If you want to rebuild the images and start fresh, you can use the `--build` flag:

    ```bash
    docker-compose up --build
    ```

Note: Ensure that your MongoDB URI and other environment variables in the docker-compose.yaml file are properly configured.

Feel free to customize the Docker Compose setup based on your specific requirements.

## Build & Deploy

```
# Create frontend prod build
cd frontend
npm run build
```

### Seed Database

You can use the following commands to seed the database with some sample events and users as well as destroy all data

```
# Import data
npm run data:import

# Destroy data
npm run data:destroy
```

```
Sample User Logins

admin@email.com (Admin)
123456

testnitesh@email.com (Customer)
123456
```
