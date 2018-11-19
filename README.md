# Bookmark Manager

### User stories

```
User story 1

As an internet user,
So that I can find all of my favourite websites when I need them,
I want to be able to view a list of my bookmarked urls.
```

### Domain model

![Domain model for User Story 1](./domain_model.jpg)

### To set up the database:

Connect to `psql` and create the `bookmark_manager` database:
```
CREATE DATABASE bookmark_manager;
```
To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 3000
```
To view bookmarks, navigate to `localhost:3000/bookmarks`.
