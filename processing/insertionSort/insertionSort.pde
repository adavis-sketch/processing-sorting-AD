import java.util.Arrays;

float[] numbers = new float[100];
int count = 1;

void setup() {
  size(600, 400);
  frameRate(30);
  
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = (float)Math.random();
  }
  
  // print(Arrays.toString(numbers));
}

void draw() {
  drawBars();
  
  // sorting algorithm here (just one step)

    int tempIndex = count;
    while (tempIndex > 0 && numbers[tempIndex] < numbers[tempIndex - 1]){
      float temp = numbers[tempIndex];
      numbers[tempIndex] = numbers[tempIndex - 1];
      numbers[tempIndex - 1] = temp;
      tempIndex--;
    }
    count++;
  
}


void drawBars() {
  background(200);
  fill(40);
  for (int i = 0; i < numbers.length; i++) {
    float spacing = (float)width / numbers.length; 
    rect(i * spacing, height, spacing, -numbers[i] * height);
  }
}
