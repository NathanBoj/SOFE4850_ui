/*
  University: Ontario Tech University
  Course: User Interfaces
  Tutorial: Tutorial 3
*/

// Task 1: Apply color to all the shapes, Shapes are present in Shapes file. Change the car color to your liking.
// Task2: Create a class in Shapes file to draw Sun
// Task 2: Write methods to implement keypress event to move sun from left to right. Use partially implemented method keyPressed()
// Task 3: Change color of cloud and sun when sun reaches to the right end
// Task 4: uncomment star method to show starts, when its night

//Global variables declaration
float x = width;
// float y = height/2;
float speed = 5;

float sunX = 0;

Car car = new Car();
Sky sky = new Sky();
Road road = new Road();
Grass grass = new Grass();
Sun sun = new Sun();
Star star = new Star();

void setup() {
  size(1300,700);
 }

//Draw() method will execute the code block in loop.
void draw() {
  sky.displaySky();  //To plot a sky, method implementation is in Shapes file
  sun.displaySun(sunX);
  grass.displayGrass(); //To plot a grass, method implementation is in Shapes file
  road.displayRoad(); // //To plot a road, method implementation is in Shapes file
  car.displayCar(x);
 
  move();
  
  saveFrame(); //saves alot of screenshots
}

void move () {
 x = x - speed; //chaning car position, speed can be controlled by changing speed variable's value
 if(x == -1*(width/2)){ //adding some negative offset so that car will return after some time, you can change it to zero as well.
   x = width; //If car reaches to the end than should start again.
 }
}



// Use this method apply animation for sun and clour color change to switch between day and night
void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
     sunX += 10;
      
      
      // TODO: Use this method to show stars. - just uncomment the next line and it will work.
      
    }
    else if(keyCode == LEFT) {
      sunX -= 10;
      
      //TODO: optional task: once reaches to left most side, again change the cloud color to blue and hide stars.(change star class shapes to PShape and 
      // use its inbuilt setVisible() method to hide stars. checkout this: https://processing.org/reference/PShape_setVisible_.html
    }
  }
}
