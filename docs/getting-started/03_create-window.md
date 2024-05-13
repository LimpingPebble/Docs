# 🗿 Create a window

## Stone Application

Previous code were given to you but no explainations given. Let's get to it :

```cpp
// /examples/pebble-flip/main.cpp

// 1. Include windowing application module
#include "Window.hpp"

#include <iostream>

int main() {
    // 2. Create a Stone application
    auto app = std::make_shared<Stone::Window::App>();

    std::cout << "Stone Application successfully created !" << std::endl;

    // 3. Run the application
    return app->run();
}
```

1. We need to include the module that contains the windowing system. It has all functionnalities related to creating an application and its windows.
2. We instanciate a new application. In theory, you only need one for any projects.
3. We run the application execution loop. This loop will poll events and make all windows loop until they are each closed.

If you try running the example, you will notice that the application instantly closes. That's because there is no window created. So we will get to it soon enough.

## Create a new window

Creating a new window in StoneEngine is relatively easy.

Windowing libraries (like glfw, sdl or cocoa) are abstracted so you don't have to worry about their usage.

The first thing you need to create your window, is to define its settings.

create a new instance of `Stone::Window::WindowSettings` after you created the application.

```cpp
Stone::Window::WindowSettings win_settings;
win_settings.width = 1200;
win_settings.height = 800;
win_settings.title = "Pebble Flip";
```

All settings have default values that you can override.

Once your settings are ready, you can create the window using `app->createWindow(win_settings)`.

```cpp
std::shared_ptr<Stone::Window::Window> window = app->createWindow(win_settings);
```

Run your application. You should now have a window openned that you can close to terminate your application.

```cpp
// main.cpp
#include "Window.hpp"

#include <iostream>

int main() {
    auto app = std::make_shared<Stone::Window::App>();
    std::cout << "Stone Application successfully created !" << std::endl;

    Stone::Window::WindowSettings win_settings;
    win_settings.width = 1200;
    win_settings.height = 800;
    win_settings.title = "Pebble Flip";

    std::shared_ptr<Stone::Window::Window> window = app->createWindow(win_settings);

    return app->run();
}
```
