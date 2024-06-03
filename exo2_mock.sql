INSERT INTO "user" (first_name, last_name, birthday, email)
VALUES ('Alice', 'Smith', '1990-01-01', 'alice.smith@example.com'),
       ('Bob', 'Johnson', '2015-05-12', 'bob.johnson@example.com'),
       ('Charlie', 'Williams', '1978-10-24', 'charlie.williams@example.com'),
       ('Diana', 'Brown', '2010-02-17', 'diana.brown@example.com'),
       ('Ethan', 'Jones', '1998-07-09', 'ethan.jones@example.com');

INSERT INTO "post" (post_content, user_id)
VALUES ('Just had a delicious pizza! #food #dinner', 1),
       ('Finished reading a great book, highly recommend it! #reading #bookworm', 2),
       ('Beautiful day for a hike! #nature #hiking', 3),
       ('Watching a movie night with friends!  #fun #friends', 4),
       ('Trying out a new recipe, wish me luck!‍ #cooking #foodie', 5);
