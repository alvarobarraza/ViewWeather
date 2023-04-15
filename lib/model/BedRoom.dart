class BedRoom {
  final String title,temp,iconAsset;
  final bool on;

  BedRoom(this.title,this.temp,this.iconAsset,this.on);
}

List<BedRoom> bedRoom = [
  BedRoom("Phillip Hue", "Wgrm", "assets/bombilla.png", true),
  BedRoom("AC", "16°", "assets/aire-acondicionado.png", false),
  BedRoom("Lake two", "18°", "assets/sonido.png", true),
  BedRoom("curtains", "20°", "assets/cortinas.png", false),
];