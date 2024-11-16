double electricityBill(int kwh) {
  double money = 0;
  if (kwh > 300) {
    money += (kwh - 300) * 2834;
    kwh = 300;
  }
  if (kwh > 200) {
    money += (kwh - 200) * 2536;
    kwh = 200;
  }
  if (kwh > 100) {
    money += (kwh - 100) * 2014;
    kwh = 100;
  }
  if (kwh > 50) {
    money += (kwh - 50) * 1734;
    kwh = 50;
  }
  money += kwh * 1678;
  return money;
}

void main() {
  int soKwh = 350;
  double money = electricityBill(soKwh);
  print("Số tiền điện là: $money đồng");
}
