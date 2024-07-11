objectperahuarka perahuarka;

class scene2 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene2(PApplet parent) {
    dub = new SoundFile(parent, "Rev1.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    dub.play();
    
    // == Background == //
    drawBackground();
    
    // == Deklarasi object == //
    perahuarka = new objectperahuarka(-100, 300);
    
    // == Object controler == //
    perahuarka.moveTo(1400, 300, 0.6);
  }

  void draw() {
    int duration = 1800; //500 Durasi dalam frame 1800
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    // Gambar konten scene2 di sini
    drawBackground();
    
    // Update dan gambar karakter
    perahuarka.update();
    perahuarka.display();
  }
  
    void stop() {
    dub.stop();
  }
  
void drawBackground() {
  drawSky();
  drawWater();
}

void drawSky() {
  // Menggambar gradien langit
    PVector startColor = hexToPVector("#9BD3DC");
    PVector middleColor = hexToPVector("#CCE7E1");
    PVector endColor = hexToPVector("#FAEFCE");
    for (int y = 0; y < height; y++) {
      float t = map(y, 0, height / 2, 0, 1);
      if (y < height / 2) {
        stroke(lerpColor(startColor, middleColor, t));
      } else {
        t = map(y, height / 2, height, 0, 1);
        stroke(lerpColor(middleColor, endColor, t));
      }
      line(0, y, width, y);
    }
  
}

color lerpColor(PVector color1, PVector color2, float t) {
    return color(
      lerp(color1.x, color2.x, t),
      lerp(color1.y, color2.y, t),
      lerp(color1.z, color2.z, t)
    );
  }
  
  PVector hexToPVector(String hex) {
    int c = unhex(hex.substring(1));
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    return new PVector(r, g, b);
  }
void drawWater() {
  noStroke();
  fill(0, 0, 139); // Warna biru tua untuk air

  // Gelombang air
  float waveHeight = 5; // Tinggi gelombang
  float waveLength = 100; // Panjang gelombang
  float yOffset = height * 0.5; // Posisi vertikal dasar gelombang
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
}
