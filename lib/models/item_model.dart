class Item{
  String ? title;
  String ? category;
  String ? thumb_url;
  String ? location;
  double ? price;

  Item(this.title,this.category,this.location,this.price,this.thumb_url);

  static List<Item> recommendation = [
    Item("House For Ranting", "House", "state,India", 25000,
    "https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg"
    ),
  Item("Big Villa", "Villa", "state,India", 75000,
    "https://images.pexels.com/photos/53610/large-home-residential-house-architecture-53610.jpeg"
    ),
  Item("luxuries Appartment", "Appartment", "state,India", 85000,
    "https://images.pexels.com/photos/324629/pexels-photo-324629.jpeg"
    ),
  ];


 static List<Item> nearby = [
    Item("House For Ranting", "House", "state,India", 25000,
    "https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg"
    ),
  Item("Big Villa", "Villa", "state,India", 75000,
    "https://images.pexels.com/photos/53610/large-home-residential-house-architecture-53610.jpeg"
    ),
  Item("luxuries Appartment", "Appartment", "state,India", 85000,
    "https://images.pexels.com/photos/324629/pexels-photo-324629.jpeg"
    ),
  ];

}

