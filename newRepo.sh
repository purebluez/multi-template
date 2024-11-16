#!/bin/bash
# Clones gt5u and my multiblock template and then moves the template into the correct location
# would b too much effort to add registering too

git clone https://github.com/GTNewHorizons/GT5-Unofficial GT5-Bugtesting
wget https://raw.githubusercontent.com/purebluez/multi-template/main/MTETemplateMultiblock.java
mv MTETemplateMultiblock.java GT5-Bugtesting/src/main/java/gregtech/common/tileentities/machines/multi && echo Done!
