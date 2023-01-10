pactl load-module module-null-sink sink_name=Virtual-Speaker sink_properties=device.description=Virtual-Speaker
pactl load-module module-remap-source source_name=Remap-Source master=Virtual-Speaker.monitor

