# bookmark-manager

This is the bookmark-manager challenge

## User stories

 as a user
 so that i can go to the websites i visit regularly
 i would like to see a list of bookmarks

## Domain model

![Bookmark manager domain model](https://github.com/makersacademy/course/raw/master/bookmark_manager/images/bookmark_manager_1.png)

## Creating a database

1. Connect to psql
2. Use the command CREATE DATABASE bookmark_manager;
3. Connect to the database \c bookmark_manager;
4. Run the query CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
