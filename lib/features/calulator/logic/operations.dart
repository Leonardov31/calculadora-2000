class Operations {
  static add(var num1, var num2) {
    return num1 + num2;
  }

  static multiply(var num1, var num2) {
    return num1 * num2;
  }

  static divide(var num1, var num2) {
    if (num2 == 0) {
      return 0;
    }
    return num1 / num2;
  }

  static subtract(var num1, var num2) {
    return num1 - num2;
  }

  static del(String num) {
    if (num.length > 0) {
      num = num.substring(0, num.length - 1);
    }

    return num;
  }
}
