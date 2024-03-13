CREATE TABLE movie
(
    MovieTitles          VARCHAR,
    FilmDuration         INT     DEFAULT '0',
    VoteAverage          INT PRIMARY KEY,
    IncomeEuro           DECIMAL DEFAULT '0',
    IncomePoundsSterling FLOAT   DEFAULT IncomeEuro * 1.11,
)