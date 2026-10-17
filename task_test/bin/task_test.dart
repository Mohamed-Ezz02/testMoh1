//Q1

double calculateTotal(double price, int quantity) {
  return price * quantity;
}

void main() {
  print(calculateTotal(50.0, 3)); 
  print(calculateTotal(25.5, 2)); 
 print("============");
//Q2
String greetUser(String name, [String greeting = "Hello"]) {
  return "$greeting $name";
}
  print(greetUser("Ahmed"));               
  print(greetUser("Ali", "Welcome"));      
 print("============");

//Q3

double calculateOrder({
  required double price,
  required int quantity,
  double discount = 0,
  double deliveryFee = 0,
}) {
  return (price * quantity) - discount + deliveryFee;
}
  double total = calculateOrder(price: 50.0, quantity: 4, discount: 20, deliveryFee: 10);
  print(total);
 print("============");

//Q4

List<int> filterNumbers(
  List<int> numbers, {
  int min = 0,
  int max = 100,
  bool includeEven = true,
}) {
  List<int> result = [];
  for (int number in numbers) {
    if (number >= min && number <= max) {
      if (includeEven) {
        if (number % 2 == 0) {
          result.add(number);
        }
      } else {
        result.add(number);
      }
    }
  }
  return result;
}
  print(filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12)); 
  print(filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12, includeEven: false)); 
 print("============");

//Q5

double calculateCartTotal(
  List<double> prices, {
  double discountPercent = 0,
  double taxPercent = 14,
  double deliveryFee = 0,
  bool isMember = false,
  double maxDiscount = 100,
}) {
  double subtotal = 0;
  for (double p in prices) {
    subtotal += p;
  }
  double totalDiscountPercent = discountPercent;
  if (isMember) {
    totalDiscountPercent += 5; 
  }
  if (totalDiscountPercent > maxDiscount) {
    totalDiscountPercent = maxDiscount;
  }
  double discountAmount = subtotal * (totalDiscountPercent / 100);
  double discountedSubtotal = subtotal - discountAmount;
  double taxAmount = discountedSubtotal * (taxPercent / 100);
  double finalTotal = discountedSubtotal + taxAmount + deliveryFee;

  return finalTotal;
}
  print(calculateCartTotal([100.0, 200.0, 50.0])); 
  print(calculateCartTotal(
    [100.0, 200.0, 50.0],
    discountPercent: 10,
    taxPercent: 14,
    deliveryFee: 25,
  )); 
  print(calculateCartTotal(
    [100.0, 200.0, 50.0],
    discountPercent: 10,
    isMember: true,
    maxDiscount: 12,
  )); 

}


