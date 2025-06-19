docker-compose up -d mysql oai-amf oai-smf oai-upf oai-ext-dn oai-flexric
sleep 10
docker-compose up -d oai-gnb1 oai-gnb2 oai-gnb3
sleep 7
docker logs rfsim5g-oai-amf | tail -15
echo "-------------------------------------------"
docker logs oai-flexric | tail -15
sleep 10
docker-compose up -d oai-nr-ue1 oai-nr-ue2 oai-nr-ue3 oai-nr-ue4
sleep 7
docker logs rfsim5g-oai-amf | tail -15
docker-compose up -d oai-nr-ue5 oai-nr-ue6 oai-nr-ue7 oai-nr-ue8
sleep 7
docker logs rfsim5g-oai-amf | tail -20
docker-compose up -d oai-nr-ue9 oai-nr-ue10 oai-nr-ue11 oai-nr-ue12
sleep 7
docker logs rfsim5g-oai-amf | tail -20
