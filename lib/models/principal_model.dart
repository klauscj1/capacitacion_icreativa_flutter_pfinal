class PrincipalModel {
  PrincipalModel(
      {this.id,
      this.nombre,
      this.descripcion,
      this.precio,
      this.image,
      this.receta,
      this.principal});

  int id;
  String nombre;
  String descripcion;
  double precio;
  String image;
  String receta;
  bool principal;

  factory PrincipalModel.fromJson(Map<String, dynamic> json) => PrincipalModel(
        id: json["id"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        precio: json["precio"].toDouble(),
        image: json["image"],
        receta: json["receta"],
        principal: json["principal"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "descripcion": descripcion,
        "precio": precio,
        "image": image,
        "receta": receta,
        "principal": principal,
      };
}

final List<PrincipalModel> principales = [
  PrincipalModel(
      id: 1,
      nombre: 'Chicked salad',
      descripcion: 'Chicken with avocado',
      image: 'assets/images/picture7.png',
      precio: 32.00,
      principal: true,
      receta:
          "Duis ullamco proident occaecat anim. Dolor deserunt non eu cillum et nisi tempor adipisicing occaecat dolore dolore laboris reprehenderit minim. Proident ut eiusmod aliquip eiusmod mollit ea aliquip irure. Ad labore enim ex elit eiusmod sint anim deserunt minim laborum."),
  PrincipalModel(
      id: 2,
      nombre: 'Chicked with pepino',
      descripcion: 'Chicken pepino',
      image: 'assets/images/picture4.png',
      precio: 22.35,
      principal: true,
      receta:
          "Duis ullamco proident occaecat anim. Dolor deserunt non eu cillum et nisi tempor adipisicing occaecat dolore dolore laboris reprehenderit minim. Proident ut eiusmod aliquip eiusmod mollit ea aliquip irure. Ad labore enim ex elit eiusmod sint anim deserunt minim laborum."),
  PrincipalModel(
      id: 3,
      nombre: 'Vegetables with chicken',
      descripcion: 'Chicken vegetables',
      image: 'assets/images/picture8.png',
      precio: 12.50,
      principal: true,
      receta:
          "Duis ullamco proident occaecat anim. Dolor deserunt non eu cillum et nisi tempor adipisicing occaecat dolore dolore laboris reprehenderit minim. Proident ut eiusmod aliquip eiusmod mollit ea aliquip irure. Ad labore enim ex elit eiusmod sint anim deserunt minim laborum."),
  PrincipalModel(
      id: 4,
      nombre: 'Chicked salad',
      descripcion: 'Chicken with avocado',
      image: 'assets/images/picture7.png',
      precio: 32.00,
      principal: false,
      receta:
          "Duis ullamco proident occaecat anim. Dolor deserunt non eu cillum et nisi tempor adipisicing occaecat dolore dolore laboris reprehenderit minim. Proident ut eiusmod aliquip eiusmod mollit ea aliquip irure. Ad labore enim ex elit eiusmod sint anim deserunt minim laborum."),
  PrincipalModel(
      id: 5,
      nombre: 'Chicked with pepino',
      descripcion: 'Chicken pepino',
      image: 'assets/images/picture4.png',
      precio: 22.35,
      principal: false,
      receta:
          "Duis ullamco proident occaecat anim. Dolor deserunt non eu cillum et nisi tempor adipisicing occaecat dolore dolore laboris reprehenderit minim. Proident ut eiusmod aliquip eiusmod mollit ea aliquip irure. Ad labore enim ex elit eiusmod sint anim deserunt minim laborum."),
  PrincipalModel(
      id: 6,
      nombre: 'Vegetables with chicken',
      descripcion: 'Chicken vegetables',
      image: 'assets/images/picture8.png',
      precio: 12.50,
      principal: false,
      receta:
          "Duis ullamco proident occaecat anim. Dolor deserunt non eu cillum et nisi tempor adipisicing occaecat dolore dolore laboris reprehenderit minim. Proident ut eiusmod aliquip eiusmod mollit ea aliquip irure. Ad labore enim ex elit eiusmod sint anim deserunt minim laborum."),
  PrincipalModel(
      id: 7,
      nombre: 'Chicked salad',
      descripcion: 'Chicken with avocado',
      image: 'assets/images/picture7.png',
      precio: 32.00,
      principal: false,
      receta:
          "Duis ullamco proident occaecat anim. Dolor deserunt non eu cillum et nisi tempor adipisicing occaecat dolore dolore laboris reprehenderit minim. Proident ut eiusmod aliquip eiusmod mollit ea aliquip irure. Ad labore enim ex elit eiusmod sint anim deserunt minim laborum."),
];
