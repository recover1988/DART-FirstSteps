main() {
  for (int i = 0; i < 10; i++) {
    if (i == 5 || i == 8 || i == 3) {
      continue;
    }
    print(i);
    if (i == 4) {
      break;
    }
  }
}
