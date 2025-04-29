CREATE MATERIALIZED VIEW public.lines_information AS
 SELECT planet_osm_line.osm_id,
    planet_osm_line.access,
    planet_osm_line.aerialway,
    planet_osm_line.aeroway,
    planet_osm_line.barrier,
    planet_osm_line.bicycle,
    planet_osm_line.bridge,
    planet_osm_line.construction,
    planet_osm_line.covered,
    planet_osm_line.cutting,
    planet_osm_line.disused,
    planet_osm_line.embankment,
    planet_osm_line.foot,
    planet_osm_line.highway,
    planet_osm_line.historic,
    planet_osm_line.horse,
    planet_osm_line.intermittent,
    planet_osm_line.junction,
    planet_osm_line.landuse,
    planet_osm_line.leisure,
    planet_osm_line.man_made,
    planet_osm_line."natural",
    planet_osm_line.oneway,
    planet_osm_line.public_transport,
    planet_osm_line.railway,
    planet_osm_line.route,
    planet_osm_line.surface,
    planet_osm_line.toll,
    planet_osm_line.tourism,
    planet_osm_line.tunnel,
    planet_osm_line.waterway,
    planet_osm_line.z_order,
    planet_osm_line.way
   FROM public.planet_osm_line
  WHERE ((planet_osm_line.access IS NOT NULL) OR (planet_osm_line.aerialway IS NOT NULL) OR (planet_osm_line.aeroway IS NOT NULL) OR (planet_osm_line.barrier IS NOT NULL) OR (planet_osm_line.bicycle IS NOT NULL) OR (planet_osm_line.bridge IS NOT NULL) OR (planet_osm_line.construction IS NOT NULL) OR (planet_osm_line.covered IS NOT NULL) OR (planet_osm_line.cutting IS NOT NULL) OR (planet_osm_line.disused IS NOT NULL) OR (planet_osm_line.embankment IS NOT NULL) OR (planet_osm_line.foot IS NOT NULL) OR (planet_osm_line.highway IS NOT NULL) OR (planet_osm_line.historic IS NOT NULL) OR (planet_osm_line.horse IS NOT NULL) OR (planet_osm_line.intermittent IS NOT NULL) OR (planet_osm_line.junction IS NOT NULL) OR (planet_osm_line.landuse IS NOT NULL) OR (planet_osm_line.leisure IS NOT NULL) OR (planet_osm_line.man_made IS NOT NULL) OR (planet_osm_line."natural" IS NOT NULL) OR (planet_osm_line.oneway IS NOT NULL) OR (planet_osm_line.public_transport IS NOT NULL) OR (planet_osm_line.railway IS NOT NULL) OR (planet_osm_line.route IS NOT NULL) OR (planet_osm_line.surface IS NOT NULL) OR (planet_osm_line.toll IS NOT NULL) OR (planet_osm_line.tourism IS NOT NULL) OR (planet_osm_line.tunnel IS NOT NULL) OR (planet_osm_line.waterway IS NOT NULL))
  WITH NO DATA;


CREATE MATERIALIZED VIEW public.points_information AS
 SELECT planet_osm_point.osm_id,
    planet_osm_point.access,
    planet_osm_point.aeroway,
    planet_osm_point.amenity,
    planet_osm_point.barrier,
    planet_osm_point.bicycle,
    planet_osm_point.building,
    planet_osm_point.covered,
    planet_osm_point.foot,
    planet_osm_point.highway,
    planet_osm_point.historic,
    planet_osm_point.horse,
    planet_osm_point.intermittent,
    planet_osm_point.junction,
    planet_osm_point.landuse,
    planet_osm_point.leisure,
    planet_osm_point.man_made,
    planet_osm_point.motorcar,
    planet_osm_point."natural",
    planet_osm_point.public_transport,
    planet_osm_point.railway,
    planet_osm_point.sport,
    planet_osm_point.surface,
    planet_osm_point.tourism,
    planet_osm_point.tunnel,
    planet_osm_point.water,
    planet_osm_point.waterway,
    planet_osm_point.z_order,
    planet_osm_point.way
   FROM public.planet_osm_point
  WHERE ((planet_osm_point.access IS NOT NULL) OR (planet_osm_point.aeroway IS NOT NULL) OR (planet_osm_point.amenity = ANY (ARRAY['bicycle_parking'::text, 'biergarten'::text, 'bus_station'::text, 'charging_station'::text, 'community garden'::text, 'clock'::text, 'Condominium complex'::text, 'coworking_space'::text, 'drainage'::text, 'Drainage'::text, 'drinking_water'::text, 'Flag'::text, 'fire_station'::text, 'fountain'::text, 'fuel'::text, 'grave_yard'::text, 'kindergarten'::text, 'letter_box'::text, 'loading_dock'::text, 'motorcycle_parking'::text, 'parking'::text, 'parking_space'::text, 'police'::text, 'post_box'::text, 'post_office'::text, 'prison'::text, 'public_building'::text, 'public_hall'::text, 'ranger_station'::text, 'recycling'::text, 'sanitary_dump_station'::text, 'shower'::text, 'sporting goods'::text, 'swimming_pool'::text, 'taxi'::text, 'telephone'::text, 'toilets'::text, 'townhall'::text, 'trailer park'::text, 'trailer_park'::text, 'waste_basket'::text, 'waste_disposal'::text, 'whirlpool'::text])) OR (planet_osm_point.barrier IS NOT NULL) OR (planet_osm_point.bicycle IS NOT NULL) OR (planet_osm_point.building IS NOT NULL) OR (planet_osm_point.covered IS NOT NULL) OR (planet_osm_point.foot IS NOT NULL) OR (planet_osm_point.highway IS NOT NULL) OR (planet_osm_point.historic IS NOT NULL) OR (planet_osm_point.horse IS NOT NULL) OR (planet_osm_point.intermittent IS NOT NULL) OR (planet_osm_point.junction IS NOT NULL) OR (planet_osm_point.landuse IS NOT NULL) OR (planet_osm_point.leisure IS NOT NULL) OR (planet_osm_point.man_made IS NOT NULL) OR (planet_osm_point.motorcar IS NOT NULL) OR (planet_osm_point."natural" IS NOT NULL) OR (planet_osm_point.public_transport IS NOT NULL) OR (planet_osm_point.railway IS NOT NULL) OR (planet_osm_point.sport IS NOT NULL) OR (planet_osm_point.surface IS NOT NULL) OR (planet_osm_point.tourism = ANY (ARRAY['park'::text, 'picnic_site'::text, 'camp_pitc'::text, 'theme_park'::text, 'viewpoint'::text])) OR (planet_osm_point.tunnel IS NOT NULL) OR (planet_osm_point.water IS NOT NULL) OR (planet_osm_point.waterway IS NOT NULL))
  WITH NO DATA;



CREATE MATERIALIZED VIEW public.pois_information AS
 SELECT poi.id,
    poi.category
   FROM public.poi
  WITH NO DATA;




CREATE MATERIALIZED VIEW public.pois_lines_information AS
 SELECT poi.id,
    lines_information.osm_id,
    lines_information.access,
    lines_information.aerialway,
    lines_information.aeroway,
    lines_information.barrier,
    lines_information.bicycle,
    lines_information.bridge,
    lines_information.construction,
    lines_information.covered,
    lines_information.cutting,
    lines_information.disused,
    lines_information.embankment,
    lines_information.foot,
    lines_information.highway,
    lines_information.historic,
    lines_information.horse,
    lines_information.intermittent,
    lines_information.junction,
    lines_information.landuse,
    lines_information.leisure,
    lines_information.man_made,
    lines_information."natural",
    lines_information.oneway,
    lines_information.public_transport,
    lines_information.railway,
    lines_information.route,
    lines_information.surface,
    lines_information.toll,
    lines_information.tourism,
    lines_information.tunnel,
    lines_information.waterway,
    public.st_length(public.st_transform(public.st_intersection(poi.context, lines_information.way), 3857)) AS length,
    public.st_distancesphere(poi.geom, public.st_intersection(poi.context, lines_information.way)) AS distance_m
   FROM public.poi,
    public.lines_information
  WHERE (public.st_intersects(poi.context, lines_information.way) = true)
  WITH NO DATA;


CREATE MATERIALIZED VIEW public.pois_points_information AS
 SELECT poi.id,
    points_information.osm_id,
    points_information.access,
    points_information.aeroway,
    points_information.amenity,
    points_information.barrier,
    points_information.bicycle,
    points_information.building,
    points_information.covered,
    points_information.foot,
    points_information.highway,
    points_information.historic,
    points_information.horse,
    points_information.intermittent,
    points_information.junction,
    points_information.landuse,
    points_information.leisure,
    points_information.man_made,
    points_information.motorcar,
    points_information."natural",
    points_information.public_transport,
    points_information.railway,
    points_information.sport,
    points_information.surface,
    points_information.tourism,
    points_information.tunnel,
    points_information.water,
    points_information.waterway,
    public.st_distancesphere(poi.geom, public.st_intersection(poi.context, points_information.way)) AS distance_m
   FROM public.poi,
    public.points_information
  WHERE (public.st_intersects(poi.context, points_information.way) = true)
  WITH NO DATA;



CREATE MATERIALIZED VIEW public.polygons_building_information AS
 SELECT planet_osm_polygon.osm_id,
    planet_osm_polygon.building,
    (planet_osm_polygon.way_area * ((0.3048 ^ (2)::numeric))::double precision) AS way_area_m,
    planet_osm_polygon.way
   FROM public.planet_osm_polygon
  WHERE ((planet_osm_polygon.building = 'yes'::text) AND (planet_osm_polygon.access IS NULL) AND (planet_osm_polygon.aeroway IS NULL) AND (planet_osm_polygon.amenity IS NULL) AND (planet_osm_polygon.barrier IS NULL) AND (planet_osm_polygon.bicycle IS NULL) AND (planet_osm_polygon.bridge IS NULL) AND (planet_osm_polygon.construction IS NULL) AND (planet_osm_polygon.covered IS NULL) AND (planet_osm_polygon.foot IS NULL) AND (planet_osm_polygon.highway IS NULL) AND (planet_osm_polygon.historic IS NULL) AND (planet_osm_polygon.horse IS NULL) AND (planet_osm_polygon.intermittent IS NULL) AND (planet_osm_polygon.landuse IS NULL) AND (planet_osm_polygon.leisure IS NULL) AND (planet_osm_polygon.man_made IS NULL) AND (planet_osm_polygon."natural" IS NULL) AND (planet_osm_polygon.oneway IS NULL) AND (planet_osm_polygon.public_transport IS NULL) AND (planet_osm_polygon.railway IS NULL) AND (planet_osm_polygon.service IS NULL) AND (planet_osm_polygon.sport IS NULL) AND (planet_osm_polygon.surface IS NULL) AND (planet_osm_polygon.tourism IS NULL) AND (planet_osm_polygon.water IS NULL) AND (planet_osm_polygon.waterway IS NULL) AND (planet_osm_polygon.wetland IS NULL))
  WITH NO DATA;




CREATE MATERIALIZED VIEW public.pois_polygons_building_information AS
 SELECT poi.id,
    count(polygons_building_information.osm_id) AS building_count,
    avg(public.st_distancesphere(poi.geom, public.st_intersection(poi.context, polygons_building_information.way))) AS building_avg_distance,
    sum((public.st_area(public.st_transform(public.st_intersection(poi.context, polygons_building_information.way), 3857)) * ((0.3048 ^ (2)::numeric))::double precision)) AS area_total
   FROM public.poi,
    public.polygons_building_information
  WHERE (public.st_intersects(poi.context, polygons_building_information.way) = true)
  GROUP BY poi.id
  WITH NO DATA;


CREATE MATERIALIZED VIEW public.polygons_information AS
 SELECT planet_osm_polygon.osm_id,
    planet_osm_polygon.access,
    planet_osm_polygon.aeroway,
    planet_osm_polygon.amenity,
    planet_osm_polygon.barrier,
    planet_osm_polygon.bicycle,
    planet_osm_polygon.boundary,
    planet_osm_polygon.bridge,
    planet_osm_polygon.building,
    planet_osm_polygon.construction,
    planet_osm_polygon.covered,
    planet_osm_polygon.foot,
    planet_osm_polygon.highway,
    planet_osm_polygon.historic,
    planet_osm_polygon.horse,
    planet_osm_polygon.intermittent,
    planet_osm_polygon.landuse,
    planet_osm_polygon.leisure,
    planet_osm_polygon.man_made,
    planet_osm_polygon."natural",
    planet_osm_polygon.oneway,
    planet_osm_polygon.public_transport,
    planet_osm_polygon.railway,
    planet_osm_polygon.service,
    planet_osm_polygon.sport,
    planet_osm_polygon.surface,
    planet_osm_polygon.tourism,
    planet_osm_polygon.water,
    planet_osm_polygon.waterway,
    planet_osm_polygon.wetland,
    planet_osm_polygon.z_order,
    (planet_osm_polygon.way_area * ((0.3048 ^ (2)::numeric))::double precision) AS way_area_m,
    planet_osm_polygon.way
   FROM public.planet_osm_polygon
  WHERE ((planet_osm_polygon.access IS NOT NULL) OR (planet_osm_polygon.aeroway IS NOT NULL) OR (planet_osm_polygon.amenity = ANY (ARRAY['bicycle_parking'::text, 'biergarten'::text, 'bus_station'::text, 'charging_station'::text, 'community garden'::text, 'clock'::text, 'Condominium complex'::text, 'coworking_space'::text, 'drainage'::text, 'Drainage'::text, 'drinking_water'::text, 'Flag'::text, 'fire_station'::text, 'fountain'::text, 'fuel'::text, 'grave_yard'::text, 'kindergarten'::text, 'letter_box'::text, 'loading_dock'::text, 'motorcycle_parking'::text, 'parking'::text, 'parking_space'::text, 'police'::text, 'post_box'::text, 'post_office'::text, 'prison'::text, 'public_building'::text, 'public_hall'::text, 'ranger_station'::text, 'recycling'::text, 'sanitary_dump_station'::text, 'shower'::text, 'sporting goods'::text, 'swimming_pool'::text, 'taxi'::text, 'telephone'::text, 'toilets'::text, 'townhall'::text, 'trailer park'::text, 'trailer_park'::text, 'waste_basket'::text, 'waste_disposal'::text, 'whirlpool'::text])) OR (planet_osm_polygon.barrier IS NOT NULL) OR (planet_osm_polygon.bicycle IS NOT NULL) OR (planet_osm_polygon.boundary IS NOT NULL) OR (planet_osm_polygon.bridge IS NOT NULL) OR ((planet_osm_polygon.building IS NOT NULL) AND (planet_osm_polygon.building <> 'yes'::text)) OR (planet_osm_polygon.construction IS NOT NULL) OR (planet_osm_polygon.covered IS NOT NULL) OR (planet_osm_polygon.foot IS NOT NULL) OR (planet_osm_polygon.highway IS NOT NULL) OR (planet_osm_polygon.historic IS NOT NULL) OR (planet_osm_polygon.horse IS NOT NULL) OR (planet_osm_polygon.intermittent IS NOT NULL) OR (planet_osm_polygon.landuse IS NOT NULL) OR (planet_osm_polygon.leisure IS NOT NULL) OR (planet_osm_polygon.man_made IS NOT NULL) OR (planet_osm_polygon."natural" IS NOT NULL) OR (planet_osm_polygon.oneway IS NOT NULL) OR (planet_osm_polygon.public_transport IS NOT NULL) OR (planet_osm_polygon.railway IS NOT NULL) OR (planet_osm_polygon.service IS NOT NULL) OR (planet_osm_polygon.sport IS NOT NULL) OR (planet_osm_polygon.surface IS NOT NULL) OR (planet_osm_polygon.tourism = ANY (ARRAY['theme_park'::text, 'viewpoint'::text, 'camp_site'::text])) OR (planet_osm_polygon.water IS NOT NULL) OR (planet_osm_polygon.waterway IS NOT NULL) OR (planet_osm_polygon.wetland IS NOT NULL))
  WITH NO DATA;



CREATE MATERIALIZED VIEW public.pois_polygons_information AS
 SELECT poi.id,
    polygons_information.osm_id,
    polygons_information.access,
    polygons_information.aeroway,
    polygons_information.amenity,
    polygons_information.barrier,
    polygons_information.bicycle,
    polygons_information.bridge,
    polygons_information.building,
    polygons_information.construction,
    polygons_information.covered,
    polygons_information.foot,
    polygons_information.highway,
    polygons_information.historic,
    polygons_information.horse,
    polygons_information.intermittent,
    polygons_information.landuse,
    polygons_information.leisure,
    polygons_information.man_made,
    polygons_information."natural",
    polygons_information.oneway,
    polygons_information.public_transport,
    polygons_information.railway,
    polygons_information.sport,
    polygons_information.surface,
    polygons_information.water,
    polygons_information.waterway,
    polygons_information.wetland,
    polygons_information.way_area_m,
    public.st_distancesphere(poi.geom, public.st_intersection(poi.context, polygons_information.way)) AS distance_m
   FROM public.poi,
    public.polygons_information
  WHERE (public.st_intersects(poi.context, polygons_information.way) = true)
  WITH NO DATA;


CREATE MATERIALIZED VIEW public.roads_information AS
 SELECT planet_osm_roads.osm_id,
    planet_osm_roads.access,
    planet_osm_roads.bicycle,
    planet_osm_roads.bridge,
    planet_osm_roads.covered,
    planet_osm_roads.cutting,
    planet_osm_roads.embankment,
    planet_osm_roads.foot,
    planet_osm_roads.highway,
    planet_osm_roads.historic,
    planet_osm_roads.horse,
    planet_osm_roads.junction,
    planet_osm_roads.oneway,
    planet_osm_roads.public_transport,
    planet_osm_roads.railway,
    planet_osm_roads.route,
    planet_osm_roads.service,
    planet_osm_roads.surface,
    planet_osm_roads.toll,
    planet_osm_roads.tunnel,
    planet_osm_roads.waterway,
    planet_osm_roads.z_order,
    planet_osm_roads.way
   FROM public.planet_osm_roads
  WHERE ((planet_osm_roads.access IS NOT NULL) OR (planet_osm_roads.bicycle IS NOT NULL) OR (planet_osm_roads.bridge IS NOT NULL) OR (planet_osm_roads.covered IS NOT NULL) OR (planet_osm_roads.cutting IS NOT NULL) OR (planet_osm_roads.embankment IS NOT NULL) OR (planet_osm_roads.foot IS NOT NULL) OR (planet_osm_roads.highway IS NOT NULL) OR (planet_osm_roads.historic IS NOT NULL) OR (planet_osm_roads.horse IS NOT NULL) OR (planet_osm_roads.junction IS NOT NULL) OR (planet_osm_roads.oneway IS NOT NULL) OR (planet_osm_roads.public_transport IS NOT NULL) OR (planet_osm_roads.railway IS NOT NULL) OR (planet_osm_roads.route IS NOT NULL) OR (planet_osm_roads.service = ANY (ARRAY['alley'::text, 'parking_aisle'::text, 'emergency_access'::text, 'driveway'::text])) OR (planet_osm_roads.surface IS NOT NULL) OR (planet_osm_roads.toll IS NOT NULL) OR (planet_osm_roads.tunnel IS NOT NULL) OR (planet_osm_roads.waterway IS NOT NULL))
  WITH NO DATA;



CREATE MATERIALIZED VIEW public.pois_roads_information AS
 SELECT poi.id,
    roads_information.osm_id,
    roads_information.access,
    roads_information.bicycle,
    roads_information.bridge,
    roads_information.covered,
    roads_information.cutting,
    roads_information.embankment,
    roads_information.foot,
    roads_information.highway,
    roads_information.historic,
    roads_information.horse,
    roads_information.junction,
    roads_information.oneway,
    roads_information.public_transport,
    roads_information.railway,
    roads_information.route,
    roads_information.service,
    roads_information.surface,
    roads_information.toll,
    roads_information.tunnel,
    roads_information.waterway,
    public.st_length(public.st_transform(public.st_intersection(poi.context, roads_information.way), 3857)) AS length,
    public.st_distancesphere(poi.geom, public.st_intersection(poi.context, roads_information.way)) AS distance_m
   FROM public.poi,
    public.roads_information
  WHERE (public.st_intersects(poi.context, roads_information.way) = true)
  WITH NO DATA;