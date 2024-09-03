#!/bin/bash

bspc rule -a \* -o desktop=9 follow=on && alacritty -e btop
