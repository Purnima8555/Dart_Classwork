void main() {
  // Map cityCountry = Map<String, String>();
  Map cityCountry = <String, String>{};

  cityCountry['New York'] = 'USA';
  cityCountry['London'] = 'UK';
  cityCountry['Paris'] = 'France';
  cityCountry['Berlin'] = 'Germany';

  // cityCountry.forEach((city, country) {
  //   print('$city is in $country');
  // });

  String searchValue = "London";
  print("$searchValue is in ${cityCountry[searchValue]}");
}
