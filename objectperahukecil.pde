class objectperahukecil {
  float x, y; // Posisi karakter
  float vx, vy; // Kecepatan karakter
  ArrayList<float[]> targets; // List untuk target gerakan
  ArrayList<Float> waitTimes; // List untuk durasi diam
  boolean isWaiting = false;
  float waitStartTime = 0;
  float currentWaitTime = 0;
  
  objectperahukecil(float x, float y) {
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
  scale(0.7);

  // First path
   fill(color(159, 115, 33));
  beginShape();
  vertex(31.0038, 199.439);
  bezierVertex(81.111, 203.635, 189.809, 209.511, 207.837, 199.439);
  bezierVertex(220.528, 192.348, 226.046, 172.543, 231.788, 155.645);
  bezierVertex(142.993, 187.176, 54.1772, 175.717, 20.8689, 166.046);
  bezierVertex(22.5468, 176.891, 25.7696, 191.015, 31.0038, 199.439);
  endShape(CLOSE);

  // Path 2
  fill(color(159, 115, 33));
  beginShape();
  vertex(36.3061, 140.865);
  vertex(19.6037, 155.645);
  bezierVertex(23.4532, 156.435, 27.2532, 157.173, 31.0038, 157.863);
  vertex(40.0178, 148.529);
  vertex(36.3061, 140.865);
  endShape(CLOSE);

  // Path 3
  fill(80, 40, 10);
  beginShape();
  vertex(19.6037, 155.645);
  bezierVertex(19.8218, 158.322, 20.2351, 161.95, 20.8689, 166.046);
  bezierVertex(54.1772, 175.717, 142.993, 187.176, 231.788, 155.645);
  bezierVertex(234.203, 148.54, 235.954, 141.949, 237, 137.033);
  bezierVertex(233.8, 139.609, 229.381, 142.43, 223.744, 145.269);
  bezierVertex(202.487, 155.976, 163.915, 166.774, 108.153, 165.778);
  bezierVertex(106.056, 165.74, 103.935, 165.686, 101.79, 165.614);
  bezierVertex(80.5698, 164.903, 56.9724, 162.638, 31.0038, 157.863);
  bezierVertex(27.2532, 157.173, 23.4532, 156.435, 19.6037, 155.645);
  endShape(CLOSE);

  // Path 4
  fill(color(159, 115, 33));
  beginShape();
  vertex(36.3061, 140.865);
  vertex(40.0178, 148.529);
  bezierVertex(56.207, 149.833, 78.3414, 151.075, 101.79, 151.962);
  vertex(101.79, 142.506);
  bezierVertex(77.1659, 142.098, 53.8288, 141.556, 36.3061, 140.865);
  endShape(CLOSE);

  // Path 5
  fill(color(159, 115, 33));
  beginShape();
  vertex(223.744, 145.269);
  bezierVertex(229.381, 142.43, 233.8, 139.609, 237, 137.033);
  bezierVertex(222.346, 142.762, 163.05, 143.392, 108.153, 142.605);
  vertex(107.88, 152.18);
  vertex(108.153, 152.189);
  bezierVertex(155.439, 153.767, 206.312, 153.217, 223.744, 145.269);
  endShape(CLOSE);

  // Path 6
  fill(color(109, 71, 0));
  beginShape();
  vertex(40.0178, 148.529);
  vertex(31.0038, 157.863);
  bezierVertex(56.9724, 162.638, 80.5698, 164.903, 101.79, 165.614);
  vertex(101.79, 151.962);
  bezierVertex(78.3414, 151.075, 56.207, 149.833, 40.0178, 148.529);
  endShape(CLOSE);

  // Path 7
  fill(color(109, 71, 0));
  beginShape();
  vertex(108.153, 165.778);
  bezierVertex(163.915, 166.774, 202.487, 155.976, 223.744, 145.269);
  bezierVertex(206.312, 153.217, 155.439, 153.767, 108.153, 152.189);
  vertex(108.153, 165.778);
  endShape(CLOSE);

  // Path 8
  fill(color(205, 201, 193));
  beginShape();
  vertex(189.544, 121.542);
  bezierVertex(179.576, 57.6898, 131.13, 33.991, 108.153, 30.1231);
  bezierVertex(122.116, 45.099, 145.216, 83.7505, 125.916, 117.893);
  bezierVertex(146.493, 111.625, 174.711, 116.798, 189.544, 121.542);
  endShape(CLOSE);

  // Path 9
  fill(color(205, 201, 193));
  beginShape();
  vertex(101.79, 46.2719);
  vertex(44.5246, 10.241);
  bezierVertex(47.706, 27.9992, 46.2214, 72.7121, 14.8315, 109.498);
  bezierVertex(40.1944, 108.176, 93.0942, 110.211, 101.79, 128.932);
  vertex(101.79, 46.2719);
  endShape(CLOSE);

  // Path 10
  fill(color(217, 142, 0));
  beginShape();
  vertex(108.153, 20.817);
  bezierVertex(106.244, 17.7515, 103.116, 19.5397, 101.79, 20.817);
  vertex(101.79, 37.5132);
  vertex(44.5246, 0.836288);
  bezierVertex(43.0223, 0.927525, 40.0176, 2.36905, 40.0176, 7.40529);
  vertex(44.5246, 10.241);
  vertex(101.79, 46.2719);
  vertex(101.79, 128.932);
  vertex(14.8315, 109.498);
  vertex(4.22676, 106.761);
  bezierVertex(2.28257, 107.035, -0.810471, 108.513, 2.37094, 112.236);
  vertex(101.79, 135.227);
  vertex(101.79, 142.506);
  vertex(101.79, 151.962);
  vertex(101.79, 165.614);
  bezierVertex(103.935, 165.686, 106.056, 165.74, 108.153, 165.778);
  vertex(108.153, 152.189);
  vertex(107.88, 152.18);
  vertex(108.153, 142.605);
  vertex(108.153, 135.768);
  vertex(189.544, 128.932);
  bezierVertex(193.979, 126.208, 189.544, 121.542, 189.544, 121.542);
  vertex(108.153, 128.932);
  vertex(108.153, 30.1231);
  vertex(108.153, 20.817);
  endShape(CLOSE);

  // Path 11 (Strokes)
  noFill();
  stroke(0);
  beginShape();
  vertex(19.6037, 155.645);
  bezierVertex(19.8218, 158.322, 20.2351, 161.95, 20.8689, 166.046);
  endShape();

  beginShape();
  vertex(19.6037, 155.645);
  vertex(36.3061, 140.865);
  endShape();

  beginShape();
  vertex(19.6037, 155.645);
  bezierVertex(23.4532, 156.435, 27.2532, 157.173, 31.0038, 157.863);
  endShape();

  beginShape();
  vertex(237, 137.033);
  bezierVertex(235.954, 141.949, 234.203, 148.54, 231.788, 155.645);
  endShape();

  beginShape();
  vertex(237, 137.033);
  bezierVertex(233.8, 139.609, 229.381, 142.43, 223.744, 145.269);
  endShape();

  beginShape();
  vertex(237, 137.033);
  bezierVertex(222.346, 142.762, 163.05, 143.392, 108.153, 142.605);
  endShape();

  beginShape();
  vertex(20.8689, 166.046);
  bezierVertex(22.5468, 176.891, 25.7696, 191.015, 31.0038, 199.439);
  bezierVertex(81.111, 203.635, 189.809, 209.511, 207.837, 199.439);
  bezierVertex(220.528, 192.348, 226.046, 172.543, 231.788, 155.645);
  endShape();

  beginShape();
  vertex(20.8689, 166.046);
  bezierVertex(54.1772, 175.717, 142.993, 187.176, 231.788, 155.645);
  endShape();

  beginShape();
  vertex(36.3061, 140.865);
  vertex(40.0178, 148.529);
  endShape();

  beginShape();
  vertex(36.3061, 140.865);
  bezierVertex(53.8288, 141.556, 77.1659, 142.098, 101.79, 142.506);
  endShape();

  beginShape();
  vertex(31.0038, 157.863);
  vertex(40.0178, 148.529);
  endShape();

  beginShape();
  vertex(31.0038, 157.863);
  bezierVertex(56.9724, 162.638, 80.5698, 164.903, 101.79, 165.614);
  endShape();

  beginShape();
  vertex(40.0178, 148.529);
  bezierVertex(56.207, 149.833, 78.3414, 151.075, 101.79, 151.962);
  endShape();

  beginShape();
  vertex(223.744, 145.269);
  bezierVertex(202.487, 155.976, 163.915, 166.774, 108.153, 165.778);
  endShape();

  beginShape();
  vertex(223.744, 145.269);
  bezierVertex(206.312, 153.217, 155.439, 153.767, 108.153, 152.189);
  endShape();

  beginShape();
  vertex(101.79, 166.046);
  vertex(101.79, 165.614);
  endShape();

  beginShape();
  vertex(108.153, 165.778);
  vertex(108.153, 152.189);
  endShape();

  beginShape();
  vertex(108.153, 165.778);
  bezierVertex(106.056, 165.74, 103.935, 165.686, 101.79, 165.614);
  endShape();

  beginShape();
  vertex(108.153, 30.1231);
  vertex(108.153, 20.817);
  bezierVertex(106.244, 17.7515, 103.116, 19.5397, 101.79, 20.817);
  vertex(101.79, 37.5132);
  vertex(44.5246, 0.836288);
  bezierVertex(43.0223, 0.927525, 40.0176, 2.36905, 40.0176, 7.40529);
  vertex(44.5246, 10.241);
  endShape();

  beginShape();
  vertex(108.153, 30.1231);
  bezierVertex(131.13, 33.991, 179.576, 57.6898, 189.544, 121.542);
  endShape();

  beginShape();
  vertex(108.153, 30.1231);
  vertex(108.153, 128.932);
  endShape();

  beginShape();
  vertex(108.153, 30.1231);
  bezierVertex(122.116, 45.099, 145.216, 83.7505, 125.916, 117.893);
  endShape();

  beginShape();
  vertex(189.544, 121.542);
  bezierVertex(174.711, 116.798, 146.493, 111.625, 125.916, 117.893);
  endShape();

  beginShape();
  vertex(189.544, 121.542);
  vertex(108.153, 128.932);
  endShape();

  beginShape();
  vertex(189.544, 121.542);
  bezierVertex(193.979, 126.208, 189.544, 121.542, 189.544, 128.932);
  vertex(108.153, 135.768);
  vertex(108.153, 142.605);
  endShape();

  beginShape();
  vertex(108.153, 128.932);
  bezierVertex(112.574, 123.466, 118.786, 120.065, 125.916, 117.893);
  endShape();

  beginShape();
  vertex(44.5246, 10.241);
  vertex(101.79, 46.2719);
  vertex(101.79, 128.932);
  endShape();

  beginShape();
  vertex(44.5246, 10.241);
  bezierVertex(47.706, 27.9992, 46.2214, 72.7121, 14.8315, 109.498);
  endShape();

  beginShape();
  vertex(14.8315, 109.498);
  bezierVertex(40.1944, 108.176, 93.0942, 110.211, 101.79, 128.932);
  endShape();

  beginShape();
  vertex(14.8315, 109.498);
  vertex(101.79, 128.932);
  endShape();

  beginShape();
  vertex(14.8315, 109.498);
  vertex(4.22676, 106.761);
  bezierVertex(2.28257, 107.035, -0.810471, 108.513, 2.37094, 112.236);
  vertex(101.79, 135.227);
  vertex(101.79, 142.506);
  endShape();

  beginShape();
  vertex(101.79, 142.506);
  vertex(101.79, 151.962);
  endShape();

  beginShape();
  vertex(108.153, 142.605);
  vertex(107.88, 152.18);
  endShape();

  beginShape();
  vertex(107.88, 152.18);
  bezierVertex(107.971, 152.183, 108.062, 152.186, 108.153, 152.189);
  endShape();

  beginShape();
  vertex(107.88, 152.18);
  vertex(108.153, 152.189);
  endShape();

  beginShape();
  vertex(101.79, 151.962);
  vertex(101.79, 165.614);
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
