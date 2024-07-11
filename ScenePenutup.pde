class scene18 {
  SoundFile dub;
  int startFrame;
  boolean isFinished;
  
  float creditY; // Variable for the vertical position of the credits text
  String[] credits = {
    "",
    "",
    "Imam Tirmidzi meriwayatkan dalam Sunnahnya, Rasulullah SAW bersabda:",
    "", 
    "Sesungguhnya tidak ada sesuatu apa pun yang paling berat ditimbangan",
    "kebaikan seorang mukmin pada hari kiamat seperti akhlaq yang mulia,",
    "dan sungguh-sungguh (benar-benar) Allah benci dengan orang yang lisannya kotor dan kasar.",
    "",
    "",
    "",
    "ANGGOTA KELOMPOK",
    "",
    "Noor Akhnafal Aban (22523179)",
    "Diena Mukafasyadia(22523269)",
    "Muhammad Ammar Fariz Baihaqi (22523293)",
    "Mohammad Gana Firman Mahendra (22523082)",
    "",
    "",
    "Pengisi suara: ??",
    "",
    "",
    "Terimakasih Telah Menonton!"
  };

  PApplet parent; // Reference to the PApplet instance

  scene18(PApplet parent) {
    this.parent = parent;
    dub = new SoundFile(parent, "credit.mp3");
  }

  void setup() {
    startFrame = frameCount;
    isFinished = false;
    creditY = parent.height; // Start from the bottom of the screen
    dub.play();
  }

  void draw() {
    int duration = 2000; // Duration in frames (300)
    if (frameCount - startFrame >= duration) {
      isFinished = true;
    }
    
    // Set background and text color
    parent.background(0);
    parent.fill(255);
    parent.textAlign(PApplet.CENTER);
    
    // Set text size
    parent.textSize(24); // Set text size to 32 pixels

    // Additional space after each line
    float lineHeight = 40; // Height of each line including space
    float spaceAfter = 5; // Additional space after each line

    // Calculate the vertical position of the credits text
    for (int i = 0; i < credits.length; i++) {
      parent.text(credits[i], parent.width / 2, creditY + i * (lineHeight + spaceAfter));
    }

    // Move the credits text upwards
    creditY -= 1;

    // End the animation when all text has moved off the screen
    if (creditY < -(credits.length * (lineHeight + spaceAfter))) {
      isFinished = true;
    }
  }
  
  void stop() {
    dub.stop();
  }
}
