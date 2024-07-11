PVector[] stars = new PVector[50];

void drawBackgroundDark() {
  background(0, 0, 0); // Black sky
  drawStars();
  drawMoon();
  drawWater();
}

void drawStars() {
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


void drawMoon() {
  noStroke();
  fill(255, 255, 200);
  ellipse(width / 2, height / 3, 100, 100);
  fill(255, 255, 255, 150);
  ellipse(width / 2, height / 3, 80, 80);
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
void drawLighthouse(float x, float y) {
  fill(169, 169, 169); // Warna abu-abu untuk batu

  // Batu teratas (terkecil)
  rect(x - 40, y, 80, 30);

  // Batu kedua
  rect(x - 60, y + 30, 120, 30);

  // Batu ketiga
  rect(x - 80, y + 60, 160, 30);

  // Batu keempat (terbesar)
  rect(x - 100, y + 90, 200, 60);

  // Menggambar mercusuar
  fill(255, 255, 0); // Warna kuning untuk tubuh mercusuar
  rect(x - 20, y - 100, 40, 100);

  fill(255); // Warna putih untuk atas mercusuar
  triangle(x - 30, y - 100, x + 30, y - 100, x, y - 150);

  fill(255, 0, 0); // Warna merah untuk cahaya mercusuar
  ellipse(x, y - 160, 20, 20);
}
