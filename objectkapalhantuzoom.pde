class objectkapalhantuzoom {
  float x, y; // Posisi karakter
  float vx, vy; // Kecepatan karakter
  ArrayList<float[]> targets; // List untuk target gerakan
  ArrayList<Float> waitTimes; // List untuk durasi diam
  boolean isWaiting = false;
  float waitStartTime = 0;
  float currentWaitTime = 0;
  
  objectkapalhantuzoom(float x, float y) {
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
  strokeWeight(3);
  scale(1);

  // First path
    //Rectangles
  fill(53, 20, 3);
  rect(197, 214, 232, 214);

  // Path 1
  fill(167, 124, 41);
  stroke(72, 55, 22);
  strokeWeight(10);
  beginShape();
  vertex(1047, 430.42);
  vertex(819.783, 437.436);
  vertex(358.332, 430.42);
  vertex(358.332, 304.669);
  bezierVertex(242.653, 319.736, 172.789, 343.784, 92.6877, 248);
  bezierVertex(49.7805, 315.719, 25.6937, 375.825, 17.8645, 430.42);
  bezierVertex(5.93689, 513.594, 31.7439, 583.976, 86.2252, 649);
  bezierVertex(861.851, 618.093, 946.988, 731.039, 1047, 430.42);
  endShape(CLOSE);

  // Path 2
  fill(98, 56, 16);
  noStroke();
  beginShape();
  vertex(217, 501);
  vertex(963, 501);
  vertex(963, 507.075);
  bezierVertex(958.075, 512, 952, 512, 217, 512);
  vertex(217, 501);
  endShape();

  // Path 3
  beginShape();
  vertex(217, 540);
  vertex(940, 540);
  vertex(940, 546.627);
  bezierVertex(934.627, 552, 928, 552, 217, 552);
  vertex(217, 540);
  endShape();

  // Ellipses
  fill(200, 184, 167);
  ellipse(582, 532, 98, 104);
  fill(151, 108, 82);
  ellipse(582.5, 533, 77, 86);
  fill(213, 230, 240);
  ellipse(582.5, 532.5, 57, 63);

  fill(200, 184, 167);
  ellipse(722.5, 532, 99, 104);
  fill(151, 108, 82);
  ellipse(722.5, 533, 77, 86);
  fill(213, 230, 240);
  ellipse(722.5, 532.5, 57, 63);

  fill(200, 184, 167);
  ellipse(442.5, 532, 97, 104);
  fill(151, 108, 82);
  ellipse(442.5, 533, 77, 86);
  fill(213, 230, 240);
  ellipse(442.5, 532.5, 57, 63);

  // Small rectangles with borders
  fill(97, 100, 67);
  stroke(53, 20, 3);
  rect(232.259, 478.5, 13.759, 70.8756, 6.8795);
  fill(150, 100, 67);
  noStroke();
  rect(232.43, 486.456, 13.4173, 0.704663);
  rect(232.43, 500.549, 13.4173, 0.704663);
  rect(232.43, 515.347, 13.4173, 0.704663);
  rect(232.43, 530.145, 13.4173, 0.704663);
  rect(232.43, 541.42, 13.4173, 0.704663);

  fill(97, 100, 67);
  stroke(53, 20, 3);
  rect(275.865, 518.666, 13.759, 70.8756, 6.8795);
  fill(150, 100, 67);
  noStroke();
  rect(276.036, 526.622, 13.4173, 0.704663);
  rect(276.036, 540.715, 13.4173, 0.704663);
  rect(276.036, 555.513, 13.4173, 0.704663);
  rect(276.036, 570.311, 13.4173, 0.704663);
  rect(276.036, 581.585, 13.4173, 0.704663);

  fill(97, 100, 67);
  stroke(53, 20, 3);
  rect(326.18, 542.624, 13.759, 70.8756, 6.8795);
  fill(150, 100, 67);
  noStroke();
  rect(326.351, 550.58, 13.4173, 0.704663);
  rect(326.351, 564.674, 13.4173, 0.704663);
  rect(326.351, 579.471, 13.4173, 0.704663);
  rect(326.351, 594.269, 13.4173, 0.704663);
  rect(326.351, 605.544, 13.4173, 0.704663);

  // More rectangles with rotation
  fill(97, 100, 67);
  stroke(53, 20, 3);
  pushMatrix();
  translate(823.29, 489.479);
  rotate(radians(-90));
  rect(0, 0, 10.9793, 89.5666, 4.5);
  popMatrix();

  fill(150, 100, 67);
  noStroke();
  pushMatrix();
  translate(833.445, 489.435);
  rotate(radians(-90));
  rect(0, 0, 10.8902, 0.887907, 0.443954);
  popMatrix();

  pushMatrix();
  translate(851.203, 489.435);
  rotate(radians(-90));
  rect(0, 0, 10.8902, 0.887907, 0.443954);
  popMatrix();

  pushMatrix();
  translate(869.849, 489.435);
  rotate(radians(-90));
  rect(0, 0, 10.8902, 0.887907, 0.443954);
  popMatrix();

  pushMatrix();
  translate(888.495, 489.435);
  rotate(radians(-90));
  rect(0, 0, 10.8902, 0.887907, 0.443954);
  popMatrix();

  pushMatrix();
  translate(902.701, 489.435);
  rotate(radians(-90));
  rect(0, 0, 10.8902, 0.887907, 0.443954);
  popMatrix();

  fill(97, 100, 67);
  stroke(53, 20, 3);
  pushMatrix();
  translate(858.174, 531.759);
  rotate(radians(-90));
  rect(0, 0, 10.9793, 60.0486, 4.5);
  popMatrix();

  fill(150, 100, 67);
  noStroke();
  pushMatrix();
  translate(864.857, 531.714);
  rotate(radians(-90));
  rect(0, 0, 10.8902, 0.599318, 0.299659);
  popMatrix();

  pushMatrix();
  translate(876.827, 531.714);
  rotate(radians(-90));
  rect(0, 0, 10.8902, 0.599318, 0.299659);
  popMatrix();

  pushMatrix();
  translate(889.396, 531.714);
  rotate(radians(-90));
  rect(0, 0, 10.8902, 0.599318, 0.299659);
  popMatrix();

  pushMatrix();
  translate(901.965, 531.714);
  rotate(radians(-90));
  rect(0, 0, 10.8902, 0.599318, 0.299659);
  popMatrix();

  pushMatrix();
  translate(911.541, 531.714);
  rotate(radians(-90));
  rect(0, 0, 10.8902, 0.599318, 0.299659);
  popMatrix();

  // Ground rectangle
  fill(80, 62, 36);
  rect(0, 428, 1051, 20, 10);

  // Vertical and horizontal paths
  fill(97, 61, 27);
  noStroke();
  rect(610, 1, 24, 427);
  rect(390, 90.5, 220, 27);
  rect(634, 90.5, 157, 27);

  stroke(0);
  strokeWeight(1);
  line(610, 117.5, 634, 117.5);
  line(634, 117.5, 634, 428);
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
