#!/bin/sh

bspc rule -a Pavucontrol -o desktop=active state=floating &&
pavucontrol
