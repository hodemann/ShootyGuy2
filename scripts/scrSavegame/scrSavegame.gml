/// @arg

//Overwrite old ave
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);



//Create new save

var file;
file = ini_open(SAVEFILE);
var SavedRoom = room;
ini_write_real("Progress", "room", SavedRoom);
//ini_write_real("Ingame saving", "",
ini_close();