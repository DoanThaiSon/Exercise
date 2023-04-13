class Solution {
  int numIdenticalPairs(List<int> nums) {
    int len = nums.length;
    int ans = 0;
    for (int i = 0; i < len; i++) {
      for (int j = i = 1; j < len; j++) {
        if (nums[i] == nums[j]) {
          ans++;
        }
      }
    }
    return ans;
  }
}