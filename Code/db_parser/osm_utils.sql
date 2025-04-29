UPDATE poi SET geom = ST_GeomFromText(CONCAT('POINT(',longitude,' ',latitude,')'), 4326);
UPDATE poi SET context = ST_Buffer(geom, 0.004); 