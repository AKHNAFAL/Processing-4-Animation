ObjectChar arka6;
objectfoto Foto2;

class scene10 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene10(PApplet parent) {
    dub = new SoundFile(parent, "Rev8.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    dub.play();

    // == Background == //
    drawRoom();

    // == Deklarasi object == // Titik awal muncylnya Objek
    Foto2 = new objectfoto(700, 250);
    arka6 = new ObjectChar(500, 420);
    
    // == Object controler == //
  }

  void draw() {
    int duration = 420; // Durasi dalam frame 420
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawRoom();

    // Update dan gambar karakter
    Foto2.update();
    Foto2.display();
    arka6.update();
    arka6.display();

  }
  
  void stop() {
    dub.stop();
  }
}
