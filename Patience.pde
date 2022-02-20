// Designed by Ferdinand
// created on 06/05/2020, the 6th of May 2020

int xpos = 0;
int xvec = 1;
int ehit = 10;

boolean reverse = false;

int score = 0;
PShape scorebox;
PShape scorebox2; 
void setup(){
  size(800,800);
  smooth(); 
  
  scorebox = createShape(RECT, 590, 5, 100, 22);    
  scorebox.setFill(color(100));
  scorebox.setStroke(false);
  
  scorebox2 = createShape(RECT, 650, 7, 30, 18);    
  scorebox2.setFill(color(255));
  scorebox2.setStroke(false);
}

void draw(){
  background(255,255,255);
  shape(scorebox);
  shape(scorebox2);
  textSize(15);
  fill(255);
  text("score", 600, 20);
  fill(0);
  text(score, 655, 20); 
  
  fill(0);
  text("Share your Highscores!",325, 400);
  
  
  fill(0);
  ellipse(xpos+10,ehit, 20,20);
  xpos = xpos + xvec;
  
  if(ehit >= 790){
    reverse = true;
  }
  
  if(ehit <= 10){
    reverse = false;
  }
  
  if(xpos < 1 && reverse == true){
    xvec = +1;
    ehit -= 10;    
    score = score + 1;
  }
  
  if(xpos > width - 20 && reverse == true){
    xvec = -1;
    ehit -= 10;    
    score = score + 1;    
  }
  
  
  if(xpos > width - 20 && reverse == false){
    xvec = -1;
    ehit += 10;    
    score = score + 1;
  }
  
  if(xpos < 1 && xvec == -1 && reverse == false){
    xvec = +1;
    ehit +=  10;    
    score = score + 1;
  }

}

// Designed by Ferdinand
