#!/bin/sh

# Dutch
fx -q organs-base.sparql -values filepath="../organs-dataset/output/kg/kg_base.json" > kg/organ-nl-base.ttl
fx -q organs-projects.sparql -values filepath="../organs-dataset/output/kg/kg_projects.json" > kg/organ-nl-projects.ttl
rm kg/organ-nl-dispositions.ttl
cat organids-nl.txt | xargs -I oid fx -q organs-dispositions.sparql -values organ="oid" -values filepath="../organs-dataset/output/kg/kg_dispositions.json" >> kg/organ-nl-dispositions.ttl
rm kg/organ-nl-dispositions-cstops.ttl
cat organids-nl.txt | xargs -I oid fx -q organs-dispositions_cstops.sparql -values organ="oid" -values filepath="../organs-dataset/output/kg/kg_dispositions.json" >> kg/organ-nl-dispositions-cstops.ttl
fx -q organs-pictures.sparql -values filepath="../organs-dataset/output/kg/kg_pictures.json" > kg/organ-nl-pictures.ttl
fx -q organs-disambiguated-names-builders.sparql -values filepath="../organs-dataset/output/kg/kg_disambiguated_builders.json" > kg/organ-nl-disambiguated-names-builders.ttl
fx -q organs-disambiguated-names-divisiontypes.sparql -values filepath="../organs-dataset/output/kg/kg_disambiguated_divisiontypes.json" > kg/organ-nl-disambiguated-names-divisiontypes.ttl
fx -q organs-disambiguated-names-stops.sparql -values filepath="../organs-dataset/output/kg/kg_disambiguated_stops.json" > kg/organ-nl-disambiguated-names-stops.ttl


# French
fx -q organs-base.sparql -values filepath="../organs-dataset/French/output/kg/kg_fr_base.json" > kg/organ-fr-base.ttl
fx -q organs-projects.sparql -values filepath="../organs-dataset/French/output/kg/kg_fr_projects.json" > kg/organ-fr-projects.ttl
fx -q organs-pictures.sparql -values filepath="../organs-dataset/French/output/kg/kg_fr_pictures.json" > kg/organ-fr-pictures.ttl

# Italian
fx -q organs-base.sparql -values filepath="../organs-dataset/Italian/output/kg/kg_it_base.json" > kg/organ-it-base.ttl

# German
fx -q organs-base.sparql -values filepath="../organs-dataset/German_OrganIndex/output/kg/kg_de_base.json" > kg/organ-de-base.ttl
fx -q organs-pictures.sparql -values filepath="../organs-dataset/German_OrganIndex/output/kg/kg_de_pictures.json" > kg/organ-de-pictures.ttl
fx -q organs-projects.sparql -values filepath="../organs-dataset/German_OrganIndex/output/kg/kg_de_projects.json" > kg/organ-de-projects.ttl
