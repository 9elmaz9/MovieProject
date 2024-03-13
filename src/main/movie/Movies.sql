CREATE TABLE movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    duration INT, -- Duration in minutes
    revenue DECIMAL(10, 2), -- Revenue in Euro
    vote_average DECIMAL(3, 1) -- Vote average, e.g., 7.5
);
