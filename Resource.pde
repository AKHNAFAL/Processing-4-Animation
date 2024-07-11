float cloudX; // Global variable to track the cloud's x position
float cloudY; // Global variable to track the cloud's y position // Initial x position of the cloud (off-screen to the left)

void drawCloudMove(float startX, float startY) {
  // Initialize cloud position only once
  if (frameCount == 1) {
    cloudX = startX;
    cloudY = startY;
  }
  
  cloudX += 1; // Move the cloud to the right by 1 pixel per frame
  if (cloudX > width) {
    cloudX = -100; // Reset cloud position to the left when it goes off-screen to the right
  }
  drawCloud(cloudX, cloudY); // Draw the cloud at the current position
}

void drawCloud(float x, float y) {
  fill(255, 255, 255, 150); // 204 is the opacity value (0.8 * 255)
  noStroke();
  
  beginShape();
  vertex(x + 59.8653, y + 34.9302 - 69); // Adjusted y position to keep it on screen
  bezierVertex(x + 14.6895, y + 48.2429 - 69, x - 48.5566, y + 82.6961 - 69, x + 59.8653, y + 114.008 - 69);
  bezierVertex(x + 74.481, y + 132.113 - 69, x + 114.236, y + 157.46 - 69, x + 156.329, y + 114.008 - 69);
  bezierVertex(x + 174.665, y + 129.45 - 69, x + 220.266, y + 151.07 - 69, x + 255.981, y + 114.008 - 69);
  bezierVertex(x + 289.199, y + 96.4348 - 69, x + 335.703, y + 56.0175 - 69, x + 255.981, y + 34.9302 - 69);
  bezierVertex(x + 238.708, y + 12.5649 - 69, x + 197.944, y -18.7466 - 69, x + 173.071, y + 34.9302 - 69);
  bezierVertex(x + 151.28, y + 8.57104 - 69, x + 98.1318, y -28.3317 - 69, x + 59.8653, y + 34.9302 - 69);
  endShape(CLOSE);
}

void drawBackground() {
  // Menggambar gradien langit
    PVector startColor = hexToPVector("#9BD3DC");
    PVector middleColor = hexToPVector("#CCE7E1");
    PVector endColor = hexToPVector("#FAEFCE");
    for (int y = 0; y < height; y++) {
      float t = map(y, 0, height / 2, 0, 1);
      if (y < height / 2) {
        stroke(lerpColor(startColor, middleColor, t));
      } else {
        t = map(y, height / 2, height, 0, 1);
        stroke(lerpColor(middleColor, endColor, t));
      }
      line(0, y, width, y);
    }
  
}

color lerpColor(PVector color1, PVector color2, float t) {
    return color(
      lerp(color1.x, color2.x, t),
      lerp(color1.y, color2.y, t),
      lerp(color1.z, color2.z, t)
    );
  }
  
  PVector hexToPVector(String hex) {
    int c = unhex(hex.substring(1));
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    return new PVector(r, g, b);
  }
  
  void drawSun(float x, float y) {
  pushMatrix();
  translate(x, y);

  // Circle 1
  fill(253, 238, 108, 63.75);
  ellipse(1140, 112, 204, 204); // opacity 0.25

  // Circle 2
  fill(253, 238, 108, 127.5);
  ellipse(1139, 111, 166, 166); // opacity 0.5

  // Circle 3
  fill(253, 238, 108);
  ellipse(1140, 112, 136, 136);

  popMatrix();
}

void drawTerra() {
  noStroke();

  // First path
  beginShape();
  fill(157, 217, 242);
  vertex(842.22, 325);
  bezierVertex(879.42, 316.6, 985.72, 307.5, 1034.22, 304);
  vertex(1280.22, 306);
  vertex(1280.22, 720);
  vertex(951.72, 720);
  bezierVertex(950.054, 715.833, 936.92, 707.5, 897.72, 707.5);
  bezierVertex(898.627, 700.833, 892.497, 689.5, 860.72, 697.5);
  bezierVertex(853.054, 691.333, 829.02, 679.9, 794.22, 683.5);
  bezierVertex(794.054, 681, 788.52, 675.3, 767.72, 672.5);
  bezierVertex(745.554, 671.167, 697.42, 666.7, 682.22, 659.5);
  bezierVertex(686.387, 657.833, 694.22, 652.2, 692.22, 643);
  bezierVertex(690.22, 633.8, 675.054, 639.167, 667.72, 643);
  bezierVertex(661.054, 644.833, 644.52, 645.7, 631.72, 634.5);
  bezierVertex(618.92, 623.3, 616.387, 617.833, 616.72, 616.5);
  bezierVertex(601.887, 618.167, 569.62, 620.5, 559.22, 616.5);
  bezierVertex(546.22, 611.5, 578.22, 608.5, 546.22, 585);
  bezierVertex(539.72, 580.167, 519.02, 572.5, 488.22, 580.5);
  bezierVertex(449.72, 590.5, 450.22, 572, 436.72, 567.5);
  bezierVertex(425.92, 563.9, 399.554, 564, 387.72, 564.5);
  bezierVertex(382.054, 564.833, 365.02, 561.8, 342.22, 547);
  bezierVertex(349.794, 543, 359.897, 534.4, 339.72, 532);
  bezierVertex(340.72, 528.667, 334.62, 521.2, 302.22, 518);
  bezierVertex(269.82, 514.8, 276.054, 501.667, 283.22, 495.5);
  bezierVertex(286.054, 491.667, 285.92, 484.2, 262.72, 485);
  bezierVertex(239.52, 485.8, 268.054, 467, 285.22, 457.5);
  bezierVertex(299.887, 448.5, 336.02, 428.6, 363.22, 421);
  bezierVertex(368.72, 428, 384.72, 402.5, 417.72, 408);
  bezierVertex(444.12, 412.4, 455.387, 402.5, 457.72, 397);
  bezierVertex(476.887, 393.667, 517.72, 386.9, 527.72, 386.5);
  bezierVertex(537.72, 386.1, 527.887, 380.667, 521.72, 378);
  vertex(590.22, 378);
  bezierVertex(611.42, 378, 670.054, 369.333, 696.72, 365);
  vertex(683.72, 360);
  bezierVertex(697.387, 358, 726.52, 354.3, 733.72, 355.5);
  bezierVertex(740.92, 356.7, 736.72, 352.667, 733.72, 350.5);
  bezierVertex(746.12, 350.5, 776.554, 348.5, 790.22, 347.5);
  bezierVertex(744.397, 343.1, 805.794, 330.667, 842.22, 325);
  endShape(CLOSE);

  // Second path
  beginShape();
  fill(249, 231, 162);
  vertex(842.22, 325);
  bezierVertex(879.42, 316.6, 985.72, 307.5, 1034.22, 304);
  vertex(0, 304);
  vertex(0, 720);
  vertex(951.72, 720);
  bezierVertex(950.054, 715.833, 936.92, 707.5, 897.72, 707.5);
  bezierVertex(898.627, 700.833, 892.497, 689.5, 860.72, 697.5);
  bezierVertex(853.054, 691.333, 829.02, 679.9, 794.22, 683.5);
  bezierVertex(794.054, 681, 788.52, 675.3, 767.72, 672.5);
  bezierVertex(745.554, 671.167, 697.42, 666.7, 682.22, 659.5);
  bezierVertex(686.387, 657.833, 694.22, 652.2, 692.22, 643);
  bezierVertex(690.22, 633.8, 675.054, 639.167, 667.72, 643);
  bezierVertex(661.054, 644.833, 644.52, 645.7, 631.72, 634.5);
  bezierVertex(618.92, 623.3, 616.387, 617.833, 616.72, 616.5);
  bezierVertex(601.887, 618.167, 569.62, 620.5, 559.22, 616.5);
  bezierVertex(546.22, 611.5, 578.22, 608.5, 546.22, 585);
  bezierVertex(539.72, 580.167, 519.02, 572.5, 488.22, 580.5);
  bezierVertex(449.72, 590.5, 450.22, 572, 436.72, 567.5);
  bezierVertex(425.92, 563.9, 399.554, 564, 387.72, 564.5);
  bezierVertex(382.054, 564.833, 365.02, 561.8, 342.22, 547);
  bezierVertex(349.794, 543, 359.897, 534.4, 339.72, 532);
  bezierVertex(340.72, 528.667, 334.62, 521.2, 302.22, 518);
  bezierVertex(269.82, 514.8, 276.054, 501.667, 283.22, 495.5);
  bezierVertex(286.054, 491.667, 285.92, 484.2, 262.72, 485);
  bezierVertex(239.52, 485.8, 268.054, 467, 285.22, 457.5);
  bezierVertex(299.887, 448.5, 336.02, 428.6, 363.22, 421);
  bezierVertex(368.72, 428, 384.72, 402.5, 417.72, 408);
  bezierVertex(444.12, 412.4, 455.387, 402.5, 457.72, 397);
  bezierVertex(476.887, 393.667, 517.72, 386.9, 527.72, 386.5);
  bezierVertex(537.72, 386.1, 527.887, 380.667, 521.72, 378);
  vertex(590.22, 378);
  bezierVertex(611.42, 378, 670.054, 369.333, 696.72, 365);
  vertex(683.72, 360);
  bezierVertex(697.387, 358, 726.52, 354.3, 733.72, 355.5);
  bezierVertex(740.92, 356.7, 736.72, 352.667, 733.72, 350.5);
  bezierVertex(746.12, 350.5, 776.554, 348.5, 790.22, 347.5);
  bezierVertex(744.397, 343.1, 805.794, 330.667, 842.22, 325);
  endShape(CLOSE);
}

void drawTree(float x, float y) {
  pushMatrix();
  translate(x, y);

  // Path 1
  beginShape();
  fill(158, 110, 69);
  vertex(60.5, 106.5);
  bezierVertex(12.5, 165.3, 0.5, 235, 0.5, 262.5);
  vertex(13.5, 262.5);
  bezierVertex(3.65182, 206.992, 47.3697, 135.973, 88.1333, 86.112);
  bezierVertex(82.1754, 90.4858, 76.6559, 94.0638, 72.5, 96.5);
  bezierVertex(71.5369, 96.0185, 70.7574, 95.4306, 70.137, 94.7601);
  bezierVertex(67.1019, 98.4353, 63.8926, 102.344, 60.5, 106.5);
  endShape(CLOSE);

  // Path 2
  beginShape();
  fill(161, 122, 81);
  vertex(104.099, 55.0615);
  bezierVertex(112.287, 50.7918, 120.48, 46.8056, 126.5, 44.0001);
  bezierVertex(124.729, 44.7591, 118.711, 46.2715, 110.571, 48.1325);
  bezierVertex(108.753, 50.0107, 106.61, 52.2992, 104.099, 55.0615);
  endShape(CLOSE);

  // Path 3
  beginShape();
  fill(49, 86, 64);
  vertex(126.5, 44.0001);
  bezierVertex(118.5, 33.8334, 98.3, 15.0001, 81.5, 21.0001);
  bezierVertex(64.7, 27.0001, 62.5, 30.8334, 63.5, 32.0001);
  bezierVertex(76.5, 29.5, 107.3, 28.4, 126.5, 44.0001);
  endShape(CLOSE);

  // Path 4
  beginShape();
  fill(49, 86, 64);
  vertex(126.5, 44.0001);
  vertex(119.5, 41.0001);
  bezierVertex(105.5, 38.8334, 71.9, 39.8001, 49.5, 61.0001);
  bezierVertex(65.4542, 57.8092, 92.9715, 52.1562, 110.571, 48.1325);
  bezierVertex(118.711, 46.2715, 124.729, 44.7591, 126.5, 44.0001);
  endShape(CLOSE);

  // Path 5
  beginShape();
  fill(49, 86, 64);
  vertex(72.5, 76);
  bezierVertex(69.568, 80.5447, 65.6043, 89.8606, 70.137, 94.7601);
  bezierVertex(85.5877, 76.0505, 96.5203, 63.3983, 104.099, 55.0615);
  bezierVertex(88.9398, 62.9669, 73.7986, 71.8445, 72.5, 76);
  endShape(CLOSE);

  // Path 6
  beginShape();
  fill(49, 86, 64);
  vertex(72.5, 96.5);
  bezierVertex(76.6559, 94.0638, 82.1754, 90.4858, 88.1333, 86.112);
  bezierVertex(102.007, 69.1418, 115.539, 54.6226, 126.5, 44.0001);
  bezierVertex(120.48, 46.8056, 112.287, 50.7918, 104.099, 55.0615);
  bezierVertex(96.5203, 63.3983, 85.5877, 76.0505, 70.137, 94.7601);
  bezierVertex(70.7574, 95.4306, 71.5369, 96.0185, 72.5, 96.5);
  endShape(CLOSE);

  // Path 7
  beginShape();
  fill(49, 86, 64);
  vertex(88.1333, 86.112);
  bezierVertex(102.963, 75.2255, 120.508, 59.4093, 126.5, 44.0001);
  bezierVertex(115.539, 54.6226, 102.007, 69.1418, 88.1333, 86.112);
  endShape(CLOSE);

  // Path 8
  beginShape();
  fill(49, 86, 64);
  vertex(126.5, 44.0001);
  bezierVertex(134.833, 57.8334, 151.3, 86.6, 150.5, 91.0001);
  bezierVertex(149.5, 96.5001, 180.5, 44.0001, 126.5, 44.0001);
  endShape(CLOSE);

  // Path 9
  beginShape();
  fill(49, 86, 64);
  vertex(126.5, 44.0001);
  bezierVertex(137.167, 38.1667, 162.2, 27.6, 177, 32.0001);
  bezierVertex(162.5, 20.3334, 132.1, 6.40011, 126.5, 44.0001);
  endShape(CLOSE);

  // Path 10
  beginShape();
  fill(49, 86, 64);
  vertex(126.5, 44.0001);
  bezierVertex(125.333, 33.0001, 121.3, 9.80007, 114.5, 5.00007);
  bezierVertex(107.7, 0.20007, 97.6667, 7.02888e-05, 93.5, 0.50007);
  bezierVertex(101.167, 5.50006, 118.5, 21.2, 126.5, 44.0001);
  endShape(CLOSE);

  // Path 11
  beginShape();
  fill(49, 86, 64);
  vertex(126.5, 44.0001);
  bezierVertex(121.667, 58.1667, 112.5, 88.5, 114.5, 96.5);
  bezierVertex(116.167, 98.1667, 120.9, 102.5, 126.5, 106.5);
  bezierVertex(130.5, 102.167, 136.1, 83.6001, 126.5, 44.0001);
  endShape(CLOSE);

  popMatrix();
}

void drawHouse(float x, float y) {
  pushMatrix();
  translate(x, y);

  // Path 1
  beginShape();
  fill(223, 185, 112);
  vertex(466.5, 252);
  vertex(478.5, 264);
  vertex(498, 264);
  vertex(519.5, 264);
  vertex(541, 264);
  vertex(555.5, 264);
  vertex(613, 264);
  vertex(630.5, 264);
  vertex(672, 264);
  vertex(547.5, 125);
  vertex(387.5, 125);
  vertex(354, 125);
  vertex(466.5, 252);
  endShape(CLOSE);

  // Path 2
  beginShape();
  fill(133, 93, 16);
  vertex(324, 252);
  vertex(466.5, 252);
  vertex(354, 125);
  vertex(260, 252);
  vertex(278.5, 252);
  vertex(324, 252);
  endShape(CLOSE);

  // Path 3
  beginShape();
  fill(176, 137, 62);
  vertex(324, 252);
  vertex(324, 330);
  vertex(356, 330);
  vertex(375.5, 330);
  vertex(414.5, 330);
  vertex(424, 330);
  vertex(441.25, 330);
  vertex(451.5, 330);
  vertex(458.5, 330);
  vertex(471, 330);
  vertex(478.5, 330);
  vertex(510, 330);
  vertex(517, 330);
  vertex(526.5, 330);
  vertex(555.5, 330);
  vertex(555.5, 264);
  vertex(541, 264);
  vertex(541, 275.5);
  vertex(541, 292.5);
  vertex(519.5, 292.5);
  vertex(519.5, 275.5);
  vertex(498, 275.5);
  vertex(498, 292.5);
  vertex(519.5, 292.5);
  vertex(519.5, 264);
  vertex(478.5, 264);
  vertex(466.5, 252);
  vertex(324, 252);
  endShape(CLOSE);

  // Path 4
  beginShape();
  fill(64, 46, 12);
  vertex(541, 275.5);
  vertex(541, 264);
  vertex(519.5, 264);
  vertex(519.5, 275.5);
  vertex(527.896, 275.5);
  vertex(532.604, 275.5);
  vertex(541, 275.5);
  endShape(CLOSE);

  // Path 5
  beginShape();
  fill(64, 46, 12);
  vertex(541, 292.5);
  vertex(541, 275.5);
  vertex(527.896, 275.5);
  vertex(532.604, 275.5);
  vertex(519.5, 275.5);
  vertex(519.5, 292.5);
  vertex(541, 292.5);
  endShape(CLOSE);

  // Path 6
  beginShape();
  fill(64, 46, 12);
  vertex(498, 275.5);
  vertex(498, 292.5);
  vertex(519.5, 292.5);
  vertex(519.5, 275.5);
  vertex(498, 275.5);
  endShape(CLOSE);

  // Path 7
  beginShape();
  fill(64, 46, 12);
  vertex(498, 264);
  vertex(498, 275.5);
  vertex(519.5, 275.5);
  vertex(519.5, 264);
  vertex(498, 264);
  endShape(CLOSE);

  // Path 8
  beginShape();
  fill(64, 46, 12);
  vertex(555.5, 330);
  vertex(602.375, 330);
  vertex(613, 330);
  vertex(613, 264);
  vertex(555.5, 264);
  vertex(555.5, 330);
  endShape(CLOSE);

  // Path 9
  beginShape();
  fill(176, 137, 62);
  vertex(613, 330);
  vertex(630.5, 330);
  vertex(630.5, 264);
  vertex(613, 264);
  vertex(613, 330);
  endShape(CLOSE);

  // Path 10
  beginShape();
  fill(176, 137, 62);
  vertex(570.5, 350.8);
  vertex(578.399, 349.545);
  vertex(613.13, 344.026);
  vertex(622.737, 342.5);
  vertex(617.868, 336.25);
  vertex(608.438, 337.907);
  vertex(574.38, 343.893);
  vertex(566.516, 345.275);
  vertex(570.5, 350.8);
  endShape(CLOSE);

  // Path 11
  beginShape();
  fill(176, 137, 62);
  vertex(586.87, 373.5);
  vertex(594.551, 371.899);
  vertex(628.995, 364.718);
  vertex(638.5, 362.736);
  vertex(632.474, 355);
  vertex(623.234, 357.205);
  vertex(589.713, 365.203);
  vertex(582.183, 367);
  vertex(586.87, 373.5);
  endShape(CLOSE);

  // Path 12
  beginShape();
  fill(176, 137, 62);
  vertex(602.375, 395);
  vertex(610.186, 393.539);
  vertex(645.964, 386.848);
  vertex(655.842, 385);
  vertex(650.5, 378.142);
  vertex(640.824, 380.145);
  vertex(605.754, 387.405);
  vertex(598.048, 389);
  vertex(602.375, 395);
  endShape(CLOSE);

  // Path 13
  beginShape();
  fill(176, 137, 62);
  vertex(621.75, 421.867);
  vertex(629.584, 420.386);
  vertex(666.352, 413.438);
  vertex(676.5, 411.52);
  vertex(672, 405.743);
  vertex(661.881, 407.606);
  vertex(625.226, 414.355);
  vertex(617.375, 415.8);
  vertex(621.75, 421.867);
  endShape(CLOSE);

  // Path 14
  beginShape();
  fill(176, 137, 62);
  vertex(570.5, 350.8);
  vertex(582.183, 367);
  vertex(589.713, 365.203);
  vertex(578.399, 349.545);
  vertex(570.5, 350.8);
  endShape(CLOSE);

  // Path 15
  beginShape();
  fill(176, 137, 62);
  vertex(555.5, 330);
  vertex(562.531, 339.75);
  vertex(566.516, 345.275);
  vertex(574.38, 343.893);
  vertex(564.5, 330);
  vertex(555.5, 330);
  endShape(CLOSE);

  // Path 16
  beginShape();
  fill(176, 137, 62);
  vertex(617.868, 336.25);
  vertex(613, 330);
  vertex(602.375, 330);
  vertex(608.438, 337.907);
  vertex(617.868, 336.25);
  endShape(CLOSE);

  // Path 17
  beginShape();
  fill(176, 137, 62);
  vertex(632.474, 355);
  vertex(622.737, 342.5);
  vertex(613.13, 344.026);
  vertex(623.234, 357.205);
  vertex(632.474, 355);
  endShape(CLOSE);

  // Path 18
  beginShape();
  fill(176, 137, 62);
  vertex(640.824, 380.145);
  vertex(650.5, 378.142);
  vertex(638.5, 362.736);
  vertex(628.995, 364.718);
  vertex(640.824, 380.145);
  endShape(CLOSE);

  // Path 19
  beginShape();
  fill(176, 137, 62);
  vertex(661.881, 407.606);
  vertex(672, 405.743);
  vertex(655.842, 385);
  vertex(645.964, 386.848);
  vertex(661.881, 407.606);
  endShape(CLOSE);

  // Path 20
  beginShape();
  fill(176, 137, 62);
  vertex(687, 425);
  vertex(676.5, 411.52);
  vertex(666.352, 413.438);
  vertex(676.5, 426.673);
  vertex(687, 425);
  endShape(CLOSE);

  // Path 21
  beginShape();
  fill(176, 137, 62);
  vertex(621.75, 421.867);
  vertex(630.5, 434);
  vertex(638.5, 432.726);
  vertex(629.584, 420.386);
  vertex(621.75, 421.867);
  endShape(CLOSE);

  // Path 22
  beginShape();
  fill(176, 137, 62);
  vertex(613, 409.733);
  vertex(617.375, 415.8);
  vertex(625.226, 414.355);
  vertex(610.186, 393.539);
  vertex(602.375, 395);
  vertex(613, 409.733);
  endShape(CLOSE);

  // Path 23
  beginShape();
  fill(176, 137, 62);
  vertex(586.87, 373.5);
  vertex(598.048, 389);
  vertex(605.754, 387.405);
  vertex(594.551, 371.899);
  vertex(586.87, 373.5);
  endShape(CLOSE);

  // Path 24
  beginShape();
  fill(176, 137, 62);
  vertex(613, 409.733);
  vertex(613, 434);
  vertex(621.5, 434);
  vertex(621.75, 421.867);
  vertex(617.375, 415.8);
  vertex(613, 409.733);
  endShape(CLOSE);

  // Path 25
  beginShape();
  fill(176, 137, 62);
  vertex(562.531, 339.75);
  vertex(562.531, 430);
  vertex(570.5, 430);
  vertex(570.5, 350.8);
  vertex(566.516, 345.275);
  vertex(562.531, 339.75);
  endShape(CLOSE);

  // Path 26
  beginShape();
  fill(176, 137, 62);
  vertex(517, 430);
  vertex(526.5, 430);
  vertex(526.5, 330);
  vertex(517, 330);
  vertex(517, 401);
  vertex(517, 430);
  endShape(CLOSE);

  // Path 27
  beginShape();
  fill(133, 93, 16);
  vertex(517, 330);
  vertex(510, 330);
  vertex(510, 401);
  vertex(517, 401);
  vertex(517, 330);
  endShape(CLOSE);

  // Path 28
  beginShape();
  fill(176, 137, 62);
  vertex(471, 348);
  vertex(471, 341.5);
  vertex(464.75, 339.75);
  vertex(464.75, 438.5);
  vertex(478.5, 438.5);
  vertex(478.5, 348);
  vertex(471, 348);
  endShape(CLOSE);

  // Path 29
  beginShape();
  fill(133, 93, 16);
  vertex(441.25, 330);
  vertex(441.25, 409.733);
  vertex(451.5, 409.733);
  vertex(451.5, 330);
  vertex(441.25, 330);
  endShape(CLOSE);

  // Path 30
  beginShape();
  fill(176, 137, 62);
  vertex(414.5, 330);
  vertex(414.5, 434);
  vertex(424, 434);
  vertex(424, 330);
  vertex(414.5, 330);
  endShape(CLOSE);

  // Path 31
  beginShape();
  fill(176, 137, 62);
  vertex(358.804, 338);
  vertex(358.804, 438.5);
  vertex(369, 438.5);
  vertex(369, 333.115);
  vertex(358.804, 338);
  endShape(CLOSE);

  // Path 32
  beginShape();
  fill(176, 137, 62);
  vertex(471, 330);
  vertex(471, 341.5);
  vertex(478.5, 348);
  vertex(478.5, 330);
  vertex(471, 330);
  endShape(CLOSE);

  // Path 33
  beginShape();
  fill(133, 93, 16);
  vertex(458.5, 330);
  vertex(458.5, 338);
  vertex(464.75, 339.75);
  vertex(471, 341.5);
  vertex(471, 330);
  vertex(458.5, 330);
  endShape(CLOSE);

  // Path 34
  beginShape();
  fill(176, 137, 62);
  vertex(356, 330);
  vertex(351.5, 341.5);
  vertex(358.804, 338);
  vertex(369, 333.115);
  vertex(375.5, 330);
  vertex(356, 330);
  endShape(CLOSE);

  // Path 35
  beginShape();
  fill(155, 118, 47);
  vertex(324, 330);
  vertex(324, 252);
  vertex(278.5, 252);
  vertex(278.5, 330);
  vertex(290.5, 330);
  vertex(307.25, 330);
  vertex(324, 330);
  endShape(CLOSE);

  // Path 36
  beginShape();
  fill(176, 137, 62);
  vertex(278.5, 330);
  vertex(278.5, 427.5);
  vertex(290.5, 427.5);
  vertex(290.5, 330);
  vertex(278.5, 330);
  endShape(CLOSE);

  // Path 37
  beginShape();
  fill(133, 93, 16);
  vertex(324, 330);
  vertex(307.25, 330);
  vertex(307.25, 409.733);
  vertex(324, 409.733);
  vertex(324, 330);
  endShape(CLOSE);

  // Path 38
  beginShape();
  fill(147, 121, 71);
  vertex(602.375, 330);
  vertex(564.5, 330);
  vertex(574.38, 343.893);
  vertex(608.438, 337.907);
  vertex(602.375, 330);
  endShape(CLOSE);

  // Path 39
  beginShape();
  fill(64, 46, 12);
  vertex(409.5, 261);
  vertex(389.5, 261);
  vertex(389.5, 276.5);
  vertex(409.5, 276.5);
  vertex(409.5, 261);
  endShape(CLOSE);

  // Path 40
  beginShape();
  fill(64, 46, 12);
  vertex(429.5, 261);
  vertex(409.5, 261);
  vertex(409.5, 276.5);
  vertex(429.5, 276.5);
  vertex(429.5, 261);
  endShape(CLOSE);

  // Path 41
  beginShape();
  fill(64, 46, 12);
  vertex(409.5, 292);
  vertex(429.5, 292);
  vertex(429.5, 276.5);
  vertex(409.5, 276.5);
  vertex(409.5, 292);
  endShape(CLOSE);

  // Path 42
  beginShape();
  fill(64, 46, 12);
  vertex(389.5, 292);
  vertex(409.5, 292);
  vertex(409.5, 276.5);
  vertex(389.5, 276.5);
  vertex(389.5, 292);
  endShape(CLOSE);

  // Path 43
  beginShape();
  stroke(244, 216, 161);
  strokeWeight(3);
  vertex(409.5, 261);
  vertex(429.5, 261);
  vertex(429.5, 276.5);
  vertex(409.5, 276.5);
  vertex(409.5, 292);
  vertex(389.5, 292);
  vertex(389.5, 276.5);
  vertex(409.5, 276.5);
  vertex(409.5, 261);
  endShape();

  popMatrix();
}
