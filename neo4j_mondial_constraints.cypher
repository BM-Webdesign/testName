// Integrity constraints in Neo4j 5: https://neo4j.com/docs/cypher-manual/5/constraints/syntax/

CREATE CONSTRAINT geo_object_name FOR (g:GeoObject) REQUIRE g.name :: STRING;
CREATE CONSTRAINT geo_object_type FOR (g:GeoObject) REQUIRE g.type :: STRING;

CREATE CONSTRAINT mountain_height FOR (m:Mountain) REQUIRE m.height :: INT;
CREATE CONSTRAINT island_area FOR (i:Island) REQUIRE i.area :: FLOAT;
CREATE CONSTRAINT sea_depth FOR (s:Sea) REQUIRE s.depth :: FLOAT;

// to be completed ...