ObjectCharkaget arka8;
objectfotoseram Foto4;

class scene12 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene12(PApplet parent) {
    dub = new SoundFile(parent, "Rev11.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    dub.play(); 

    // == Background == //
    drawRoom();

    // == Deklarasi object == // Titik awal muncylnya Objek
    Foto4 = new objectfotoseram(500, 250);
    arka8 = new ObjectCharkaget(200, 455);
    
    // == Object controler == //
    arka8.pause(200, 455, 300);
    arka8.moveTo(1400, 370, 6);

  }

  void draw() {
    int duration = 600; // Durasi dalam frame 600
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawRoom();

    // Update dan gambar karakter
    Foto4.update();
    Foto4.display();
    arka8.update();
    arka8.display();
  }
  
  void stop() {
    dub.stop();
  }
}
