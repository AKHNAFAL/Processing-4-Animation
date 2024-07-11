objectperahu perahu6;
ObjectCharkaget arka10;

class scene15 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  //scene15(PApplet parent) {
  //  dub = new SoundFile(parent, "test.mp3");
  //}

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    //dub.play(); 

    // == Background == //
    drawBackgroundDark();

    // == Deklarasi object == // Titik awal muncylnya Objek
    kapalhantu3 = new  objectkapalhantuzoom(500, 10);
    perahu6 = new objectperahu(1280, 30);
    arka10 = new ObjectCharkaget(1800, 270);
    
    // == Object controler == //
    perahu6.moveTo(-1000, 30, 6);
    perahu6.pause(-500, 30, 2000);
     
    arka10.moveTo(-100, 270, 6);
    arka10.pause(-100, 270, 2000);
    
    //perahu3.moveTo(1280, 30, 2);
    //perahu3.pause(1280, 30, 2000);
     
    //arka3.moveTo(1500, 270, 2);
    //arka3.pause(1500, 270, 2000);
  }

  void draw() {
    int duration = 400; // Durasi dalam frame 400
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawBackgroundDark();

    // Update dan gambar karakter
     perahu6.update();
     perahu6.display();
     arka10.update();
     arka10.display();
     kapalhantu3.update();
     kapalhantu3.display();

  }
  
  //void stop() {
  //  dub.stop();
  //}
}
