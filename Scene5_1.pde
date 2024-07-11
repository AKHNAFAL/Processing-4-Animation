ObjectCharLeft arka5;
objectfoto Foto;

class scene9 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  scene9(PApplet parent) {
    dub = new SoundFile(parent, "Rev7.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    dub.play();

    // == Background == //
    drawRoom();

    // == Deklarasi object == // Titik awal muncylnya Objek
    Foto = new objectfoto(800, 250);
    arka5 = new ObjectCharLeft(1400, 370);
    
    // == Object controler == //
    Foto.pause(800, 250, 10000);
    Foto.moveTo(700, 250, 5);
    Foto.pause(700, 250, 5000);
    
    arka5.moveTo(1100, 370, 3);
    arka5.pause(1100, 370, 2000);
    arka5.moveTo(1000, 300, 4);
    arka5.pause(1000, 300, 4000);
    arka5.moveTo(500, 420, 4);
    arka5.pause(500, 420, 1000);
  }

  void draw() {
    int duration = 650; // Durasi dalam frame 650
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }

    // ==== Gambar konten scene1 di sini ==== //
    drawRoom();

    // Update dan gambar karakter
    Foto.update();
    Foto.display();
    arka5.update();
    arka5.display();

  }
  
  void stop() {
    dub.stop();
  }
}

  void drawRoom() {
    noFill();
    stroke(0);
    strokeWeight(1);
        // First Path
        fill(110, 74, 52); // #6E4A34
        beginShape();
        vertex(1, 1);
        vertex(316.5, 199.5);
        vertex(1007, 199.5);
        vertex(1281, 1);
        endShape(CLOSE);
        
        // Second Path
        fill(110, 74, 52); // #6E4A34
        beginShape();
        vertex(1281, 627.5);
        vertex(1154.5, 583.598);
        vertex(1141.25, 579);
        vertex(1001.5, 530.5);
        vertex(316.5, 530.5);
        vertex(1, 627.5);
        vertex(1, 721);
        vertex(1281, 721);
        endShape(CLOSE);
        
        // Third Path
        fill(151, 108, 82); // #976C52
        beginShape();
        vertex(1007, 199.5);
        vertex(316.5, 199.5);
        vertex(316.5, 530.5);
        vertex(1001.5, 530.5);
        endShape(CLOSE);
      
        // Fourth Path
        fill(151, 108, 82); // #976C52
        beginShape();
        vertex(316.5, 199.5);
        vertex(1, 1);
        vertex(1, 627.5);
        vertex(316.5, 530.5);
        endShape(CLOSE);
      
        // Fifth Path
        fill(151, 108, 82); // #976C52
        beginShape();
        vertex(1007, 199.5);
        vertex(1281, 1);
        vertex(1281, 87);
        vertex(1141.25, 173);
        vertex(1141.25, 579);
        vertex(1001.5, 530.5);
        endShape(CLOSE);
      
        // Sixth Path
        fill(45, 19, 3); // #2D1303
        beginShape();
        vertex(1154.5, 583.598);
        vertex(1141.25, 579);
        vertex(1141.25, 173);
        vertex(1281, 87);
        vertex(1281, 106.5);
        vertex(1154.5, 182);
        endShape(CLOSE);
      
        // Seventh Path
        fill(21, 39, 74); // #15274A
        beginShape();
        vertex(1281, 106.5);
        vertex(1154.5, 182);
        vertex(1281, 182);
        endShape(CLOSE);
      
        // Eighth Path
        fill(167, 131, 110); // #A7836E
        beginShape();
        vertex(1154.5, 583.598);
        vertex(1281, 627.5);
        vertex(1281, 589);
        vertex(1154.5, 583.598);
        endShape(CLOSE);
      
        // Ninth Path
        fill(110, 74, 52); // #6E4A34
        beginShape();
        vertex(1154.5, 583.598);
        vertex(1154.5, 182);
        vertex(1281, 182);
        vertex(1281, 589);
        endShape(CLOSE);
      
        // Tenth Path
        fill(45, 19, 3); // #2D1303
        beginShape();
        vertex(1264, 380.5);
        vertex(1264, 388);
        vertex(1278.5, 388);
        vertex(1278.5, 380.5);
        endShape(CLOSE);
        
        // Eleventh Path (House shape)
        fill(110, 74, 52); // #6E4A34
        beginShape();
        vertex(112.304, 377.906);
        vertex(133.289, 377.906);
        vertex(133.289, 519.823);
        vertex(255.409, 519.823);
        vertex(255.409, 619.141);
        vertex(255.409, 628.514);
        vertex(233.602, 628.514);
        vertex(233.602, 613.268);
        vertex(233.602, 542.404);
        vertex(226.888, 542.404);
        vertex(149.831, 542.404);
        vertex(137.322, 542.404);
        vertex(133.289, 542.404);
        vertex(133.289, 628.514);
        vertex(112.304, 628.514);
        endShape(CLOSE);
        
        // Twelfth Path
        fill(89, 52, 30); // #59341E
        beginShape();
        vertex(137.322, 542.404);
        vertex(137.322, 613.268);
        vertex(149.831, 613.268);
        vertex(149.831, 542.404);
        endShape(CLOSE);
        
        // Thirteenth Path
        fill(89, 52, 30); // #59341E
        beginShape();
        vertex(233.602, 542.404);
        vertex(226.888, 542.404);
        vertex(226.888, 613.268);
        vertex(233.602, 613.268);
        endShape(CLOSE);
        
        // Fourteenth Path
        fill(110, 74, 52); // #6E4A34
        beginShape();
        vertex(649.944, 468.36);
        bezierVertex(649.944, 476.3, 642.547, 483.786, 629.46, 490.371);
        bezierVertex(618.071, 496.102, 602.374, 501.15, 583.494, 505.22);
        bezierVertex(577.78, 506.451, 571.774, 507.594, 565.508, 508.638);
        bezierVertex(559.416, 509.654, 553.078, 510.577, 546.522, 511.4);
        bezierVertex(526.465, 513.918, 504.375, 515.501, 481.071, 515.932);
        bezierVertex(476.781, 516.012, 472.449, 516.052, 468.081, 516.052);
        bezierVertex(463.713, 516.052, 459.382, 516.012, 455.091, 515.932);
        bezierVertex(431.788, 515.501, 409.697, 513.918, 389.64, 511.4);
        bezierVertex(382.725, 510.532, 376.052, 509.552, 369.655, 508.471);
        bezierVertex(363.749, 507.472, 358.078, 506.386, 352.668, 505.22);
        bezierVertex(333.511, 501.09, 317.63, 495.953, 306.203, 490.118);
        bezierVertex(293.428, 483.594, 286.218, 476.198, 286.218, 468.36);
        endShape(CLOSE);
      
        // Fifteenth Path
        fill(110, 74, 52); // #6E4A34
        beginShape();
        vertex(286.218, 468.36);
        vertex(286.218, 629.508);
        vertex(306.203, 629.508);
        vertex(306.203, 490.118);
        bezierVertex(293.428, 483.594, 286.218, 476.198, 286.218, 468.36);
        endShape(CLOSE);
      
        // Sixteenth Path
        fill(110, 74, 52); // #6E4A34
        beginShape();
        vertex(649.944, 629.508);
        vertex(649.944, 468.36);
        bezierVertex(649.944, 476.3, 642.547, 483.786, 629.46, 490.371);
        vertex(629.46, 629.508);
        endShape(CLOSE);
        
        // Seventeenth Path
        fill(89, 52, 30); // #59341E
        beginShape();
        vertex(389.64, 511.4);
        bezierVertex(382.725, 510.532, 376.052, 509.552, 369.655, 508.471);
        vertex(369.655, 604.407);
        vertex(389.64, 604.407);
        endShape(CLOSE);
      
        // Eighteenth Path
        fill(89, 52, 30); // #59341E
        beginShape();
        vertex(565.508, 508.638);
        bezierVertex(559.416, 509.654, 553.078, 510.577, 546.522, 511.4);
        vertex(546.522, 604.407);
        vertex(565.508, 604.407);
        endShape(CLOSE);
  }
