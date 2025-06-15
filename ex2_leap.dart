void main(List<String> args) {

  var year = 2024;

  bool isLeapYear(int year) {
    if (year %4 == 0 ) {
      print("$year bir artık yıldır.");
      if (year %100 == 0) {
        print("$year bir artık yıldır.");
        if (year %400 == 0) {
        print("$year bir artık yıldır.");
          return true;
        }else {
          return false;
        }
      }else {
        return true;
      }
    }else {
      return false;
    } 
  } 

  print(isLeapYear(year)); 

}