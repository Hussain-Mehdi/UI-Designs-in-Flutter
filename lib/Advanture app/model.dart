class AdventureModel {
  String name;
  String location;
  String place;
  String rating;
  String image;
  String price;
  bool favourite;

  AdventureModel(
      {required this.name,
      required this.location,
      required this.place,
      required this.rating,
      required this.image,
      required this.price,
      required this.favourite});
}

List<AdventureModel> mountainData = [
  AdventureModel(
      name: "Mount Everst",
      location: "Mountain in Asia",
      place: "Mahalangur Himal",
      rating: '4.2',
      image: './images/adventure/mount.jpg',
      price: "\$80",
      favourite: false),
  AdventureModel(
      name: "K2",
      location: "Mountain in Asia",
      place: "Karakoram range",
      rating: '4.5',
      image: './images/adventure/k2.jpg',
      price: "\$180",
      favourite: false),
  AdventureModel(
      name: "Matterhorn",
      location: "Mountain in Europe",
      place: "Switzerland and Italy",
      rating: '4.3',
      image: './images/adventure/matterhorn.jpg',
      price: "\$110",
      favourite: false),
  AdventureModel(
      name: "Mount Fuji",
      location: "Mountain in Japan",
      place: "southwest of Tokyo",
      rating: '4.4',
      image: './images/adventure/fuji.jpg',
      price: "\$140",
      favourite: false),
  AdventureModel(
      name: "Nanga Parbat",
      location: "Mountain in Asia",
      place: "ninth-highest mountain",
      rating: '4.2',
      image: './images/adventure/nangaparbat.jpg',
      price: "\$140",
      favourite: false),
];
