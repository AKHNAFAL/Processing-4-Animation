class ObjectChar {
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

  ObjectChar(float x, float y) {
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
    strokeWeight(3);
    scale(1);

    float x = 0;
    float y = 0;

    stroke(0);
    strokeWeight(5);

    // Draw head
    fill(255, 224, 189);
    ellipse(x, y, 80, 80);

    // Draw Eyes
    fill(0);
    pushMatrix();
    translate(20, 5); // Shift right
    ellipse(x, y, 15, 10);
    popMatrix();

    // Draw Hat
    fill(57, 57, 57);
    strokeWeight(2);
    beginShape();
    vertex(-46.5, -32.87 - 5);
    bezierVertex(-31.18, -36.74 - 5, 8.46, -42.15 - 5, 44.5, -32.87 - 5);
    bezierVertex(36.09, -20.67 - 5, 53.5, 2.94 - 5, -0.5, 2.94 - 5);
    bezierVertex(-54.55, 2.94 - 5, -37.74, -20.87 - 5, -46.5, -32.87 - 5);
    endShape(CLOSE);

    strokeWeight(7);
    // Draw body
    line(x, y + 50, x, y + 155);

    // Adjust walk frame for arms and legs
    if (vx != 0 || vy != 0) { // Only animate if moving
      frameCount++;
      if (frameCount % 10 == 0) { // Change frame every 10 updates
        walkFrame = (walkFrame + walkDirection) % 4;
        if (walkFrame == 0 || walkFrame == 3) {
          walkDirection *= -1;
        }
      }
    } else {
      walkFrame = 0; // Reset to standing position when not moving
    }

    // Draw arms based on walkFrame
    if (walkFrame == 0) {
      line(x, y + 40, x - 40, y + 120);
      line(x, y + 40, x + 40, y + 120);
    } else if (walkFrame == 1 || walkFrame == 3) {
      line(x, y + 40, x - 30, y + 130);
      line(x, y + 40, x + 50, y + 110);
    } else if (walkFrame == 2) {
      line(x, y + 40, x - 50, y + 110);
      line(x, y + 40, x + 30, y + 130);
    }

    // Draw legs based on walkFrame
    if (walkFrame == 0) {
      line(x, y + 155, x - 40, y + 240);
      line(x, y + 155, x + 40, y + 240);
    } else if (walkFrame == 1 || walkFrame == 3) {
      line(x, y + 155, x - 20, y + 240);
      line(x, y + 155, x + 40, y + 240);
    } else if (walkFrame == 2) {
      line(x, y + 155, x - 40, y + 240);
      line(x, y + 155, x + 20, y + 240);
    }

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
