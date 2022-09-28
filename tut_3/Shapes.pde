int highwayStartY = 0;

public class Car{
  
  Window window = null;
  Tires tires = null;
  
  Car(){
    this.window = new Window();
    this.tires = new Tires();
  }
  
  void displayCar(float x) {
    this.displayCarBody(x);
    this.tires.displayFrontTires(x);
    this.tires.displayBackTires(x);
    this.window.displayWindow(x);
    
  }
  
  void displayCarBody(float x){
    
    fill(250, 200, 100);
    rect(x, 180, 250, 150, 30, 30, 0, 0);
    
  }
  
}

public class Tires{
  
  public void displayBackTires(float x){
    fill(0);
    ellipse(x + 10, 315, 40, 40);
    fill(0);
    ellipse(x + 240, 305, 40, 40);
  
  }
  
  public void displayFrontTires(float x){
    
    fill(30);
    ellipse(x + 10, 315, 50, 50);
    fill(30);
    ellipse(x + 230, 315, 50, 50);
  
  }

}

public class Window{
  
  void displayWindow(float x){
    
    fill(255);
    rect(x + 15, 200, 100, 90, 30, 30, 30, 30);
    fill(255);
    rect(x + 135, 200, 100, 90, 30, 30, 30, 30);
  
  }

}


public class Grass {
  
  void displayGrass(){
    fill(0,255,0);
    rect(0, int(0.70*height), width, int(0.30*height));
  }
}

public class Road {
  
  void displayRoad() {
    
    fill(192,192,192);
    highwayStartY = int(0.40*height);
    rect(0, highwayStartY, width, int(0.3*height));
    rect(0, highwayStartY+ int(highwayStartY/2.9), width, int(0.006*height));
    
  }
}

float sunPosition = 0;

public class Sky {

      void displaySky() {
        if (sunPosition >-50 && sunPosition < 1300) {
      
          fill(0,0,255);
          rect(0,0,1300,350);
        }else{
          fill(0,0,0);
          rect(0,0,1300,350);
          star.displayStars();  
        
        }
      }
  
      
}

public class Star{
  
  void displayStars() {
    for (int i = 0; i < 30; i++) {
        int spotx = int(random(0, width));
        int spoty = int(random(0, highwayStartY));
        fill (255); 
        circle (spotx, spoty, 5); 
      }
  }
}


public class Sun{
  
  void displaySun(float d){
    sunPosition = d;
  fill(255, 255, 0);
  ellipse(d, 50, 150, 150);
  }
}
