#!/usr/bin/env bash

# fn keys as default
echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
echo 'options hid_apple fnmode=2' | sudo tee /etc/modprobe.d/hid_apple.conf

# mac touchpad
cat <<EOT | sudo tee /etc/X11/xorg.conf.d/10-mtrack.conf
Section "InputClass"
    MatchIsTouchpad "on"
    Identifier      "Touchpads"
    Driver          "mtrack"

    Option "ScrollUpButton" "5"
    Option "ScrollDownButton" "4"
    Option "ScrollLeftButton" "7"
    Option "ScrollRightButton" "6"

    Option "Sensitivity" "0.35"

    Option "IgnoreThumb" "true"
    Option "IgnorePalm" "true"

    Option          "TapButton1" "0"
    Option          "TapButton2" "0"
    Option          "TapButton3" "0"
    Option          "TapButton4" "0"
EndSection
EOT

# fix kbd layout
echo 0 | sudo tee /sys/module/hid_apple/parameters/iso_layout
echo 'options hid_apple iso_layout=0' | sudo tee -a /etc/modprobe.d/hid_apple.conf

cat <<EOT | sudo tee /etc/systemd/system/fix-suspend.service
[Unit]
Description=Fix suspend

[Service]
ExecStart=/bin/bash -c "echo XHC1 >> /proc/acpi/wakeup"

[Install]
WantedBy=multi-user.target
EOT
sudo systemctl enable fix-suspend
sudo systemctl daemon-reload
sudo systemctl start fix-suspend