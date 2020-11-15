CREATE(s:Site {name: 'Кинопоиск', url: 'https://www.kinopoisk.ru/'});

MATCH(s:Site)
    WHERE s.name = 'Кинопоиск'
CREATE(s)-[:POSTED {rating: 7.6}]->(m:Movie {
    name: 'Однажды в… Голливуде',
    ru_title: 'Однажды в… Голливуде', 
    en_title: 'Once Upon a Time... in Hollywood',
    year: '2019'
});

MATCH(s:Site)
    WHERE s.name = 'Кинопоиск'
CREATE(s)-[:POSTED {rating: 7.1}]->(ser:Series {
    name: 'Метод 2',
    ru_title: 'Метод 2',
    year: '2019'
});

MATCH(s:Site)
    WHERE s.name = 'Кинопоиск'
CREATE(s)-[:POSTED {rating: 8.9}]->(ser:Series {
    name: 'Смешарики. Новый сезон',
    ru_title: 'Смешарики. Новый сезон',
    year: '2020'
});

MATCH(s:Site)
    WHERE s.name = 'Кинопоиск'
CREATE(s)-[:POSTED {rating: 7.8}]->(m:Movie {
    name: 'Трое в лодке, не считая собаки',
    ru_title: 'Трое в лодке, не считая собаки',
    year: '1979'
});

MATCH(s:Site)
    WHERE s.name = 'Кинопоиск'
CREATE(s)-[:POSTED {rating: 7.9}]->(m:Movie {
    name: 'Мстители: Война бесконечности',
    ru_title: 'Мстители: Война бесконечности',
    en_title: 'Avengers: Infinity War',
    year: '2018'
});

MATCH(s:Site)
    WHERE s.name = 'Кинопоиск'
CREATE(s)-[:POSTED {rating: 8.5}]->(m:Movie {
    name: 'Джентельмены',
    ru_title: 'Джентельмены',
    en_title: 'The Gentlemen',
    year: '2019'
});

CREATE(s:Site {name: 'Ivi', url: 'https://www.ivi.ru/'});

MATCH(s:Site), (m:Movie)
    WHERE s.name = 'Ivi' AND m.name = 'Трое в лодке, не считая собаки'
CREATE(s)-[:POSTED {rating: 8.1}]->(m);

MATCH(s:Site), (m:Movie)
    WHERE s.name = 'Ivi' AND m.name = 'Однажды в… Голливуде'
CREATE(s)-[:POSTED {rating: 7.1}]->(m);

MATCH(s:Site), (m:Movie)
    WHERE s.name = 'Ivi' AND m.name = 'Мстители: Война бесконечности'
CREATE(s)-[:POSTED {rating: 8.6}]->(m);

MATCH(s:Site), (m:Movie)
    WHERE s.name = 'Ivi' AND m.name = 'Джентельмены'
CREATE(s)-[:POSTED {rating: 8.6}]->(m);

CREATE(s:Site {name: 'Kinonews', url: 'https://www.kinonews.ru/'});

MATCH(s:Site), (m:Movie)
    WHERE s.name = 'Kinonews' AND m.name = 'Трое в лодке, не считая собаки'
CREATE(s)-[:POSTED {rating: 9.29}]->(m);

MATCH(s:Site), (m:Movie)
    WHERE s.name = 'Kinonews' AND m.name = 'Мстители: Война бесконечности'
CREATE(s)-[:POSTED {rating: 8.77}]->(m);

MATCH(s:Site), (m:Movie)
    WHERE s.name = 'Kinonews' AND m.name = 'Однажды в… Голливуде'
CREATE(s)-[:POSTED {rating: 8.51}]->(m);

MATCH(s:Site), (m:Movie)
    WHERE s.name = 'Kinonews' AND m.name = 'Джентельмены'
CREATE(s)-[:POSTED {rating: 8.16}]->(m);