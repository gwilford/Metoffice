#!/bin/bash
rrdtool create weather.rrd --step 3600 -b 20141123 \
DS:Wind_Speed:GAUGE:86400:0:100 \
DS:Temperature:GAUGE:86400:-30:50 \
DS:Dew_Point:GAUGE:86400:-30:50 \
DS:Humidity:GAUGE:86400:0:100 \
RRA:AVERAGE:0.5:1:8760 \
RRA:MIN:0.5:24:1825 \
RRA:MAX:0.5:24:1825 \
RRA:AVERAGE:0.5:24:1825
