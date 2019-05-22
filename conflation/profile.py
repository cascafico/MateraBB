# aggiunge tag source=MiseGas
add_source = False
source = 'Matera Opendata'

# do not add unique reference IDs to OSM?

# aggiunge tag ref:<dataset_id>=<id del MISE>
# True -> relying only on geometric matching every time
no_dataset_id = True
dataset_id = 'elenco-strutture-ricettive-nel-comune-di-matera-dal-2015'

#duplicate_distance = 20

# Overpass query to use when searching OSM for data
#overpass_timeout = 120 default
overpass_timeout = 300
#query = [('amenity', 'fuel'),('waterway', 'fuel')] both conditions
#query = [('amenity', 'fuel')],[('waterway', 'fuel')]  or condition
#query = [('amenity', 'fuel'),('disused:amenity','fuel')]  namespace disused and abandoned are implicit
#query = [('amenity', 'fuel'),('ref:mise','.*')] 
#query = [('amenity', 'fuel')] 
query = [('tourism', 'guest_house')],[('tourism', 'chalet')]

# parameter --osm will use indipendently generated queries, ie:
# http://overpass-turbo.eu/s/JeY
# use wget -O manual-query.osm <http_addr obtained exporting compact query>
# alternatively, run query and export raw data (export.osm)

bbox = True

# tags to replace on matched OSM objects
master_tags = ('name', 'operator')

delete_unmatched = False
tag_unmatched = { 'fixme':'BB might be out of business, please check' }


# max distance to search for a match in meters
#max_distance = 50
max_distance = 20
