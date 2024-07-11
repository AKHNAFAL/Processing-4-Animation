objectkapalhantuzoom kapalhantu4;
objectperahu perahu4;
ObjectCharLeft arka4;
objectawanzoom awanHantu7 ;

class scene8 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene8(PApplet parent) {
    dub = new SoundFile(parent, "Rev6.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    dub.play();

    for (int i = 0; i < stars.length; i++) {
      stars[i] = new PVector(random(width), random(height / 2));
    }

    // == Background == //
    drawBackgroundDark();

    // == Deklarasi object == // Titik awal muncylnya Objek
    kapalhantu4 = new  objectkapalhantuzoom(0, 10);
    perahu4 = new objectperahu(600, 30);
    arka4 = new ObjectCharLeft(1000, 270);
    awanHantu7 = new objectawanzoom(300,300);
    
    // == Object controler == //
    arka4.pause(1000, 270, 1000);
    arka4.moveTo(900, 170, 6);
    arka4.moveTo(800, 270, 6);
    arka4.pause(800, 270, 4000);
    arka4.moveTo(500, 270, 6);
    arka4.pause(500, 270, 1000);
  }

  void draw() {
    int duration = 460; // Durasi dalam frame 460
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawBackgroundDark();

    // Update dan gambar karakter
     perahu4.update();
     perahu4.display();
     arka4.update();
     arka4.display();
     kapalhantu4.update();
     kapalhantu4.display();
     
     awanHantu7.update();
     awanHantu7.display();
  }
  
  void stop() {
    dub.stop();
  }
}
