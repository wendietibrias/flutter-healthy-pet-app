import 'package:healthy_pet_ui/models/category_model.dart';

class DoctorModel {
  String name;
  String image;
  List<String> services;
  int distance;

  DoctorModel(
      {required this.name,
      required this.image,
      required this.services,
      required this.distance});
}

List<DoctorModel> doctorItems = [
  DoctorModel(
      name: "Dr. Stone ",
      image: "doctor_1.jpg",
      services: [CategoryModel.vaccine, CategoryModel.surgery],
      distance: 10),
  DoctorModel(
      name: "Dr. Stone ",
      image: "doctor_2.png",
      services: [CategoryModel.vaccine, CategoryModel.surgery],
      distance: 10),
  DoctorModel(
      name: "Dr. Stone ",
      image: "doctor_1.jpg",
      services: [CategoryModel.vaccine, CategoryModel.surgery],
      distance: 10)
];
