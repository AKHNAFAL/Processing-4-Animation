ObjectCharLeft arka7;
objectfotoseram Foto3;

class scene11 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene11(PApplet parent) {
    dub = new SoundFile(parent, "LukisanGerak.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    dub.play();

    // == Background == //
    drawRoom();

    // == Deklarasi object == // Titik awal muncylnya Objek
    Foto3 = new objectfotoseram(700, 250);
    arka7 = new ObjectCharLeft(500, 420);
    
    // == Object controler == //
    Foto3.moveTo(500, 250, 6);
    Foto3.pause(450, 250, 5000);
    
    arka7.pause(500, 420, 1000);
    arka7.moveTo(200, 455, 3);
    arka7.pause(200, 455, 2000);
  }

  void draw() {
    int duration = 190; // Durasi dalam frame 190
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawRoom();

    // Update dan gambar karakter
    Foto3.update();
    Foto3.display();
    arka7.update();
    arka7.display();
  }
  
  void stop() {
    dub.stop();
  }
}
