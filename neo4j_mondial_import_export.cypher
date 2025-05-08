// Edition comparison: https://neo4j.com/docs/operations-manual/current/introduction/#edition-details

// APOC is a plugin for Neo4j graph export/import. Download the appropriate version here: https://github.com/neo4j/apoc/releases.
// Add `apoc.import.file.enabled=true` and `apoc.export.file.enabled=true` in your `NEO4J_HOME/conf/apoc.conf` file.

// To export the full graph in .graphml format, run the following Cypher command.
CALL apoc.export.graphml.all('/neo4j_mondial.graphml', {useTypes:true, storeNodeIds:false});

// To import the full graph from .graphml format, run the following  Cypher command.
CALL apoc.import.graphml('/neo4j_mondial.graphml', {readLabels:true});

// After the import update the Date types in Cypher.
MATCH (o:Organization) SET o.established = date(o.established);
MATCH (c:Country) SET c.independence = date(c.independence);