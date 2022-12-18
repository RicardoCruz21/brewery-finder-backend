BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE addresses (
    address_id serial,
    street_address varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    state varchar(50) NOT NULL,
    zipcode varchar(10) NOT NULL,

    constraint pk_addresses PRIMARY KEY (address_id)
);

CREATE TABLE breweries (
    brewery_id serial,
    brewery_name varchar(100) NOT NULL,
    user_id int NOT NULL,
    website_url varchar(300),
    email_address varchar(100),
    address_id int NOT NULL,
    phone_number varchar(10),
    brewery_history text,
    brewery_logo varchar(300),
	brewery_image varchar(300),
    is_active boolean NOT NULL,

    constraint pk_breweries PRIMARY KEY (brewery_id),
    constraint fk_breweries FOREIGN KEY (user_id) references users (user_id),
    constraint fk_brewery_address FOREIGN KEY (address_id) references addresses (address_id)
);

CREATE TABLE beers (
    beer_id serial,
    beer_name varchar(100) NOT NULL,
    beer_description varchar(400) NOT NULL,
    image varchar(300) NOT NULL,
    abv numeric(2,1) NOT NULL,
    beer_type varchar(50) NOT NULL,
    is_active boolean NOT NULL,

    constraint pk_beers PRIMARY KEY (beer_id)
);

CREATE TABLE reviews (
    review_id serial,
    review_text text NOT NULL,
    user_id int NOT NULL,
    rating int NOT NULL,
    image varchar(300),

    constraint pk_reviews PRIMARY KEY (review_id),
    constraint fk_reviews FOREIGN KEY (user_id) references users (user_id)
);


CREATE TABLE hours (
    hours_id serial,
    day_id int NOT NULL,
    opening_hour time,
    closing_hour time,

    constraint pk_hours PRIMARY KEY (hours_id)
);

CREATE TABLE posts (
    post_id serial,
    date_created date NOT NULL,
    post_title varchar(100) NOT NULL,
    post_text text NOT NULL,

    constraint pk_posts PRIMARY KEY (post_id)
);

CREATE TABLE events (
    event_id serial,
    date_created date NOT NULL,
    date_of_event date NOT NULL,
    start_time timestamp NOT NULL,
    emd_time timestamp NOT NULL,
    event_title varchar(100) NOT NULL,
    event_text text,

    constraint pk_events PRIMARY KEY (event_id)
);

CREATE TABLE breweries_beers (
    brewery_id int NOT NULL,
    beer_id int NOT NULL,

    constraint pk_bb PRIMARY KEY (brewery_id, beer_id),
    constraint fk_bb FOREIGN KEY (brewery_id) references breweries (brewery_id),
    constraint fk_bb2 FOREIGN KEY (beer_id) references beers (beer_id)
);

CREATE TABLE likes (
    user_id int NOT NULL,
    brewery_id int NOT NULL,

    constraint pk_likes PRIMARY KEY (user_id, brewery_id),
    constraint fk_likes FOREIGN KEY (user_id) references users (user_id),
    constraint fk_likes_b FOREIGN KEY (brewery_id) references breweries (brewery_id)
);

CREATE TABLE beer_reviews (
    beer_id int NOT NULL,
    review_id int NOT NULL,

    constraint pk_beer_reviews PRIMARY KEY (beer_id, review_id),
    constraint fk_beer_reviews FOREIGN KEY (beer_id) references beers (beer_id),
    constraint fk_beer_reviews2 FOREIGN KEY (review_id) references reviews (review_id)
);

CREATE TABLE breweries_hours (
    brewery_id int NOT NULL,
    hours_id INT NOT NULL,

    constraint pk_breweries_hours PRIMARY KEY (brewery_id, hours_id),
    constraint fk_breweries_hours FOREIGN KEY (brewery_id) references breweries (brewery_id),
    constraint fk_breweries_hours2 FOREIGN KEY (hours_id) references hours (hours_id)
);

CREATE TABLE breweries_posts (
    brewery_id int NOT NULL,
    post_id INT NOT NULL,

    constraint pk_breweries_posts PRIMARY KEY (brewery_id, post_id),
    constraint fk_breweries_posts FOREIGN KEY (brewery_id) references breweries (brewery_id),
    constraint fk_breweries_posts2 FOREIGN KEY (post_id) references posts (post_id)
);

CREATE TABLE breweries_events (
    brewery_id INT NOT NULL,
    event_id INT NOT NULL,

    constraint pk_breweries_events PRIMARY KEY (brewery_id, event_id),
    constraint fk_breweries_events FOREIGN KEY (brewery_id) references breweries (brewery_id),
    constraint fk_breweries_events2 FOREIGN KEY (event_id) references events (event_id)
);




COMMIT TRANSACTION;