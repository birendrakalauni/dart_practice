void main() {
  for (int i = 1; i <= 10; i++) {
    if (i == 3) {
      continue;
    }
    if (i == 6) {
      break;
    }
    print(i);
  }
}
