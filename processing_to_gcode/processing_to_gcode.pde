import processing.serial.*;


void setup() {
  ArrayList<String> gcode;

  gcode = new ArrayList<String>();
 
  gCommand("G1 X3 Y20");
  gCommand("G1 X20 Y2 Z1");
  gExport(gcode);
}

void gCommand(String command) {

 gcode.add(command);

}

void gExport() {
  //Create a unique name for the exported file
  String name_save = "gcode_"+day()+""+hour()+""+minute()+"_"+second()+".g";
  
  //Convert from ArrayList to array (required by saveString function)
  String[] arr_gcode = gcode.toArray(new String[gcode.size()]);
  
  // Export GCODE
  saveStrings(name_save, arr_t_gcode);
}
