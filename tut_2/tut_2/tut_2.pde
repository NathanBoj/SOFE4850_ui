class Car {
  
  int carColor;
  int positionX;
  int positionY;
  int direction;

  Car(int d){
    
    direction = d;
    carColor = color(random(255),random(255),random(255));
    
    if(direction==0){
      //left lane
      positionY = 0;
      positionX = int(random(50,85));
      
    }else{
      //right lane
      positionY = 200;
      positionX = int(random(105,135));
    }
  }
  
  void draw(){
    
    fill(carColor);
    rect(positionX, positionY, 15, 25);
    
    if(direction==0){
      //left lane
      positionY = positionY + 1;
        if(positionY == 200) {
          positionY = 0;
          positionX = int(random(50,85));
          carColor = color(random(255),random(255),random(255));
        }
    }else{
      //right lane
      positionY = positionY - 1;
        if(positionY == 0) {
          positionY = 200;
          positionX = int(random(105,135));
          carColor = color(random(255),random(255),random(255));
        }
    }
  }
}

Car[] myCars;
int num = 2;

void setup(){

  size(200, 200);
  background(200);
  myCars = new Car[num];
  for(int i = 0; i<num; i++){
    myCars[i] = new Car(i); //first car is in left lane, then second is right lane  
  }
}
      
void draw(){
    
    //road
    fill(100);
    rect(50, 0, 100, 200);
    
    //yellow middle line
    fill(color(255, 204, 0));
    rect(95, 0, 10, 200);
    
    for(int i = 0; i<num; i++){
      myCars[i].draw(); 
      }
    saveFrame(); //saves alot of screenshots
}
      
