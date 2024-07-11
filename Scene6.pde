objectperahu perahu5;
ObjectCharkaget arka9;

class scene14 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  //scene14(PApplet parent) {
  //  dub = new SoundFile(parent, "test.mp3");
  //}

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    //dub.play();

    for (int i = 0; i < stars.length; i++) {
      stars[i] = new PVector(random(width), random(height / 2));
    }

    // == Background == //
    drawBackgroundDark();

    // == Deklarasi object == // Titik awal muncylnya Objek
    kapalhantu4 = new  objectkapalhantuzoom(0, 10);
    perahu5 = new objectperahu(600, 30);
    arka9 = new ObjectCharkaget(500, 270);
    
    // == Object controler == //
    arka9.moveTo(900, 270, 6);
    arka9.moveTo(1000, 170, 6);
    arka9.moveTo(1100, 270, 6);
    
    perahu5.pause(600,  30, 2200);
    perahu5.moveTo(-1000, 30, 6);
    
    arka9.moveTo(-400, 270, 6);
    
    
  }

  void draw() {
    int duration = 250; // Durasi dalam frame 250
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawBackgroundDark();

    // Update dan gambar karakter
    perahu5.update();
    perahu5.display();
    arka9.update();
    arka9.display();
    kapalhantu4.update();
    kapalhantu4.display();
  }
  
  //void stop() {
  //  dub.stop();
  //}
}
