// 1
MATCH (s:Site)
    WHERE s.name = 'Кинопоиск'
RETURN s;

// 2
MATCH (site)-[:POSTED]->(series)
    WHERE site.name = 'Кинопоиск'
RETURN series;

// 3
MATCH (site)-[p:POSTED]->(movie)
    WHERE movie.name = 'Однажды в… Голливуде' AND p.rating > 8
RETURN site.name;

// 4
MATCH (site)-[p:POSTED]->(movie)
    WHERE site.name = 'Ivi' AND p.rating > 8
RETURN movie.name;

// 5
MATCH (s1)-[p1:POSTED]->(m:Movie)<-[p2:POSTED]-(s2)
    WHERE p1.rating > 7  AND p2.rating < 9
RETURN m.name;

// 6
MATCH ()-[p:POSTED]->(s:Series)
RETURN s.name, p.rating;

// 7
MATCH (s)-[p:POSTED]->(m)
WHERE p.rating > 7 AND m.year > 2000
RETURN (s)-[p:POSTED]->(m);

// 8
MATCH (s)-[p:POSTED]->(m)
RETURN s.name, m.name,
CASE
WHEN p.rating > 7 AND p.rating <= 8
THEN 'So so'
WHEN p.rating > 8 AND p.rating <= 9
THEN 'Good'
WHEN p.rating > 9 AND p.rating <= 10
THEN 'Very good'
ELSE '=(' END AS verdict
;

// 9
MATCH (s)-[p:POSTED]->(m)
WITH 2020 AS current_year, m AS m
RETURN DISTINCT m.name AS name, current_year - m.year AS how_old
;

// 10
MATCH (s:Site)-[p:POSTED}]->(m:Movie)
WHERE p.rating > 9
RETURN s.name, m.name, p.rating;