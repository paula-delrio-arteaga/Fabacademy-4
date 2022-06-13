import processing.serial.*;
String lecture = "0";
int val = 0;
int antval;
int hasval= 0;
int counter=0;
int punto=0;
int times = 5;

Serial myPort;
Serial myPort1;
int resolution = 10; // how many points in the circle
float rad = 150;
float x = 1;
float y = 1;
//float prevX;
//float prevY;

float t = 0; // time passed
float tChange = .02; // how quick time flies

float nVal; // noise value
float nInt = 1; // noise intensity
float nAmp = 1; // noise amplitude

int width = 900;
int height = 900;

float valor[];
int e = 0;
float[] xa = new float[resolution*times];
float[] ya = new float[resolution*times];

boolean filled = false;
boolean sended = true;
boolean init = false;
boolean started = false;

int treshold = 50;
int diff = 0;

void diff (int num1, int num2) {
  if (num1 > num2) {
    diff = num1 - num2;
  } else {
    diff = num2 - num1;
  }
}


void setup() {
  size(900, 900);
  myPort = new Serial(this, "//dev/tty.usbmodem145401", 9600);
  myPort1 = new Serial(this, "/dev/tty.wchusbserial14530", 115200);
  noiseDetail(8);
  background(0);
}

void draw() {
  if (myPort.available() > 0) {
    lecture = myPort.readStringUntil('\n');
    //println(lecture);
    if (lecture != null) {
      if (hasval == 0) {
        lecture = trim(lecture);
        val = int(lecture);
        hasval = 1;
      } else {
        antval = val;
        lecture = trim(lecture);
        val = int(lecture);
      }
    }



    translate(width/2, height/2);
    if (filled) {
      noStroke();
      fill(0);
    } else {
      noFill();
      stroke(255);
      strokeWeight(3);
    }
    nInt = map(val/2, 0, width, 0.1, 30); // map mouseX to noise intensity
    nAmp = map(val, 0, height, 0.0, 1.0); // map mouseY to noise amplitude


    diff(antval, val);

    if (( counter<5) && (diff >= treshold)) {

      beginShape();
      for (float a=0; a<=TWO_PI; a+=TWO_PI/resolution) {



        nVal = map(noise( cos(a)*nInt+1, sin(a)*nInt+1, t ), 0.0, 1.0, nAmp, 1.0); // map noise value to match the amplitude //5.76 //2.34

        //Float nnVal = nVal;

        //if (nnVal != null){
        //valor[e] = nVal;
        //}

        //textSize(128);
        //fill(0, 408, 612);
        //text(valor[], 20, 300);



        x = cos(a)*rad *nVal;
        y = sin(a)*rad *nVal;
        
        x = constrain(x, -width/4, width/4);
        y = constrain(y, -height/4, height/4);

        xa[e] = x;
        ya[e] = y;
        e++;
        //    x = map(a, 0,TWO_PI, 0,width);
        //    y = sin(a)*rad *nVal +height/2;

        //    vertex(prevX, prevY);
        vertex(x, y);

        //vertex(x[a],y[a]);

        //    line(x,y,x,height);

        //    prevX = x;
        //    prevY = y;
      }
      endShape(CLOSE);
      //e = 0;
      counter++;
      sended = true;
    }
    
    if (myPort1.available() > 0) {
      lecture = myPort1.readStringUntil('\n');
      println(lecture);
      if (init == false){
        init = true;
      }
      else if (init == true && started == false && sended == true){
        println("Let's go");
        myPort1.write("G0 X0 Y0" + "\n");
        print("G19 \n");
        started = true;
      }
      else if (started){
        myPort1.write("G0 X" + xa[punto] + " Y" + ya[punto] + "\n");
        print("G0 X" + xa[punto] + " Y" + ya[punto] + "\n");        
        ++punto;
        if(punto > xa.length) {
          punto = 0;
          started = false;
          sended = false;
        }
      }
    }
    t += tChange;
  }
}
