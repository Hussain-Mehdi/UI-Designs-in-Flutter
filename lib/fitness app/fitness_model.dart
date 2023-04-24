class FitnessModel {
  String imageText;
  String imagePath;

  FitnessModel({required this.imageText, required this.imagePath});
}

List<FitnessModel> fitnessData = [
  FitnessModel(
      imageText: 'Traning Plan', imagePath: './images/fitness/splash.jpg'),
  FitnessModel(imageText: 'Meal Plan', imagePath: './images/fitness/fit1.jpg'),
  FitnessModel(imageText: 'Supplement', imagePath: './images/fitness/fit2.jpg'),
  FitnessModel(imageText: '', imagePath: './images/fitness/fit3.jpg'),
  FitnessModel(imageText: 'Fitness', imagePath: './images/fitness/fit4.jpg'),
  FitnessModel(
      imageText: 'Body Building', imagePath: './images/fitness/fit5.jpg'),
];
