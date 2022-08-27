/// @description scr_blockProperties
function scr_blockProperties() {
	if blockid == item.none {
	    instance_destroy();
	}
	if blockid == item.stone {
	    blockmaxseconds = 1;
	    dropUnique = 1;
	    minDrop = 1;
	    maxDrop = 1;
	    dropItem[0] =item.cobblestone;
	    j = 1;
	}
	if blockid == item.cobblestone {
	    blockmaxseconds = 1.1;
	    dropUnique = 1;
	    minDrop = 1;
	    maxDrop = 1;
	    dropItem[0] =item.cobblestone;
	    j = 1;
	}
	if blockid == item.dirt {
	    blockmaxseconds = 0.5;
	    dropUnique = 1;
	    minDrop = 1;
	    maxDrop = 1;
	    dropItem[0] = item.dirt;
	    j = 1;
	}
	if blockid == item.basalt {
	    blockmaxseconds = 2;
	    dropUnique = 1;
	    minDrop = 1;
	    maxDrop = 1;
	    dropItem[0] = item.basalt;
	    j = 1;
	}
	if blockid == item.wood {
	    blockmaxseconds = 0.75;
	    dropUnique = 1;
	    minDrop = 1;
	    maxDrop = 1;
	    dropItem[0] = item.wood;
	    j = 1;
	}
	if blockid == item.ironOre {
	    blockmaxseconds = 1.25;
	    dropUnique = 1;
	    minDrop = 1;
	    maxDrop = 3;
	    dropItem[0] = item.ironOre;
	    j = 1;
	}
	if blockid == item.goldOre {
	    blockmaxseconds = 1.5;
	    dropUnique = 1;
	    minDrop = 1;
	    maxDrop = 3;
	    dropItem[0] = item.goldOre;
	    j = 1;
	}




}
