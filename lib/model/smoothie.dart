class Smoothie{
  String name;
  String imagePath;
  int color;
  String ingredient1;
  String ingredient2;
  String ingredient3;
  String description;
  String calories;
  String heading1;
  Smoothie({this.name,this.imagePath,this.calories,this.description,this.ingredient1,this.ingredient2,this.ingredient3,this.color,this.heading1});

}
List smoothies=[
  Smoothie(
      name: "Green Refresher",
      imagePath: "assets/images/avacado.png",
      color: 0xFF72A51A,
      calories: "230",
      ingredient1: "Avacado",
      ingredient2: "cucumber",
      ingredient3: "coconut milk",
      description: "Green smoothies provide a powerful boost of vitamins, minerals, antioxidants and other nutrients without bogging down your digestive system. Since you are eating natural, whole foods in the most optimum form for your digestion and nutrient absorption, you will have more energy to get things done and enjoy your day. "


  ),
  Smoothie(
      name: "Golden Refresher",
      imagePath: "assets/images/apple.png",
      color: 0xFFF5BD17,
      calories: "230",
      ingredient1: "Apple",
      ingredient2: "Banana",
      ingredient3: "Almond milk",
      description: "Golden smoothies provide a powerful boost of vitamins, minerals, antioxidants and other nutrients without bogging down your digestive system. Since you are eating natural, whole foods in the most optimum form for your digestion and nutrient absorption, you will have more energy to get things done and enjoy your day. "


  ),
  Smoothie(
      name: "Red Refresher",
      imagePath: "assets/images/watermelon.png",
      color: 0xFFF05262,
      calories: "230",
      ingredient1: "Water melon",
      ingredient2: "ice cubes",
      ingredient3: "ginger",
      description: " "


  ),





];