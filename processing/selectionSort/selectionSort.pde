import java.util.Arrays;

float[] numbers = new float[1000];
int swap = 0;

void setup() {
  size(600, 400);
  frameRate(60);
  
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = (float)Math.random();
  }
  
  // print(Arrays.toString(numbers));
}

void draw() {
  drawBars();
  
  // sorting algorithm here (just one step)
  if (swap < numbers.length - 1) {
    int maxIndex = 0;
    for (int i = 0; i < numbers.length - swap; i++) {
      if (numbers[i] > numbers[maxIndex]) {
        maxIndex = i;
      }
    }
    int lastIndex = numbers.length - 1 - swap;
    float temp = numbers[lastIndex];
    numbers[lastIndex] = numbers[maxIndex];
    numbers[maxIndex] = temp;
    swap++;
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
