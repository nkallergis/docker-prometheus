touch snmp.yml
docker run -ti \
  -v $PWD/generator/mibs:/root/.snmp/mibs \
  -v $PWD/generator/generator.yml:/opt/generator.yml:ro \
  -v $PWD/snmp.yml:/opt/snmp.yml \
  snmp-generator generate
