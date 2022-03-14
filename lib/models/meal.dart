enum Complexity { Simple, Medium, Difficult }

enum Cost {
  Cheap,
  Fair,
  Expensive,
}

class Meal {
  late final String id;
  late final List<String> categories;
  late final String title;
  late final String imageUrl;
  late final List<String> ingredients;
  late final List<String> steps;
  late final int duration;
  late final bool isGlutenFree;
  late final bool isLactoseFree;
  late final bool isVegan;
  late final bool isVegetarian;
  late final Complexity complexity;
  late final Cost cost;

  Meal({
    required this.complexity,
    required this.cost,
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.duration,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.steps,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simples';
      case Complexity.Medium:
        return 'Normal';
      case Complexity.Difficult:
        return 'Difícil';
      default:
        return 'Desconhecida';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.Cheap:
        return 'Barato';
      case Cost.Fair:
        return 'Justo';
      case Cost.Expensive:
        return 'Caro';
      default:
        return 'Desconhecida';
    }
  }
}
