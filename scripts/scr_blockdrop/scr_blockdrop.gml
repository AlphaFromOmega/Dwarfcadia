/// @description scr_blockdrop(dropUnique,x,y,min,max,item)
/// @param dropUnique
/// @param x
/// @param y
/// @param min
/// @param max
/// @param item
function scr_blockdrop() {
	var dropUnique = argument[0]
	var dropx = argument[1]
	var dropy = argument[2]
	var minDrop = argument[3]
	var maxDrop = argument[4]
	var i = 0
	var j = 0


	for (i=1;i <= (objUnique); i += 1){
	    dropItem[i] = argument[i+4]
	}

	for (j=1;j <= dropUnique;j+=1){
	    repeat(round(random(maxDrop-minDrop))){
	        randomize();
	        inst = instance_create(dropx+(round(random(16)-(round(random(17)-1)))),dropy+(round(random(16)-(round(random(17))-1))),obj_item)
	        entity_item.inst = dropItem[j]
	    }
	}



}
