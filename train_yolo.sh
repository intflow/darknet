#!/bin/bash

echo "Train YoLo Model"
./darknet detector train data/obj.data cfg/yolov4-custom_p_init.cfg yolov4.conv.137
./darknet detector train data/obj.data cfg/yolov4-custom_p.cfg backup/yolov4-custom_p_init_1000.weight -gpu 0,1

