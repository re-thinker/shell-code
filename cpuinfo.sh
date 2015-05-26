#! /bin/sh

#查看物理cpu个数
var=`grep 'physical id' /proc/cpuinfo | sort -u | wc -l | awk '{print $1}'`
echo 'cpu个数': $var

#查看核心数量
var=`grep 'core id' /proc/cpuinfo | sort -u | wc -l | awk '{print $1}'`
echo '核心数量':$var

# 查看线程数
var=`grep 'processor' /proc/cpuinfo | sort -u | wc -l | awk '{print $1}'`
echo '线程数':$var

# 查看cpu型号
var=`dmidecode -s processor-version`
echo 'cpu型号':$var


