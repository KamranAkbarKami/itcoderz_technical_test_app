# kamran_akbar_technical_test_app

A new Flutter project for the Technical Test for Flutter Developer.

Short Questions:

1: Flutter is an cross platform mobile application development framework created by Google, which uses Dart Programing Language. 
Its a single codebase since the one Flutter Code is Capable to  Run on Multiple Operating Devices and Platforms e.g Android, iOS, Web, MacOs and Windows.
Flutter uses Flutter SDK to render its code to run in Multiple Devices. Following Features make the Flutter different from other platforms:
  a:  Cross Platform
  b: Vast Variety of Customizable Widgets
  c: Hot Reload Ability
  d: Performance Tools

2: Stateless widget does not change its state often referred as immutable state e.g Text and Icon Widgets. 
Stateful Widget changes its widget in response to some interaction to UI e.g Checkbox,TextField Widget.
StatelessWidget is simpler and faster to render than StatefulWidget, since it doesn't require rebuilding the UI on state changes.
StatefulWidget is more flexible and dynamic than StatelessWidget, since it can be updated in response to user interactions or external events.

3: State management is referred as essential part of building any dynamic and interactive app in Flutter.
Flutter have built in Inherited Widget and setState Concept. setState recalls the Build Method resulting in change 
in UI components. However it is not considered wise and efficient since it effects the performance of the app. Following are some 
of the Packaged used to manage the state of Widget in Flutter:
 Provider
 GetX
 Bloc
 Riverpod

4: Navigator is the widget that uses essential Data Structure concept of Stack which carries Route objects.
It provides the ability to move between the screen in response to user actions, such as tapping a button or 
selecting an item from a list.

5: There are 3 methods to create a Custom Widget. 

You can either create a stateless widget that return the desired widget with custom attributes.

You can create a Class that extends to base widget class.

Create a function that return a custom widget .

Flutter SDK VERSION for the app is:  3.7.12 .