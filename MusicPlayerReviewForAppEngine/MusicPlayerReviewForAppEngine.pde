
//
import processing.sound.*;
String path = new File("C:/Users/ALI/Documents/GitHub/Music-Player-Review-for-App-Engine/MusicPlayerReviewForAppEngine").getAbsolutePath(); 
String directory = "C:/Users/ALI/Documents/GitHub/Music-Player-Review-for-App-Engine/MusicPlayerReviewForAppEngine";

SoundFile music;
SoundFile walk;
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
String Path = new File("C:/Users/ALI/Documents/GitHub/Music-Player-Review-for-App-Engine/MusicPlayerReviewForAppEngine").getAbsolutePath();
//FOllow C Drive to users to documents to githubfile to MusciPlayerReviewForAppEngine folder to the MusicPlayerReviewForAppEngine
String dir = "C:/Users/ALI/Documents/GitHub/Music-Player-Review-for-App-Engine/MusicPlayerReviewForAppEngine";
//
Minim minim; 
AudioPlayer song1; //penguin.mp3
String songTitle;//Title =penguin.mp3
//
void setup() {
    size(800,600);
  //music = new SoundFile(this, "penguin.mp3");
  //walk = new SoundFile(this, "assests/walk.wav");
  //music.loop();
  minim = new Minim(this); 
  File directory = new File(Path); 
  File[] FileList = directory.listFiles(); 
  for (File file : FileList) {
    if (file.isFile()) {
      if (file.toString().endsWith(".mp3")) {
        song1 = minim.loadFile(file.getName());
      }
    }
  }
  printArray(FileList);
  if (song1 == null) {
    directory = new File(dir); 
    FileList = directory.listFiles();
    for (File file : FileList) {
      if (file.isFile()) {
        if (file.toString().endsWith(".mp3")) {
          song1 = minim.loadFile(file.getName());
          //println(file.getName().toLowerCase()); //Lists Files ending in ".mp3"
        }
      }
    }
  }
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
//
void keyPressed() {}
//
void mousePressed() {}
//END MUISC PLAYER
