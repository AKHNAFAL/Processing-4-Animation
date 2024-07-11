objectperahuarkazoom kapalzoom;

class scene5 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene5(PApplet parent) {
    dub = new SoundFile(parent, "Rev3.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    dub.play();

    for (int i = 0; i < stars.length; i++) {
      stars[i] = new PVector(random(width), random(height / 2));
    }

    // == Background == //
    drawBackground1();

    // == Deklarasi object == //
    kapalzoom = new objectperahuarkazoom(100, 100);

    // == Object controler == //
    arka.moveTo(300, 500, 2); // Pindah ke (400, 100) dengan kecepatan 6
    arka.pause(300, 500, 2000); // Diam selama 2 detik
  }

  void draw() {
    int duration = 900; // Durasi dalam frame 900
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawBackground1();

    // Update dan gambar karakter
    kapalzoom.update();
    kapalzoom.display();
  }
  
  void stop() {
    dub.stop();
  }
}

////////////////////////////////////////
// ======== RESOURCE METHODE ======== //
////////////////////////////////////////

void drawBackground1() {
  background(0, 0, 0); // Black sky
  Stars();
 
  Water();
  
}

void Stars() {
  for (int i = 0; i < stars.length; i++) {
    // Update posisi bintang
    stars[i].x -= 0.2; // Pindahkan bintang ke kiri
    if (stars[i].x < 0) {
      stars[i].x = width; // Kembali ke kanan setelah keluar dari layar
      stars[i].y = random(height / 2); // Acak ulang posisi y
    }

    // Gambar bintang
    stroke(250);
    point(stars[i].x, stars[i].y);
  }
}




void Water() {
  noStroke();
  fill(0, 0, 139); // Warna biru tua untuk air

  // Gelombang air
  float waveHeight = 5; // Tinggi gelombang
  float waveLength = 100; // Panjang gelombang
  float yOffset = height * 0.3; // Posisi vertikal dasar gelombang
  float speed = frameCount * 0.02; // Kecepatan gelombang

  beginShape();
  vertex(0, height); // Mulai dari bawah kiri
  vertex(0, yOffset);
  for (float x = 0; x <= width; x += 10) {
    float y = yOffset + sin(TWO_PI * (x / waveLength) + speed) * waveHeight;
    vertex(x, y);
  }
  vertex(width, yOffset);
  vertex(width, height); // Akhir di bawah kanan
  endShape(CLOSE);
}
