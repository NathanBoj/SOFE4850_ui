void setup(){
        size(1000, 1000);
        background(255);
                
      }
      
      void draw(){
                fill(204, 102, 0);
                ellipse(50, 50, 50, 50);

                fill(0);
                line(150, 150, 100, 200);

                fill(102);
                rect(250, 250, 100, 50);

                fill(204, 0, 104);
                arc(350, 350, 50, 50, 0, PI+QUARTER_PI, PIE);

                fill(255);
                stroke(0);
                ellipse(450, 450, 50, 75);

                fill(0, 102, 204);
                arc(550, 550, 50, 50, PI, TWO_PI);
        
      }
