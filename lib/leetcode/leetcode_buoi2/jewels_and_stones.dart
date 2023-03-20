int numJewelsInStones(String jewels, String stones) {
  int count = 0;
  for (int i = 0; i < stones.length; i++) {
    if (jewels.contains(stones[i])) {
      count++;
    }
  }
  return count;
}