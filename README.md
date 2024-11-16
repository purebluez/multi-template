# GT5u Template Multiblock

a barebones / minimal multiblock file for testing bugs and features

made it for myself but i have zero cares for what you use it for

# newRepo.sh

i also included a script to clone 5u and move the multi into the right location
it probably only works on linux and i dont use windows so if i made a .bat i wouldnt be able to test it

--- 

**To Register:**


Declare it in gregtech/api/enums/ItemList.java

```Template_Multiblock,```

--- 
Give it an ID in gregtech/api/enums/MetaTileEntityIDs.java

```TEMPLATE_MULTIBLOCK_CONTROLLER(3737),```

if id 3737 is ever used just change it to something else :p 

--- 
Add it to the MTE loaders at gregtech/loaders/preload/LoaderMetaTileEntities.java
```ItemList.Template_Multiblock.set(
                new MTETemplateMultiblock(
                        TEMPLATE_MULTIBLOCK_CONTROLLER.ID,
                        "multimachine.test",
                        "Template Multiblock").getStackForm(1L));```
