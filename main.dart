import 'dart:io';

void main() {
  // dataTypes();
  // inputOutput();
  // functions();
  // controlStructures();
  // classes();
}

void dataTypes() {
  /**
   * Type name = value
   * */

  final String name = "Eric"; // not reassignable
  // String name = "Eric"; // reassignable
  var name2 = "Eric G";
  name2 = "John";

  int age = 21;
  double score = 80.45;
  bool single = true;
  dynamic anything;

  var stringSet = <String>{"Sodium", "Lithium", "Alcohols"}; // OR
  Set<int> intSet = {1, 2, 3};

  List<int> numList = [0, 4, 6, 1];
  numList.add(67);

  var carMap = <String, int>{'Volvo': 23000, 'BMW': 35000, 'Benz': 90000};

  print("""
    String: $name
    Int: $age
    Double: $score
    Bool: $single
    Dynamic $anything
    List: $numList
    """);
}

void inputOutput() {
  print("Yoh, what is your name? ");
  String username = stdin.readLineSync() as String;
  print("Okay, $username, want some coffee?");
}

void functions() {
  /**
   * ReturnType functionName(){ body }
   * */

  void sayHello() {
    print("Hello there!");
  }

  /**
     * ReturnType functionName(parameterType name){ body }
     * */

  void sayHelloToName(String name) {
    print("Hello there $name 😋");
  }

  int getUserAge() {
    return 21;
  }

  sayHello();
  sayHelloToName("Eric");
  print("User age is " + getUserAge().toString());
}

void controlStructures() {
  ControlStructures().dart_If_Else();
  ControlStructures().dart_Switch_Case();
  ControlStructures().dart_While_Loop();
  ControlStructures().dart_For_Loop();
}

class ControlStructures {
  /**
   * if, else, &&, \\, !
   */
  void dart_If_Else() {
    int temp = 34;

    if (temp < 40) {
      print("Wear sun glasses");
    } else {
      print("Don't wear sun glasses");
    }
  }

  /**
   * switch, case
   */
  void dart_Switch_Case() {
    String light = "RED";

    switch (light) {
      case 'RED':
        print("STOP");
        break;

      case 'GREEN':
        print("GO!");
        break;

      case 'YELLOW':
        print("Ready...");
        break;

      default:
        print('Stay alert');
    }
  }

  /**
   * while loop
   */
  void dart_While_Loop() {
    int i = 0;
    while (i < 5) {
      print("i is $i");
      i++;
    }
  }

  void dart_For_Loop() {
    List<String> names = ["John", "Doe", "Ryan"];

    /* for (String name in names) {
      print(name);
    } */

    names.forEach((element) => {
          // action
        });

    names.forEach((name) {
      print(name);
    });
  }
}

class Player {
  String? name;
  double? score; // nullable
  double? timePlayed;

  // Default Constructor
  Player(String name, double score, double timePlayed) {
    this.name = name;
    this.score = score;
    this.timePlayed = timePlayed;
  }

  // Named Constructor
  Player.guest() {}
}

void classes() {
  Player player1 = Player("Eric", 0.0, 40);
  // var customPlayer = CustomPlayer("name", 0, 0);
  // print(customPlayer.day);
  print("""
  Player:
  name: ${player1.name}
  scrore ${player1.score}
  time played ${player1.timePlayed}
  """);
}

// Inheritance
class CustomPlayer extends Player {
  String day;

  CustomPlayer(String? name, double? score, double? timePlayed,
      {this.day: "no day"})
      : super(name ?? "", score ?? 0, timePlayed ?? 0);
}
