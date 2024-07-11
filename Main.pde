import processing.sound.*;

SoundFile sceneSound;

scene1 scene1;
scene2 scene2;
scene3 scene3;
scene4 scene4;
scene5 scene5;
scene6 scene6;
scene7 scene7;
scene8 scene8;
scene9 scene9;
scene10 scene10;
scene11 scene11;
scene12 scene12;
scene13 scene13;
scene14 scene14;
scene15 scene15;
scene16 scene16;
scene17 scene17;
scene18 scene18;
scene19 scene19;
scene20 scene20;

int currentScene = 0;

void setup() {
  size(1280, 720);
  
  // Initialize scenes
  scene1 = new scene1(this);
  scene2 = new scene2(this);
  scene3 = new scene3(this);
  scene4 = new scene4(this);
  scene5 = new scene5(this);
  scene6 = new scene6(this);
  scene7 = new scene7(this);
  scene8 = new scene8(this);
  scene9 = new scene9(this);
  scene10 = new scene10(this);
  scene11 = new scene11(this);
  scene12 = new scene12(this);
  scene13 = new scene13(this);
  scene14 = new scene14();
  scene15 = new scene15();
  scene16 = new scene16();
  scene17 = new scene17();
  scene18 = new scene18(this);
  
  // Initialize the shared sound file
  sceneSound = new SoundFile(this, "scene.mp3");
  
  scene1.setup();
  //sceneSound.play();
  frameRate(60);
}

void draw() {
  background(0);
  switch (currentScene) {
    case 0:
      scene1.draw();
      if (scene1.isFinished) {
        scene1.stop();
        currentScene = 1;
        scene2.setup();
      }
      break;
    case 1:
      scene2.draw();
      if (scene2.isFinished) {
        scene2.stop();
        currentScene = 2;
        scene3.setup();
      }
      break;
    case 2:
      scene3.draw();
      if (scene3.isFinished) {
        scene3.stop();
        currentScene = 3;
        scene4.setup();
      }
      break;
    case 3:
      scene4.draw();
      if (scene4.isFinished) {
        scene4.stop();
        currentScene = 4;
        scene5.setup();
      }
      break;
    case 4:
      scene5.draw();
      if (scene5.isFinished) {
        scene5.stop();
        currentScene = 5;
        scene6.setup();
      }
      break;
    case 5:
      scene6.draw();
      if (scene6.isFinished) {
        scene6.stop();
        currentScene = 6;
        scene7.setup();
      }
      break;
    case 6:
      scene7.draw();
      if (scene7.isFinished) {
        scene7.stop();
        currentScene = 7;
        scene8.setup();
      }
      break;
    case 7:
      scene8.draw();
      if (scene8.isFinished) {
        scene8.stop();
        currentScene = 8;
        scene9.setup();
      }
      break;
    case 8:
      scene9.draw();
      if (scene9.isFinished) {
        scene9.stop();
        currentScene = 9;
        scene10.setup();
      }
      break;
    case 9:
      scene10.draw();
      if (scene10.isFinished) {
        scene10.stop();
        currentScene = 10;
        scene11.setup();
      }
      break;
    case 10:
      scene11.draw();
      if (scene11.isFinished) {
        scene11.stop();
        currentScene = 11;
        scene12.setup();
      }
      break;
    case 11:
      scene12.draw();
      if (scene12.isFinished) {
        currentScene = 12;
        scene13.setup();
      }
      break;
    case 12:
      scene13.draw();
      if (scene13.isFinished) {
        scene13.stop();
        currentScene = 13;
        scene14.setup();
      }
      break;
    case 13:
      scene14.draw();
      if (scene14.isFinished) {
        currentScene = 14;
        scene15.setup();
      }
      break;
    case 14:
      scene15.draw();
      if (scene15.isFinished) {
        currentScene = 15;
        scene16.setup();
      }
      break;
    case 15:
      scene16.draw();
      if (scene16.isFinished) {
        currentScene = 16;
        scene17.setup();
      }
      break;
    case 16:
      scene17.draw();
      if (scene17.isFinished) {
        scene12.stop();
        currentScene = 17;
        scene18.setup();
      }
      break;
    case 17:
      scene18.draw();
      if (scene18.isFinished) {
        scene18.stop();
        //sceneSound.stop();
        exit(); // Stop and close the window after scene20 is finished
      }
      break;
  }
}
