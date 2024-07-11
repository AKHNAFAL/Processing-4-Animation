objectkapalhantuzoom kapalhantuzoom;
objectawanzoom awanHantu3 ;
objectawanzoom awanHantu4 ;

// INTENSE MUNCULNYA KAPAL HANTU

class scene4 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene4(PApplet parent) {
    dub = new SoundFile(parent, "KapalMuncul.mp3");
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

    // == Deklarasi object == //
    kapalhantuzoom = new  objectkapalhantuzoom(1300, 10);
    awanHantu3 = new objectawanzoom(1280,230);
    awanHantu4 = new objectawanzoom(1800,260);
    
    // == Object controler == //
    kapalhantuzoom.moveTo(-1280, 10, 0.5);
    awanHantu3.moveTo(-1280, 10, 0.5);
    awanHantu4.moveTo(-1, 400, 0.5);
  }

  void draw() {
    int duration = 1800; // Durasi dalam frame 1800
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawBackgroundDark();

    // Update dan gambar karakter
     kapalhantuzoom.update();
     kapalhantuzoom.display();
     
     awanHantu3.update();
    awanHantu3.display();
    
    awanHantu4.update();
    awanHantu4.display();
  }
  
  void stop() {
    dub.stop();
  }
}
