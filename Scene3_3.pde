class scene6 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene6(PApplet parent) {
    dub = new SoundFile(parent, "Rev4.mp3");
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
    perahuarka2 = new objectperahuarka(300, 500);
    kapalhantu = new objectkapalhantu(500,200);
    awanHantu = new objectawan(500,230);
    awanHantu2 = new objectawan(700,260);

    // == Object controler == //
    perahuarka2.moveTo(20, 200, 1);
    perahuarka2.pause(20, 200, 2000);
    
    kapalhantu.pause(500, 200, 4000);
    awanHantu.pause(500, 230, 4000);
    awanHantu2.pause(700, 260, 4000);
  }

  void draw() {
    int duration = 400; // Durasi dalam frame 400
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
