class objectfoto {
  float x, y; // Posisi karakter
  float vx, vy; // Kecepatan karakter
  ArrayList<float[]> targets; // List untuk target gerakan
  ArrayList<Float> waitTimes; // List untuk durasi diam
  boolean isWaiting = false;
  float waitStartTime = 0;
  float currentWaitTime = 0;
  int walkFrame = 0; // Frame untuk animasi berjalan
  int walkDirection = 1; // Arah langkah (1 untuk maju, -1 untuk mundur)
  int frameCount = 0; // Counter frame

  objectfoto(float x, float y) {
    this.x = x;
    this.y = y;
    this.vx = 0;
    this.vy = 0;
    this.targets = new ArrayList<float[]>();
    this.waitTimes = new ArrayList<Float>();
  }

  void display() {
    pushMatrix();
    translate(x, y);
    noFill();
    stroke(0);
    strokeWeight(0);
    scale(1);
    
     // Background rectangle
    noStroke();
    fill(80, 62, 36);
    rect(0, 0, 134, 134);
  
    // Inner rectangle
    fill(167, 124, 41);
    rect(24.8477, 24.8647, 88.7417, 88.803);
  
    // White path
    fill(255);
    beginShape();
    vertex(69.4407, 79.0347);
    vertex(75.4308, 98.3493);
    vertex(91.848, 101.457);
    vertex(96.7288, 114.334);
    vertex(43.04, 114.334);
    vertex(46.5897, 101.457);
    vertex(65.2255, 98.3493);
    vertex(69.4407, 79.0347);
    endShape(CLOSE);
  
    // Ellipse with stroke
    fill(255, 224, 189);
    stroke(0);
    strokeWeight(5);
    ellipse(69.4233, 69.0443, 40.666, 40.666);
    
    // Inner ellipses (eyes)
    fill(0);
    noStroke();
    ellipse(57.2388, 64.3822, 8.87418, 5.32818);
    ellipse(81.1978, 64.3822, 8.87418, 5.32818);
  
    // Black path
    fill(0);
    beginShape();
    vertex(69.5276, 48.2936);
    vertex(34.1761, 73.5109);
    vertex(36.8354, 55.6037);
    vertex(54.5921, 39.433);
    vertex(69.2685, 31.2563);
    vertex(84.9492, 36.1471);
    vertex(96.0529, 49.1939);
    vertex(93.3936, 67.1011);
    vertex(69.5276, 48.2936);
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
