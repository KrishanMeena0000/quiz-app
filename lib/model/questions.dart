class Question {
  const Question(this.question, this.answers);
  final String question;
  final List<String> answers;
  List<String> getShuffledAnswers(){
  final List<String> shuffledAnswers = List.of(answers);
  shuffledAnswers.shuffle();
  return shuffledAnswers;
  }
}

const questions = [
  [
  Question("What programming language is Flutter primarily associated with?", ["Java", "Dart", "Kotlin", "Swift"]),
  Question("What is the primary function of the ` pubspec.yaml ` file in a Flutter project?", ["Managing device permissions","Defining project dependencies","Controlling app layout"," Specifying app icons"]),
  Question("What command is used to create a new Flutter project in the terminal?", ["flutter init", "flutter new", "flutter create", "dart create"]),
  Question("Which widget is used to create a scrollable list of widgets in Flutter?", ["GridView", "ListView", "Stack", "Column"]),
  Question("In Flutter, what does the setState method do?", ["Changes the state of the app ", "Defines the apps layout", "Initializes the app", "Loads external dependencies"]),
  Question("What is the purpose of the BuildContext in Flutter?", [" Manages app state ", "Defines widget properties", "Represents the location of a widget in the widget tree", "Handles user input"]),
  Question("Which widget is used for creating a button in Flutter?", ["Text", "Button", "RaisedButton", "ClickableText"]),
  Question("What is the purpose of the async and await keywords in Dart/Flutter?", ["Define class methods", "Implement exception handling", "Work with asynchronous code", "Create background tasks"]),
  Question("How do you navigate to a new screen in Flutter?", ["pushScreen(context, NewScreen())", "navigateTo(context, NewScreen())", "Navigator.push(context, MaterialPageRoute(builder: (context) => NewScreen()))", "goToScreen(context, NewScreen())"]),
  Question("What is the purpose of the hot reload feature in Flutter?", ["Restart the entire app", "Reload the app with the latest dependencies", "Quickly update the apps code without restarting", "Manage app permissions dynamically"]),
  ],
  [
  Question("What is the default entry point of a Flutter application?", ["main.dart", "index.dart", "app.dart", "start.dart"]),
  Question("In Flutter, what does the Scaffold widget define?", ["Basic app structure", "Animations", "Networking operations", "State management"]),
  Question("Which command is used to run tests in a Flutter project?", ["flutter test", "test run", "execute tests", "flutter run-tests"]),
  Question("What does the final keyword indicate when declaring a variable in Dart/Flutter?", ["The variable can't be reassigned after initialization", "The variable is constant", "The variable is nullable", "The variable has global scope"]),
  Question("What is the purpose of the flutter packages get command?", ["Fetches and installs dependencies", "Compiles the app", "Creates a new Flutter package", "Updates the Flutter SDK"]),
  Question("Which widget is used for adding padding around other widgets in Flutter?", ["Padding", "Spacer", "Margin", "Wrap"]),
  Question("What does the const keyword do when creating widgets in Flutter?", ["Creates a compile-time constant widget", "Defines a constant variable", "Indicates a stateful widget", "Specifies widget padding"]),
  Question("How is an image loaded in Flutter from the assets folder?", ["Image.asset('assets/image.png')", "Image.load('assets/image.png')", "LoadImage.fromAssets('assets/image.png')", "AssetImage('assets/image.png')"]),
  Question("What is the purpose of the CrossAxisAlignment property in a Column widget?", ["Defines the alignment of children in the cross-axis ", "Sets the height of the column", "Adds spacing between columns", "Determines the main axis alignment"]),
  Question("How do you define a constant constructor in a Dart class?", ["const MyClass();", "MyClass.constant();", "final MyClass();", "const constructor MyClass();"]),
],
  [
  Question("What is the primary function of the Container widget in Flutter?", ["To create a box model ", "To manage app state", "To define animations", "To handle user input"]),
  Question("How can you handle taps on a widget in Flutter?", ["GestureDetector", "TapWidget", " `Clickable` property", " `onTap` property of the widget"]),
  Question("What is the purpose of the IndexedStack widget in Flutter?", ["To display a single child from a stack ", "To manage navigation", "To create a grid of widgets", "To handle form input"]),
  Question("How is state managed in a Flutter application?", ["Using setState", "Through global variables", "Automatically by Flutter framework", "By using mutable variables"]),
  Question("Which method is called when a stateful widget is inserted into the widget tree?", ["initState", "onInit", "onCreate", "initialize"]),
  Question("What is the purpose of the Expanded widget in a Row or Column?", ["To make a child widget fill the available space along the main axis", "To add spacing between children", "To define padding", "To make a child widget expand in both axes"]),
  Question("How can you pass data between screens in Flutter?", ["Through constructor parameters", "Using global variables", "By directly accessing widget properties", "Using the setData method"]),
  Question("What is the purpose of the FutureBuilder widget in Flutter?", ["To build a widget based on the result of a Future ", "To create a responsive UI", "To manage animations", "To handle user authentication"]),
  Question("What is the purpose of the AppBar widget in a Flutter app?", ["To define the app's top bar", "To create a floating action button", "To handle app navigation", "To manage app state"]),
  Question("Which method is called when a stateful widget is removed from the widget tree?", ["dispose", "onDestroy", "destroyState", "removeState"]),
],
  [
  Question("What is the purpose of the ClipRRect widget in Flutter?", ["To create rounded rectangles with clipped corners", " To clip widgets with a circular shape", " To handle text input", "To create shadows for widgets"]),
  Question("How can you add a border to a Container widget in Flutter?", ["Container(border: Border.all())", "Container(borderWidth: 1.0)", "Container(decoration: BoxDecoration(border: Border.all()))", "Container(borderStyle: BorderStyle.solid)"]),
  Question("What is the purpose of the SnackBar widget in Flutter?", ["To display temporary messages at the bottom of the screen ", "To handle user authentication", "To create a floating action button", "To manage app navigation"]),
  Question("How can you specify the number of columns in a GridView in Flutter?", ["GridView(columns: 2)", "GridView(columnCount: 2)", "GridView.setColumns(2)", "GridView(column: 2)"]),
  Question("What is the purpose of the ElevatedButton widget in Flutter?", ["To create a raised button with a Material design ", "To handle form input", "To define app navigation", "To manage app state"]),
  Question("How can you add a margin around a widget in Flutter?", ["Container(margin: EdgeInsets.all(8.0))", "Padding(padding: EdgeInsets.all(8.0))", "Spacer(margin: EdgeInsets.all(8.0))", "Wrap(margin: EdgeInsets.all(8.0))"]),
  Question("What does the InkWell widget do in Flutter?", ["Adds ink splashes to the widget ", "Defines a well-shaped container", "Manages asynchronous tasks", "Handles gestures like taps"]),
  Question("How do you declare a named route in Flutter?", ["'/newScreen': (context) => NewScreen() ", "NewScreen(route: '/newScreen')", "Navigator.route('/newScreen', builder: (context) => NewScreen())", "NewScreen.namedRoute('/newScreen')"]),
  Question("What is the purpose of the ListView.builder constructor in Flutter?", ["Lazily builds children on demand ", "Creates a fixed list of children", "Adds padding to the list", "Manages animations for the list"]),
  Question("How can you conditionally show or hide a widget in Flutter?", [". Using the Visibility widget with the visible property set to true or false", "Using the if statement in the widget tree", " Setting the hidden property of the widget", "Wrapping the widget with a ShowHide widget"]),
],
  [
  Question("What is the purpose of the BuildContext in Flutter?", ["Represents the location of a widget in the widget tree ", "Manages app state", "Defines widget properties", "Handles user input"]),
  Question("Which widget is commonly used to display a message to the user for a short duration in Flutter?", ["SnackBar", "AlertDialog", "Toast", "NotificationBanner"]),
  Question("How do you create a rounded rectangle in Flutter?", ["RoundedRectangleBorder", "CircularRectangleShape", "RadiusRectangle", "CorneredBox"]),
  Question("What is the purpose of the Flutter Inspector in Flutter development?", ["Inspects the widget tree and properties during runtime ", "Inspects the app's performance during development", "Provides suggestions for code improvements", "Manages state transitions"]),
  Question("How can you set the background color of a Flutter app?", ["home: Scaffold(backgroundColor: Colors.blue) ", "background-color: blue in the pubspec.yaml file", "backgroundColor: Colors.blue in the main.dart file", "setBackground(Color.blue) in the initState method"]),
  Question("What is the purpose of the SingleChildScrollView widget in Flutter?", ["Allows a single child to be scrolled ", "Manages multiple children in a scroll view", "Defines a scrollable column", "Handles gesture detection"]),
  Question("How do you define a constant list in Dart?", ["const List<int> numbers = [1, 2, 3];", "final List<int> numbers = [1, 2, 3];", "List<int> numbers = const [1, 2, 3];", "List<int> numbers = const List(3);"]),
  Question("What is the purpose of the RichText widget in Flutter?", ["Allows you to style individual words or characters differently ", "Creates a scrollable text area", "Defines a text field for user input", "Displays formatted HTML content"]),
  Question("How do you add padding to all sides of a widget in Flutter?", ["Padding(padding: EdgeInsets.all(8.0)) ", "Margin(margin: EdgeInsets.all(8.0))", "Container(padding: EdgeInsets.all(8.0))", "Wrap(padding: EdgeInsets.all(8.0))"]),
  Question("What is the purpose of the enum keyword in Dart?", ["Defines a set of named constants ", "Declares a variable with a fixed value", "Represents a single character", "Creates an empty constructor"]),
],
];
