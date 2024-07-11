class objectawanzoom {
  float x, y; // Posisi karakter
  float vx, vy; // Kecepatan karakter
  ArrayList<float[]> targets; // List untuk target gerakan
  ArrayList<Float> waitTimes; // List untuk durasi diam
  boolean isWaiting = false;
  float waitStartTime = 0;
  float currentWaitTime = 0;
  
  objectawanzoom(float x, float y) {
    this.x = x;
    this.y = y;
    this.vx = 0;
    this.vy = 0;
    this.targets = new ArrayList<float[]>();
    this.waitTimes = new ArrayList<Float>();
  }

  // Taruh kode gambar/fill nya disini
  
void display() {
 pushMatrix();
  translate(x, y);
  noFill();
  stroke(0);
  strokeWeight(0);
  scale(4);
  
  fill(255, 255, 255, 100); // 204 is the opacity value (0.8 * 255)
  beginShape();
  vertex(59.8653, 34.9302 - 69); // Adjusted y position to keep it on screen
  bezierVertex(14.6895, 48.2429 - 69, -48.5566, 82.6961 - 69, 59.8653, 114.008 - 69);
  bezierVertex(74.481, 132.113 - 69, 114.236, 157.46 - 69, 156.329, 114.008 - 69);
  bezierVertex(174.665, 129.45 - 69, 220.266, 151.07 - 69, 255.981, 114.008 - 69);
  bezierVertex(289.199, 96.4348 - 69, 335.703, 56.0175 - 69, 255.981, 34.9302 - 69);
  bezierVertex(238.708, 12.5649 - 69, 197.944, -18.7466 - 69, 173.071, 34.9302 - 69);
  bezierVertex(151.28, 8.57104 - 69, 98.1318, -28.3317 - 69, 59.8653, 34.9302 - 69);
  endShape(CLOSE);
  popMatrix();
}

  



  void moveTo(float targetX, float targetY, float speed) {
    targets.add(new float[]{targetX, targetY, speed});
    waitTimes.add(0f); // Tidak ada penundaan untuk gerakan ini
  }

  void pause(float x, float y, float duration) {
    targets.add(new float[]{x, y, 0}); // Tidak ada pergerakan
    waitTimes.add(duration);
  }

  void update() {
    if (isWaiting) {
      println("Waiting... elapsed time: " + (millis() - waitStartTime));
      if (millis() - waitStartTime >= currentWaitTime) {
        isWaiting = false;
        currentWaitTime = 0;
        if (targets.size() > 0) {
          targets.remove(0); // Hapus target yang telah dicapai
          waitTimes.remove(0); // Hapus durasi tunggu yang telah selesai
        }
      }
      return;
    }

    if (targets.size() == 0) return; // Tidak ada target yang tersisa

    float[] target = targets.get(0);
    float targetX = target[0];
    float targetY = target[1];
    float speed = target[2];

    float dx = targetX - x;
    float dy = targetY - y;
    float distance = dist(x, y, targetX, targetY);

    println("Moving... target: (" + targetX + ", " + targetY + "), speed: " + speed);

    if (distance > speed) {
      vx = (dx / distance) * speed;
      vy = (dy / distance) * speed;
    } else {
      vx = dx;
      vy = dy;
    }

    x += vx;
    y += vy;

    if (dist(x, y, targetX, targetY) < 1) {
      x = targetX;
      y = targetY;

      // Check if there's a wait time after reaching the target
      currentWaitTime = waitTimes.get(0);
      if (currentWaitTime > 0) {
        isWaiting = true;
        waitStartTime = millis();
        println("Started waiting for " + currentWaitTime + " ms");
      } else {
        targets.remove(0); // Remove reached target
        waitTimes.remove(0); // Remove completed wait time
      }
    }
  }
}
