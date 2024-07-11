class Object {
  float x, y; // Posisi karakter
  float vx, vy; // Kecepatan karakter
  ArrayList<float[]> targets; // List untuk target gerakan
  ArrayList<Float> waitTimes; // List untuk durasi diam
  PImage obj;
  boolean isWaiting = false;
  float waitStartTime = 0;
  float currentWaitTime = 0;

  Object(float x, float y, String imagePath) {
    this.x = x;
    this.y = y;
    this.vx = 0;
    this.vy = 0;
    this.targets = new ArrayList<float[]>();
    this.waitTimes = new ArrayList<Float>();
    this.obj = loadImage(imagePath);
  }

  void display() {
    image(obj, x, y);
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
