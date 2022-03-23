class Item {
  final int id;
  final String name;
  final String image;

  Item(this.id, this.name, this.image);

  static List<Item> countryList() {
    return <Item>[
      Item(1, 'Brazil', 'assets/images/brasil.png'),
      Item(2, 'Argentina', 'assets/images/argentina.png'),
      Item(3, 'United States', 'assets/images/usa.png'),
      Item(4, 'Canada', 'assets/images/canada.png'),
    ];
  }
}
