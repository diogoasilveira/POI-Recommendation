# Setting up new .csv Train Files from .osm Files

1. Download the .osm of the wanted area from a reliable source
2. Create a new postgres database for the area (activate postgis extension)
3. Populate the database with the POIs using osm2pgsql
4. Run the parse_db.ipynb notebook to populate the POI-related columns
5. Change the coordinates system if necessary
6. Create the Materialized Views executing the materialized_views script
7. Refresh the Materialized Views
8. Generate the Train Files with the GeoContext2Vec.ipynb notebook
