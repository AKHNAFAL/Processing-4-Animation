objectperahuarka perahuarka3;

class scene16 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  //scene16(PApplet parent) {
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
    
    // == Object controler == //
    perahuarka3 = new objectperahuarka(50, 200);
    kapalhantu = new objectkapalhantu(500,200);
    awanHantu = new objectawan(500,230);
    awanHantu2 = new objectawan(700,260);

    // == Object controler == //
    perahuarka3.moveTo(-400, 200, 6);

  }

  void draw() {
    int duration = 90; // Durasi dalam frame 90
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawBackgroundDark();

    // Update dan gambar karakter
    perahuarka3.update();
    perahuarka3.display();
    
    kapalhantu.update();
    kapalhantu.display();
    
    awanHantu.update();
    awanHantu.display();
    
    awanHantu2.update();
    awanHantu2.display();
    
    drawLighthouse(width - 100, height - 150);
  }
  
  //void stop() {
  //  dub.stop();
  //}
}
