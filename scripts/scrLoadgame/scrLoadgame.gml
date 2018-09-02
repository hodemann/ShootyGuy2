if (file_exists(SAVEFILE))
{
	ini_open(SAVEFILE)
	LoadedRoom = ini_read_real("Progress","room", rLvl1);
	scrSlideTransition(TRANS_MODE.GOTO, LoadedRoom);
	ini_close();
	
}
else
{
	//do nothing
}