ObjectChar arka;
objectperahu perahu;

class scene1 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene1(PApplet parent) {
    dub = new SoundFile(parent, "Rev0.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    
    // === HAPUS KOMENTAR BERIKUT UNTUK MULAI PAKAI BACKSOUND === //
    dub.play();
    
    // == Background == //
    drawBackground();
    
    // == Deklarasi object == //
    arka = new ObjectChar(-400, 400);
    perahu = new objectperahu(500, 100);
    
    // == Object controler == //
    arka.pause(-400, 400, 5000);
    arka.moveTo(500, 400, 2);
    arka.pause(500, 400, 8000);
    arka.moveTo(600, 250, 6);
    arka.moveTo(700, 340, 6);
    arka.moveTo(1500, 340, 3);
    
    perahu.pause(500, 100, 23500);
    perahu.moveTo(1500, 100, 2);
  }

  void draw() {
    int duration = 1500; // Durasi dalam frame 1500
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    
    // ==== Gambar konten scene1 di sini ==== //
    drawBackground();
    drawSun(0, 0);
    drawCloudMove(-200, 100);
    drawTerra();
    drawTree(300, 90);
    drawTree(350, 70);
    drawTree(400, 100);
    drawTree(500, 90);
    drawTree(600, 70);
    
    int frame = (frameCount % 20 < 10) ? 1 : 2; // Alternate frames every 10 frames
    bendera1(480, 130, frame);
    
    drawHouse(-240, -50);
    
    // Update dan gambar karakter
    perahu.update();
    perahu.display();
    
    arka.update();
    arka.display();
  }
  
    
  void stop() {
    dub.stop();
  }
  
  void bendera1(float x, float y, int frame) {
  if (frame == 1) {
    drawFrame1(x, y+5);
  } else {
    drawFrame2(x+1, y);
  }
  //drawFrame1(x, y+6);
  //drawFrame2(x, y);
}
  
  void drawFrame1(float x, float y) {
  noStroke();
  // First path - #545454
  fill(#545454);
  beginShape();
  vertex(x + 6.50009, y + 8.49998);
  vertex(x + 6.50009, y + 250);
  vertex(x + 15.5001, y + 250);
  vertex(x + 15.5001, y + 83);
  vertex(x + 15.5001, y + 45.75);
  vertex(x + 15.5001, y + 8.49998);
  endShape(CLOSE);

  // Second path - #4B0000
  fill(#4B0000);
  beginShape();
  vertex(x + 6.50009, y + 8.49998);
  vertex(x + 15.5001, y + 8.49998);
  bezierVertex(x + 17.8334, y + 6.33331, x + 20.3001, y + 1.79998, x + 11.5001, y + 0.999982);
  bezierVertex(x + 2.70009, y + 0.199982, x + 4.50009, y + 5.66664, x + 6.50009, y + 8.49998);
  endShape(CLOSE);

  // Third path - #FF0000
  fill(#FF0000);
  beginShape();
  vertex(x + 91.5, y + 23);
  bezierVertex(x + 57.5, y + 34.6, x + 26.6667, y + 18.1667, x + 15.5001, y + 8.49998);
  vertex(x + 15.5001, y + 45.75);
  bezierVertex(x + 25.5001, y + 56.5833, x + 54.7, y + 75, x + 91.5, y + 62);
  bezierVertex(x + 137.5, y + 45.75, x + 145.5, y + 57, x + 162.5, y + 67.25);
  vertex(x + 162.5, y + 23);
  bezierVertex(x + 153, y + 18.1667, x + 125.5, y + 11.4, x + 91.5, y + 23);
  endShape(CLOSE);

  // Fourth path - white
  fill(255);
  beginShape();
  vertex(x + 91.5, y + 96.5);
  bezierVertex(x + 124.3, y + 84.5, x + 152.5, y + 101.5, x + 162.5, y + 111.5);
  vertex(x + 162.5, y + 67.25);
  bezierVertex(x + 145.5, y + 57, x + 137.5, y + 45.75, x + 91.5, y + 62);
  bezierVertex(x + 54.7, y + 75, x + 25.5001, y + 56.5833, x + 15.5001, y + 45.75);
  vertex(x + 15.5001, y + 83);
  bezierVertex(x + 27.1667, y + 92.5, x + 58.7, y + 108.5, x + 91.5, y + 96.5);
  endShape(CLOSE);
}

void drawFrame2(float x, float y) {
  noStroke();
  // First path - #545454
  fill(#545454);
  beginShape();
  vertex(x + 5.64365, y + 13.5792);
  vertex(x + 5.64365, y + 255.079);
  vertex(x + 14.6436, y + 255.079);
  vertex(x + 14.6436, y + 88.0792);
  vertex(x + 14.6436, y + 50.8292);
  vertex(x + 14.6436, y + 13.5792);
  endShape(CLOSE);

  // Second path - #4B0000
  fill(#4B0000);
  beginShape();
  vertex(x + 5.64365, y + 13.5792);
  vertex(x + 14.6436, y + 13.5792);
  bezierVertex(x + 16.977, y + 11.4125, x + 19.4436, y + 6.87919, x + 10.6436, y + 6.07919);
  bezierVertex(x + 1.84365, y + 5.27919, x + 3.64365, y + 10.7459, x + 5.64365, y + 13.5792);
  endShape(CLOSE);

  // Third path - #FF0000
  fill(#FF0000);
  beginShape();
  vertex(x + 14.6436, y + 13.5792);
  vertex(x + 14.6436, y + 50.8292);
  bezierVertex(x + 29.7624, y + 41.2723, x + 69.2, y + 27.8926, x + 106, y + 50.8292);
  bezierVertex(x + 142.8, y + 73.7658, x + 158, y + 60.3861, x + 161, y + 50.8292);
  vertex(x + 161, y + 13.5792);
  bezierVertex(x + 156.167, y + 23.2195, x + 138.4, y + 36.7159, x + 106, y + 13.5792);
  bezierVertex(x + 73.6, y + -9.55755, x + 31.5958, y + 3.93888, x + 14.6436, y + 13.5792);
  endShape(CLOSE);

  // Fourth path - white
  fill(255);
  beginShape();
  vertex(x + 14.6436, y + 50.8292);
  vertex(x + 14.6436, y + 88.0792);
  bezierVertex(x + 31.9291, y + 82.8861, x + 71.7, y + 75.6158, x + 92.5, y + 88.0792);
  bezierVertex(x + 113.3, y + 100.543, x + 146.833, y + 93.2723, x + 161, y + 88.0792);
  vertex(x + 161, y + 50.8292);
  bezierVertex(x + 158, y + 60.3861, x + 142.8, y + 73.7658, x + 106, y + 50.8292);
  bezierVertex(x + 69.2, y + 27.8926, x + 29.7624, y + 41.2723, x + 14.6436, y + 50.8292);
  endShape(CLOSE);
}
  
}
  
