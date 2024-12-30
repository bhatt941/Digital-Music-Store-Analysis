CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);


CREATE TABLE Artists (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


CREATE TABLE Albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    artist_id INT REFERENCES Artists(artist_id)
);


CREATE TABLE Tracks (
    track_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    album_id INT REFERENCES Albums(album_id),
    genre VARCHAR(50),
    price DECIMAL(5, 2) NOT NULL
);


CREATE TABLE Purchases (
    purchase_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    track_id INT REFERENCES Tracks(track_id),
    purchase_date DATE NOT NULL
);


INSERT INTO Customers (name, email, country) VALUES
('John Doe', 'john.doe@example.com', 'USA'),
('Jane Smith', 'jane.smith@example.com', 'UK'),
('Carlos Ruiz', 'carlos.ruiz@example.com', 'Spain'),
('Akira Tanaka', 'akira.tanaka@example.com', 'Japan'),
('Fatima Khan', 'fatima.khan@example.com', 'India'),
('Liam Brown', 'liam.brown@example.com', 'Australia'),
('Sophia Garcia', 'sophia.garcia@example.com', 'Mexico'),
('Lucas Schmidt', 'lucas.schmidt@example.com', 'Germany'),
('Olivia Chen', 'olivia.chen@example.com', 'China'),
('Mohammed Ali', 'mohammed.ali@example.com', 'UAE'),
('Emma Johnson', 'emma.johnson@example.com', 'Canada'),
('William Martinez', 'william.martinez@example.com', 'Brazil'),
('Mia Lopez', 'mia.lopez@example.com', 'Argentina'),
('Ethan Williams', 'ethan.williams@example.com', 'South Africa'),
('Ava Wilson', 'ava.wilson@example.com', 'New Zealand'),
('James Davis', 'james.davis@example.com', 'USA'),
('Isabella Rivera', 'isabella.rivera@example.com', 'Colombia'),
('Benjamin Clark', 'benjamin.clark@example.com', 'UK'),
('Charlotte Lee', 'charlotte.lee@example.com', 'Singapore'),
('Elijah Walker', 'elijah.walker@example.com', 'USA'),
('Amelia Gonzalez', 'amelia.gonzalez@example.com', 'Mexico'),
('Mason Moore', 'mason.moore@example.com', 'Ireland'),
('Harper Hall', 'harper.hall@example.com', 'Canada'),
('Ella Young', 'ella.young@example.com', 'Australia'),
('Logan Adams', 'logan.adams@example.com', 'USA'),
('Aria Perez', 'aria.perez@example.com', 'Chile'),
('Noah Torres', 'noah.torres@example.com', 'Peru'),
('Aiden Scott', 'aiden.scott@example.com', 'UK'),
('Lily Green', 'lily.green@example.com', 'Nigeria'),
('Jackson Baker', 'jackson.baker@example.com', 'USA'),
('Zoey Nelson', 'zoey.nelson@example.com', 'Kenya'),
('Henry Carter', 'henry.carter@example.com', 'South Korea'),
('Grace Turner', 'grace.turner@example.com', 'New Zealand'),
('Alexander Murphy', 'alexander.murphy@example.com', 'Ireland'),
('Chloe Evans', 'chloe.evans@example.com', 'UK'),
('Sebastian Rivera', 'sebastian.rivera@example.com', 'Venezuela'),
('Emily Wood', 'emily.wood@example.com', 'USA'),
('Levi Cooper', 'levi.cooper@example.com', 'Australia'),
('Scarlett Morgan', 'scarlett.morgan@example.com', 'South Africa'),
('Daniel Phillips', 'daniel.phillips@example.com', 'Canada'),
('Abigail Carter', 'abigail.carter@example.com', 'India'),
('Matthew King', 'matthew.king@example.com', 'USA'),
('Hannah Stewart', 'hannah.stewart@example.com', 'UK'),
('David Butler', 'david.butler@example.com', 'France'),
('Sofia Hughes', 'sofia.hughes@example.com', 'Italy'),
('Joseph Kelly', 'joseph.kelly@example.com', 'USA'),
('Victoria Reed', 'victoria.reed@example.com', 'Germany'),
('Anthony Collins', 'anthony.collins@example.com', 'Netherlands'),
('Madison Cook', 'madison.cook@example.com', 'Sweden'),
('Andrew Bell', 'andrew.bell@example.com', 'USA'),
('Evelyn Gray', 'evelyn.gray@example.com', 'Denmark');

select * from customers

INSERT INTO Artists (name) VALUES
('Taylor Swift'),
('The Beatles'),
('Adele'),
('Ed Sheeran'),
('Coldplay'),
('Beyoncé'),
('Drake'),
('Rihanna'),
('Kanye West'),
('Bruno Mars'),
('Lady Gaga'),
('Ariana Grande'),
('Justin Bieber'),
('Katy Perry'),
('Shawn Mendes'),
('Billie Eilish'),
('Dua Lipa'),
('Post Malone'),
('The Weeknd'),
('Imagine Dragons'),
('Maroon 5'),
('Sam Smith'),
('Halsey'),
('Zayn Malik'),
('Harry Styles'),
('One Direction'),
('Selena Gomez'),
('Camila Cabello'),
('Nicki Minaj'),
('Doja Cat'),
('Olivia Rodrigo'),
('Miley Cyrus'),
('Jonas Brothers'),
('Lizzo'),
('Jason Derulo'),
('Chris Brown'),
('Sia'),
('Alan Walker'),
('Chainsmokers'),
('Twenty One Pilots'),
('Linkin Park'),
('Green Day'),
('Metallica'),
('Eminem'),
('Jay-Z'),
('Usher'),
('Alicia Keys'),
('Elton John'),
('Whitney Houston'),
('Celine Dion'),
('Michael Jackson'),
('Elvis Presley'),
('Bob Dylan'),
('Madonna'),
('Prince'),
('David Bowie'),
('Freddie Mercury'),
('Queen'),
('Nirvana'),
('Pink Floyd');

select * from artists

INSERT INTO Albums (title, artist_id) VALUES
('1989', 1),
('Abbey Road', 2),
('21', 3),
('Divide', 4),
('Parachutes', 5),
('Lemonade', 6),
('Scorpion', 7),
('Anti', 8),
('Graduation', 9),
('24K Magic', 10),
('Chromatica', 11),
('Sweetener', 12),
('Purpose', 13),
('Teenage Dream', 14),
('Illuminate', 15),
('When We All Fall Asleep', 16),
('Future Nostalgia', 17),
('Hollywoods Bleeding', 18),
('After Hours', 19),
('Evolve', 20),
('V', 21),
('In the Lonely Hour', 22),
('Manic', 23),
('Mind of Mine', 24),
('Fine Line', 25),
('Midnight Memories', 26),
('Rare', 27),
('Romance', 28),
('Queen', 29),
('Planet Her', 30),
('SOUR', 31),
('Plastic Hearts', 32),
('Happiness Begins', 33),
('Cuz I Love You', 34),
('Talk Dirty', 35),
('Indigo', 36),
('This Is Acting', 37),
('Different World', 38),
('Memories Do Not Open', 39),
('Blurryface', 40),
('Hybrid Theory', 41),
('American Idiot', 42),
('Master of Puppets', 43),
('The Eminem Show', 44),
('The Blueprint', 45),
('Confessions', 46),
('Songs in A Minor', 47),
('Goodbye Yellow Brick Road', 48),
('I Will Always Love You', 49),
('Falling Into You', 50),
('Thriller', 51),
('Blue Hawaii', 52);

select * from albums

INSERT INTO Tracks (title, album_id, genre, price) VALUES
-- Pop Songs
('Blank Space', 1, 'Pop', 1.99),
('Style', 1, 'Pop', 1.89),
('Love Story', 1, 'Pop', 1.79),
('Shake It Off', 1, 'Pop', 1.99),
('Bad Blood', 1, 'Pop', 2.09),

-- Rock Songs
('Let It Be', 2, 'Rock', 2.49),
('Hey Jude', 2, 'Rock', 2.59),
('Come Together', 2, 'Rock', 2.39),
('Something', 2, 'Rock', 2.49),
('Yesterday', 2, 'Rock', 2.29),

-- Soul Songs
('Hello', 3, 'Soul', 2.99),
('Rolling in the Deep', 3, 'Soul', 2.79),
('Someone Like You', 3, 'Soul', 2.89),
('Set Fire to the Rain', 3, 'Soul', 2.99),
('When We Were Young', 3, 'Soul', 3.09),

-- Alternative Songs
('Yellow', 5, 'Alternative', 1.99),
('The Scientist', 5, 'Alternative', 2.09),
('Fix You', 5, 'Alternative', 2.19),
('Clocks', 5, 'Alternative', 2.29),
('Viva La Vida', 5, 'Alternative', 2.49),

-- Pop Songs by Ed Sheeran
('Shape of You', 4, 'Pop', 1.49),
('Perfect', 4, 'Pop', 1.59),
('Photograph', 4, 'Pop', 1.69),
('Thinking Out Loud', 4, 'Pop', 1.79),
('Galway Girl', 4, 'Pop', 1.99),

-- Jazz Songs
('Take Five', 6, 'Jazz', 2.99),
('So What', 6, 'Jazz', 3.09),
('Round Midnight', 6, 'Jazz', 2.89),
('My Favorite Things', 6, 'Jazz', 3.29),
('All Blues', 6, 'Jazz', 3.19),

-- Hip-Hop Songs
('Lose Yourself', 7, 'Hip-Hop', 2.49),
('Stronger', 7, 'Hip-Hop', 2.59),
('Gold Digger', 7, 'Hip-Hop', 2.69),
('Empire State of Mind', 7, 'Hip-Hop', 2.79),
('Run This Town', 7, 'Hip-Hop', 2.89),

-- EDM Songs
('Animals', 8, 'EDM', 1.99),
('Titanium', 8, 'EDM', 2.09),
('Wake Me Up', 8, 'EDM', 2.19),
('Clarity', 8, 'EDM', 2.29),
('Lean On', 8, 'EDM', 2.49),

-- Classical Songs
('Canon in D', 9, 'Classical', 3.49),
('Fur Elise', 9, 'Classical', 3.59),
('The Four Seasons', 9, 'Classical', 3.69),
('Clair de Lune', 9, 'Classical', 3.79),
('Moonlight Sonata', 9, 'Classical', 3.89),

-- Country Songs
('Take Me Home, Country Roads', 10, 'Country', 2.49),
('Jolene', 10, 'Country', 2.59),
('Before He Cheats', 10, 'Country', 2.69),
('Wagon Wheel', 10, 'Country', 2.79),
('I Walk the Line', 10, 'Country', 2.89),

-- Blues Songs
('The Thrill Is Gone', 11, 'Blues', 2.99),
('Crossroads', 11, 'Blues', 3.09),
('Sweet Home Chicago', 11, 'Blues', 3.19),
('Stormy Monday', 11, 'Blues', 3.29),
('Hoochie Coochie Man', 11, 'Blues', 3.39);

select * from tracks

INSERT INTO Purchases (customer_id, track_id, purchase_date) VALUES
(1, 1, '2024-12-01'),
(1, 2, '2024-12-02'),
(2, 3, '2024-12-03'),
(3, 4, '2024-12-04'),
(4, 5, '2024-12-05'),
(5, 1, '2024-12-06'),
(2, 2, '2024-12-07'),
(3, 3, '2024-12-08'),
(4, 4, '2024-12-09'),
(5, 5, '2024-12-10'),
(1, 3, '2024-12-11'),
(2, 1, '2024-12-12'),
(3, 5, '2024-12-13'),
(4, 1, '2024-12-14'),
(5, 2, '2024-12-15'),
(1, 4, '2024-12-16'),
(2, 5, '2024-12-17'),
(3, 1, '2024-12-18'),
(4, 2, '2024-12-19'),
(5, 3, '2024-12-20'),
(1, 5, '2024-12-21'),
(2, 4, '2024-12-22'),
(3, 2, '2024-12-23'),
(4, 3, '2024-12-24'),
(5, 4, '2024-12-25'),
(1, 1, '2024-12-26'),
(2, 2, '2024-12-27'),
(3, 3, '2024-12-28'),
(4, 4, '2024-12-29'),
(5, 5, '2024-12-30'),
(1, 3, '2024-12-31'),
(2, 5, '2025-01-01'),
(3, 1, '2025-01-02'),
(4, 2, '2025-01-03'),
(5, 4, '2025-01-04'),
(1, 2, '2025-01-05'),
(2, 4, '2025-01-06'),
(3, 5, '2025-01-07'),
(4, 1, '2025-01-08'),
(5, 3, '2025-01-09'),
(1, 4, '2025-01-10'),
(2, 3, '2025-01-11'),
(3, 2, '2025-01-12'),
(4, 5, '2025-01-13'),
(5, 1, '2025-01-14'),
(1, 5, '2025-01-15'),
(2, 1, '2025-01-16'),
(3, 4, '2025-01-17'),
(4, 2, '2025-01-18'),
(5, 3, '2025-01-19'),
(1, 1, '2025-01-20'),
(2, 2, '2025-01-21'),
(3, 3, '2025-01-22'),
(4, 4, '2025-01-23'),
(5, 5, '2025-01-24');

select * from purchases

select * from customers
select * from artists
select * from albums
select * from tracks
select * from purchases

---find the details of all customers from India
select * from customers where country ='India'

---Retrieve the names of all the artists
select name from artists

---Find tracks and price in the 'Pop' genre.
select title, price from tracks where genre = 'Pop'

--- Find the total number of purchases count made by each customer ID.
select customer_id, count(purchase_id) from purchases
group by customer_id

	
---List all albums and their respective artist names.
select *  from artists
select * from albums

select ar.name, al.title 
from artists as ar
join albums as al
on ar.artist_id=al.artist_id
	
---Find the total revenue generated from all purchases.
select * from purchases
select * from tracks

select sum(tr.price) as "total revenue generated"
from tracks as tr
join purchases as p
on p.track_id=tr.track_id

---Identify the three most purchased track (count track id).
select tr.title, count(p.track_id) as "count of purchased track"
from purchases as p
join tracks as tr
on tr.track_id=p.track_id
group by tr.title
order by count(p.track_id) desc
limit 3

---Find customer's id who have purchased tracks from multiple genres.
select customer_id
from Purchases
join Tracks on Purchases.track_id = Tracks.track_id
group by customer_id
having count(distinct Tracks.genre) > 1;

---Calculate the average spending per customer.
select c.name, avg(tr.price) as "average_spending_by_customer "
from customers as c
join purchases as p
on c.customer_id=p.customer_id
join tracks as tr
on tr.track_id=p.track_id
group by c.name

---Find the top 3 countries with the highest purchase count with title track.
select c.country,tr.title, count(p.track_id) as purchase_count_of_track
from customers as c
join purchases as p
on p.customer_id=c.customer_id
join tracks as tr
on tr.track_id=p.track_id
group by c.country, tr.title
order by count(p.track_id) desc
limit 3
