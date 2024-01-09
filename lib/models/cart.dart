import 'package:first_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  
  List<Shoe> shoeShop=[
    Shoe(name: 'Converse - All Star BB \nprototype CX Mid', price: '₹7,499', imagePath: 'assets/images/img1.jpg', description: 'The future of Converse basketball, designed with lightning strikes for the next NBA superstar.'),
    Shoe(name: 'Chuck Taylor All Star \nCX Explore', price: '₹5,499', imagePath: 'assets/images/img5.jpg', description: 'Dynamic stretch canvas, CX cushioning, and utility tones create the ultimate expression of comfort and style.'),
    Shoe(name: 'Run Star Legacy CX Canvas', price: '₹9,999', imagePath: 'assets/images/img2.jpg', description: 'Inspired by traditional elements of the Day of the Dead, these comfortable Run Star Legacy CX platforms are ready to step up the celebrations.'),
    Shoe(name: 'Run Star Hike Platform \nDaisy Cord', price: '₹6,999', imagePath: 'assets/images/img6.jpg', description: 'A crocheted cotton upper and spiky platform outsole bring headliner style to the fan-favorite Run Star Hike.'),
    Shoe(name: 'All Star BB Trilliant CX', price: '₹9,999', imagePath: 'assets/images/img3.jpg', description: 'The All Star BB Trilliant CX gives your moves an edge with supportive cushioning and quick, responsive movement.'),
    Shoe(name: 'Nike Air Force 1 \'07', price: '₹9,695', imagePath: 'assets/images/img7.jpg', description: 'This b-ball icon puts a fresh spin on what you know best: durable materials, rich colours and the perfect amount of flash to make you shine.'),
    Shoe(name: 'Nike Alphafly 3 Proto', price: '₹22,795', imagePath: 'assets/images/img4.jpg', description: 'Fine-tuned for marathon speed, the Alphafly 3 helps push you beyond what you thought possible.'),
    Shoe(name: 'Air Foamposite One Varsity \nPurple', price: '₹20,495', imagePath: 'assets/images/img8.jpg', description: 'The Air Foamposite One matches retro greatness with modern drip.'),
    Shoe(name: 'Nike Vaporfly 3', price: '₹22,695', imagePath: 'assets/images/img9.jpg', description: 'The Vaporfly 3 is made for the chasers, the racers and the elevated pacers who can\'t turn down the thrill of the pursuit.'),
    Shoe(name: 'Air Jordan XXXVIII \nChinese New Year PF', price: '₹18,395', imagePath: 'assets/images/img10.jpg', description: 'This elegant Air Jordan XXXVIII is inspired by the Chinese Zodiac\'s only mythological creature.')
  ];

  List<Shoe> hotShoe=[
    Shoe(name: 'Chuck Taylor All Star \nCX Explore', price: '₹5,499', imagePath: 'assets/images/img5.jpg', description: 'Dynamic stretch canvas, CX cushioning, and utility tones create the ultimate expression of comfort and style.'),
    Shoe(name: 'Nike Alphafly 3 Proto', price: '₹22,795', imagePath: 'assets/images/img4.jpg', description: 'Fine-tuned for marathon speed, the Alphafly 3 helps push you beyond what you thought possible.'),
    Shoe(name: 'Air Jordan XXXVIII \nChinese New Year PF', price: '₹18,395', imagePath: 'assets/images/img10.jpg', description: 'This elegant Air Jordan XXXVIII is inspired by the Chinese Zodiac\'s only mythological creature.'),
    Shoe(name: 'Run Star Hike Platform \nDaisy Cord', price: '₹6,999', imagePath: 'assets/images/img6.jpg', description: 'A crocheted cotton upper and spiky platform outsole bring headliner style to the fan-favorite Run Star Hike.'),
  ];

  List<Shoe> userCart=[];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  List<Shoe> getHotList(){
    return hotShoe;
  }

  void addItem(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItem(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}