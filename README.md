# Light and Dark mode with cubit

This project will explain how we can implement the light and dark mode with Cubit state management architecture. 

## Project Created & Maintained By

 [MultiQoS Pvt. Ltd.](https://multiqos.com/)


## Getting Started

The easiest way to add theme support in application by using the Cubit state management. In this demo we are updating the backgorund color and text color for button and lables. 

### Dependencies
1. Bloc: Used `flutter_bloc` library for state management.  [Bloc](https://pub.dev/packages/flutter_bloc)  
2. Shared Preference: Used `shared_preferences` library for local storage. [Shared Preference](https://pub.dev/packages/shared_preferences)

### Folder and Class structure

    .
    ├── ...
    ├── Cubit                        # This folder hold all cubit sub folders.
    │   └── theme_module             # This folder will hold two sub folder provider and states.
    │         ├── provider           # This folder will hold them cubit class.
    │         └── states  		 # This folder will hold theme state class.
    │   
    ├── theme                        # This folder hold all the themes related classes.
    │   ├── base_theme               # This an abstract class for color setup
    │   ├── dark_theme               # This class will have all dark theme colors and extend the base_theme class. 
    │   ├── light_theme              # This class will have all light theme colors and extend the base_theme class. 
    │   ├── theme_colors             # All colors will define in this class. For light mode, LightThemeColors class and for dark mode, DarkThemeColors is being used for color declaration.
    │   └── enum                     # Delcared the theme enum in this class.
    └── ...
    
    
# Demo
    
   
  https://user-images.githubusercontent.com/94122297/163949199-a66437b2-5d1f-452a-8cca-87cb54549a74.mov


    
