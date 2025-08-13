-- Migration number: 0002 	 2024-12-27T22:04:18.794Z

-- Add a new users table
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY NOT NULL,
    username TEXT UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Add a user_id foreign key to comments table
ALTER TABLE comments ADD COLUMN user_id INTEGER REFERENCES users(id);