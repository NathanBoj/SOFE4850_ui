void setup() {
  size(500, 500);
}

void draw() {

  if (mousePressed) {
    // Codes here will be executed as long as the mouse
    // button is pressed
    
    if (mouseButton == LEFT){
      // This lines will be executed as long as
      // the clicked mouse button is the left mouse
      // button.
    }
  }

  if (keyPressed) {
    // Codes here will be executed as long as a key
    // on the keyboard is pressed
    
    if (key == CODED) {
      // This if statement checks if the pressed key
      // is recognised by Processing.
       
      if (keyCode == ENTER) {
        // This lines will be executed if the pressed key
        // is the enter key.
      }
    }
    else{
      // This lines will be executed if the pressed key
      // is not recognised by processing.
    }
  }
  
}

void mousePressed() {
  // These codes will be executed once, when mouse
  // is clicked. Note that mouseButton variable is
  // also be used here.
}

void keyPressed() {
  // These codes will be executed once, when a key
  // is pressed. Note that key and keyCode variables
  // are also usable here.
}
