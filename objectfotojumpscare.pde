class objectfotojumpscare {
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

  objectfotojumpscare(float x, float y) {
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
    scale(6);
    
// Background Rectangle
  fill(80, 62, 36); // #503E24
  rect(0, 0, 134, 134.093);
  
  // Inner Rectangle
  fill(167, 124, 41); // #A77C29
  rect(24.8477, 24.8647, 88.7417, 88.803);
  
  // White Path
  fill(255);
  beginShape();
  vertex(69.4407, 79.0347);
  vertex(75.4308, 98.3493);
  vertex(91.848, 101.457);
  vertex(96.7288, 114.334);
  vertex(43.04, 114.334);
  vertex(46.5897, 101.457);
  vertex(65.2255, 98.3493);
  endShape(CLOSE);
  
  // Complex Path with Bezier Curves and Stroke
  fill(255, 224, 189); // #FFE0BD
  stroke(0); // black stroke
  strokeWeight(5);
  beginShape();
  vertex(68.4339, 79.7959);
  vertex(69.4359, 80.2277);
  vertex(70.4338, 79.7867);
  vertex(70.9856, 79.5428);
  vertex(69.4016, 81.0595);
  vertex(67.7178, 79.4873);
  endShape(CLOSE);
  
  beginShape();
  vertex(56.4894, 69.2041);
  vertex(53.7939, 73.3273);
  vertex(67.7171, 86.3273);
  vertex(69.4449, 87.9405);
  vertex(71.1523, 86.3057);
  vertex(84.729, 73.3057);
  vertex(81.9895, 69.2133);
  vertex(69.4107, 74.7723);
  vertex(56.4894, 69.2041);
  endShape(CLOSE);
  
  noFill();
  beginShape();
  ellipse(69.4233, 69.0443, 40, 40);
  endShape();
  noStroke();
  
  // Eyes
  fill(0); // black
  ellipse(61, 64.5, 16, 9);
  ellipse(81.1978, 64.3822, 8.87418, 5.32818);
  
  // Black Path
  fill(0); // black
  beginShape();
  vertex(69.5278, 48.2935);
  vertex(34.1764, 73.5108);
  vertex(36.8357, 55.6037);
  vertex(47.9998, 22.5001);
  vertex(69.2688, 31.2563);
  vertex(93.3935, 22.5);
  vertex(96.0532, 49.1938);
  vertex(99.5, 67.5);
  vertex(69.5278, 48.2935);
  endShape(CLOSE);
  
  // Red Path
  stroke(122, 2, 2); // #7A0202
  strokeWeight(3);
  noFill();
  beginShape();
  vertex(59, 74);
  vertex(69, 80.5);
  vertex(80.5, 74);
  endShape();
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
