#!/bin/bash

compton \
  -f \
  --daemon \
  --vsync opengl-mswc --sw-opti --backend glx --glx-no-stencil --glx-no-rebind-pixmap --glx-swap-method 0 \
  --use-ewmh-active-win --unredir-if-possible --detect-transient --detect-client-leader \
  --shadow --shadow-radius 5 --shadow-opacity 0.25 --shadow-offset-x 0 --shadow-offset-y 0 \
  --shadow-exclude 'name ?= "bar" || name ?= "dunst"' \
  --opacity-rule '90:class_g = "URxvt"' \
  --blur-background --blur-background-fixed \
  --blur-kern="7x7box"
