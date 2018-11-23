# Bookmark Manager

### User stories

```
As an internet user,
So that I can find all of my favourite websites when I need them,
I want to be able to view a list of my bookmarked urls.

As an internet user,
So that I can remember any new websites that I like,
I want to be able to add urls to the list of bookmarks.

As an internet user,
So that I can manage my bookmarks the way I want,
I want to be able to delete a bookmark.

As an internet user,
So I can make changes to my bookmarks,
I want to be able to update a bookmark.
```

### Domain model

![Domain model for User Story 1](./domain_model.jpg)

### To set up the database:

Connect to `psql` and create the `bookmark_manager` database and `bookmark_manager_test` databases:
```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```
To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 3000
```
To view bookmarks, navigate to `localhost:3000/bookmarks`.
