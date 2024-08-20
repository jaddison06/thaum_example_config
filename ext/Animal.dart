import 'generated.dart';

final SAFE_FOOD = {
  AnimalType.Cat: [FoodType.Fish],
  AnimalType.Dog: [FoodType.Bone, FoodType.Fish],
  AnimalType.Horse: [FoodType.Grape, FoodType.Ketamine],
  AnimalType.Octopus: [FoodType.Fish, FoodType.Grape]
};

class Animal extends AnimalBase {
  Animal({required String uuid, required AnimalType type, required String name})
    : super(uuid: uuid, type: type, name: name);
  
  void feed(FoodType food) {
    if (!SAFE_FOOD[type]!.contains(food)) throw APIException.AnimalDied;
  }
}