class Solution {
  int lengthOfLastWord(String s) {
    // Loại bỏ khoảng trắng phía sau chuỗi
    s = s.trim();

    // Tìm chỉ số của ký tự trắng cuối cùng trong chuỗi
    int lastSpaceIndex = s.lastIndexOf(' ');

    if (lastSpaceIndex == -1) {
      // Nếu không có khoảng trắng nào trong chuỗi, trả về độ dài của chuỗi
      return s.length;
    } else {
      // Nếu có khoảng trắng trong chuỗi, trả về độ dài của từ cuối cùng trong chuỗi
      return s.substring(lastSpaceIndex + 1).length;
    }
  }
}