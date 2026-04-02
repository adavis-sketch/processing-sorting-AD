import java.util.Arrays;

float[] numbers = new float[1000];
int swap = 1;

void setup() {
  size(600, 400);
  frameRate(4);
  
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = (float)Math.random();
  }
  
  // print(Arrays.toString(numbers));
}

void draw() {
  drawBars();
  
  // sorting algorithm here (just one step)
  for (int i = 0; i < numbers.length - swap; i++){
    float tempMax = numbers[0]
    if (numbers[i] > tempMax)
  }
}

void drawBars() {
  background(200);
  fill(40);
  for (int i = 0; i < numbers.length; i++) {
    float spacing = (float)width / numbers.length; 
    rect(i * spacing, height, spacing, -numbers[i] * height);
  }
}
