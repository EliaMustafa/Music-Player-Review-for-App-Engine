//Run mp3 file for "penguin.mp3"


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
import processing.sound.*;
String path = new File("C:/Users/ALI/Documents/GitHub/Music-Player-Review-for-App-Engine/MusicPlayerReviewForAppEngine").getAbsolutePath(); 
String dir = "C:/Users/ALI/Documents/GitHub/Music-Player-Review-for-App-Engine/MusicPlayerReviewForAppEngine";
//FOllow C Drive to users to documents to githubfile to MusciPlayerReviewForAppEngine folder to the MusicPlayerReviewForAppEngine

//
Minim minim;
AudioPlayer penguinmp3; //plays penguin.mp3
String songTitle; //Title=penguinmp3
//
void setup() {
  size(800,700);
  //music = new SoundFile(this, "penguin.mp3");
  //music.loop(penguin.mp3);
  minim = new Minim(this); 
  File directory = new File(path); 
  File[] FileList = directory.listFiles(); 
  for (File file : FileList) {
    if (file.isFile()) {
      if (file.toString().endsWith(".mp3")) {
        penguinmp3 = minim.loadFile(file.getName());
      }
    }
  }
  printArray(FileList);
  //
  if (penguinmp3 == null) {
    directory = new File(dir); 
    FileList = directory.listFiles(); 
    for (File file : FileList) {
      if (file.isFile()) {
        if (file.toString().endsWith(".mp3")) {
          penguinmp3 = minim.loadFile(file.getName());
          //list files in MusicPlayerReviewForAppEngine with ".mp3"
        }
      }
    }
  }
  penguinmp3.play();
}
//
void draw() {
  background(#0000FF);
  fill(#FF0000);
  textSize(72); 
  text("Click Me", 255, 220);
  fill(255,0,0);
  ellipse(width/2,height/2,100,100);
  if (mousePressed && dist(mouseX, mouseY, width/2, height/2) < 50) {
    }
  }
//END MUISC PLAYER
