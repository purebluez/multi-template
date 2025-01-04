# GT5u Template Multiblock

a barebones / minimal multiblock file for testing bugs and features or making a new multi out of

if code style or code is ever outdated make an issue and i will fix it. a PR would be even better too

# newRepo.sh

i also included a script to clone 5u and move the multi into the right location
it probably only works on linux and i dont use windows so if i made a .bat i wouldnt be able to test it

# To Install:
Download GT5u (https://github.com/GTNewHorizons/GT5-Unofficial/)

Download MTETemplateMultiblock.java ([from in this very repo](https://github.com/purebluez/multi-template/blob/main/MTETemplateMultiblock.java))

Move MTETemplateMultiblock.java into gregtech/common/tileentities/machines/multi

The 3 steps above can also be done with the following commands, ran in order:
```
git clone https://github.com/GTNewHorizons/GT5-Unofficial/
cd GT5-Unofficial/
wget https://raw.githubusercontent.com/purebluez/multi-template/main/MTETemplateMultiblock.java
mv MTETemplateMultiblock.java src/main/java/gregtech/common/tileentities/machines/multi
```

Skip the 3 steps above if you used ``newRepo.sh``
#
Declare it in gregtech/api/enums/ItemList.java

```
Template_Multiblock,
```
#
Give it an ID in gregtech/api/enums/MetaTileEntityIDs.java

```
TEMPLATE_MULTIBLOCK_CONTROLLER(3737),
```

if id 3737 is ever used just change it to something else :p 
#
Add it to the MTE loaders at gregtech/loaders/preload/LoaderMetaTileEntities.java
```
import static gregtech.api.enums.MetaTileEntityIDs.TEMPLATE_MULTIBLOCK_CONTROLLER;
```
```
import gregtech.common.tileentities.machines.multi.MTETemplateMultiblock;
```
```
ItemList.Template_Multiblock.set(
                new MTETemplateMultiblock(
                        TEMPLATE_MULTIBLOCK_CONTROLLER.ID,
                        "multimachine.test",
                        "Template Multiblock").getStackForm(1L));
```
