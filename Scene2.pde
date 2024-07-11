objectkapalhantu kapalhantu;
objectperahuarka perahuarka2;
objectawan awanHantu ;
objectawan awanHantu2 ;

class scene3 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene3(PApplet parent) {
    dub = new SoundFile(parent, "Rev2.mp3");
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
    perahuarka2 = new objectperahuarka(-300, 700);
    kapalhantu = new objectkapalhantu(1300,200);
    awanHantu = new objectawan(1280,230);
    awanHantu2 = new objectawan(1400,260);

    // == Object controler == //
    perahuarka2.moveTo(300, 500, 2); // Pindah ke (400, 100) dengan kecepatan 6
    perahuarka2.pause(300, 500, 2000); // Diam selama 2 detik
    
    kapalhantu.pause(1300, 200, 22000);
    kapalhantu.moveTo(500, 200, 0.3);
    
    awanHantu.pause(1280, 230, 22000);
    awanHantu.moveTo(500, 230, 0.2);
   
    awanHantu2.pause(1400, 260, 22000);
    awanHantu2.moveTo(700, 260, 0.2);
    
  }

  void draw() {
    int duration = 2700; // Durasi dalam frame 2700
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawBackgroundDark();

    // Update dan gambar karakter
    perahuarka2.update();
    perahuarka2.display();
    
    kapalhantu.update();
    kapalhantu.display();
    
    awanHantu.update();
    awanHantu.display();
    
    awanHantu2.update();
    awanHantu2.display();
    
    drawLighthouse(width - 100, height - 150);
  }
  
  void stop() {
    dub.stop();
  }
}
