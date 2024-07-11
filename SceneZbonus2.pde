class scene20 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  //scene20(PApplet parent) {
  //  dub = new SoundFile(parent, "test.mp3");
  //}

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    //dub.play();
    
  }

  void draw() {
    int duration = 0; // Durasi dalam frame 300
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    

  }
  
  void stop() {
    dub.stop();
  }
  
}
