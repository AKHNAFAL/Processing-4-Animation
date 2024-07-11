objectfotojumpscare Foto5;

class scene13 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene13(PApplet parent) {
    dub = new SoundFile(parent, "jumpscare.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    dub.play(); 

    // == Background == //
    drawRoom();

    // == Deklarasi object == // Titik awal muncylnya Objek
    Foto5 = new objectfotojumpscare(280, 0);

  }

  void draw() {
    int duration = 250; // Durasi dalam frame 250
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    
    drawRoom();

    // Update dan gambar karakter
    Foto5.update();
    Foto5.display();
  }
  
  void stop() {
    dub.stop();
  }
}
