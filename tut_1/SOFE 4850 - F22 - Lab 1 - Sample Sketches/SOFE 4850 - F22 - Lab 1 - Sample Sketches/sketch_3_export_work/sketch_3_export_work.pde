import java.util.Calendar;
void keyPressed() {
 println("key pressed by user: " + keyCode);
 if (key == 's' || key == 'S') {
   saveFrame(timestamp()+".png");
 }
}
String timestamp() {
 Calendar now = Calendar.getInstance();
 return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

void setup() {
   size(400, 400);
   stroke(255);
 }
  
 void draw() {
   line(150, 25, mouseX, mouseY);
   // saveFrame("output-####.png");
 }
 
 void mousePressed() {
   background(192, 64, 0);
 }
 
 
 //======================================================
 //option 2: save as pdf
import processing.pdf.*;
beginRecord(PDF, timestamp()+”.pdf”);
endRecord();
