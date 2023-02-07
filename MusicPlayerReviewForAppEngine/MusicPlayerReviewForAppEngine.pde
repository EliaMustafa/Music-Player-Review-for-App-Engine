import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import processing.sound.*;

SoundFile music;
SoundFile walk;

void setup(){
  size(800,600);
  
  //music = new SoundFile(this, "assests/bitQuest.mp3");
  walk = new SoundFile(this, "assests/walk.wav");
  //music.loop();
  
}

void draw(){
  background(128);
  fill(255);
  textSize(72); 
  text("Click Me", 255, 220);
  fill(255,0,0);
  ellipse(width/2,height/2,100,100);
  
  if (mousePressed && dist(mouseX, mouseY, width/2, height/2) < 50) {
    if (!walk.isPlaying()){
    }
  }
}
