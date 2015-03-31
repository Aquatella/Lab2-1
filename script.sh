#!/bin/bash 
while true 
do
wget http://www.gismeteo.by/weather-minsk-4248/ -O index.html.1 2> null 
cat index.html.1 | grep "dd class='value m_temp c'" | sed 's/</ /g' | sed 's/>/ /g' | awk '{print $5}'
sleep 5s
done
