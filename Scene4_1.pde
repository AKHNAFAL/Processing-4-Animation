objectkapalhantuzoom kapalhantu3;
objectperahu perahu3;
ObjectChar arka3;
objectawanzoom awanHantu5 ;
objectawanzoom awanHantu6 ;

class scene7 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene7(PApplet parent) {
    dub = new SoundFile(parent, "Rev5.mp3");
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
    kapalhantu3 = new  objectkapalhantuzoom(500, 10);
    perahu3 = new objectperahu(-500, 30);
    arka3 = new ObjectChar(-100, 270);
    awanHantu3 = new objectawanzoom(100,230);
    awanHantu4 = new objectawanzoom(300,260);
    
    // == Object controler == //
     kapalhantu3.pause(500, 10, 4000); 
     
     perahu3.moveTo(1280, 30, 2);
     perahu3.pause(1280, 30, 2000);
     
     arka3.moveTo(1500, 270, 2);
     arka3.pause(1500, 270, 2000);
  }

  void draw() { 
    int duration = 700; // Durasi dalam frame 700
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawBackgroundDark();

    // Update dan gambar karakter

     perahu3.update();
     perahu3.display();
     arka3.update();
     arka3.display();
     kapalhantu3.update();
     kapalhantu3.display();
     
     awanHantu3.update();
     awanHantu4.display();
  }
  
  void stop() {
    dub.stop();
  }
}
