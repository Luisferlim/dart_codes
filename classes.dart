Product_print({String? name, double? price})
{
  print ('the product ${name} has costs ${price}\$');
}


class Product
{
  String? name;
  double? price;

  //positional parameters
  Product({this.name, this.price = 9.99});
  //the '{}' inside the parameters transforms the positional parameters
  //in named parameters, so the order that we define ir doesn't matter

  /*Product?(String name, double price)
  {
    //.this is an actribuit of an instance which has a equal name 
    //from the constructor function
    this.name = name;
    this.price = price;
  }*/
}

main()
{
  var p1 = new Product(name: 'PENCIL');
  var p2 = new Product(price: 2.3, name: 'PEN');

  //print ('the product ${p1.name} has costs ${p1.price}\$');
  //print ('the product ${p2.name} has costs ${p2.price}\$');

  Product_print(price: p1.price, name: p1.name);
  Product_print(price: p2.price, name: p2.name);
}