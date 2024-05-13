# 🗿 Setting up your project

There are multiple way to setup your workspace to use StoneEngine

- As an [external dependency](#setup-with-external-dependency) for important and scalable projects
- As an [example directory](#setup-with-example-directory) for small projects

## Setup with external dependency

StoneEngine can be added to a project like any C++ dependency by using CMake... Sorry...

> TODO: Write the steps to setup StoneEngine as project dependency

## Setup with example directory

In case you want to stay as far as possible from cmake to keep your mental health in a relatively correct state, you can setup your project as an example inside the engine repository.

### Fork the engine

The first step is to either clone or fork the engine repository. I assume you're a fully grown boy and know how to do this.

### Create the example folder

In the root folder, you will notice the `examples` directory. Create your own new project folder inside it. You can name it following those rules:

- Use only alphanumerics, underscores(_) or hypen(-)
- Use only lowercase characters
- Do NOT use any spaces
- Do NOT use any other special characters
- You cannot use the name of another `make` target. You can have a list of targets using `make help` in the root folder

In this tutorial, we will be creating a game named `Pebble Flip`. A correct name for this example will be `pebble-flip`.

Create this folder and you should have this hierachy in the repo:

```sh
├── examples/
│   ├── ...
│   ├── CMakeLists.txt
│   └── pebble-flip/
├── ...
├── Engine/
└── Makefile
```

### Setup a basic template example

To setup your example project, you need two files at its root.

- The cmake file `CMakeLists.txt`
- The source file entrypoint `main.cpp`

First create your `CMakeLists.txt` in your example folder.

I know I said we will get a far as we can from cmake. But that's the only step where you need it... you only need to create this once and never modify it again !

```
# /examples/pebble-flip/CMakeLists.txt
set(NAME pebble-flip)

add_executable(${NAME} EXCLUDE_FROM_ALL main.cpp)
target_include_directories(${NAME} PRIVATE ${PROJECT_BINARY_DIR}/include)
target_link_libraries(${NAME}
		PRIVATE scene
		PRIVATE window
)
```

Now that the cmake PTSD are behind us, we can write some code in a `main.cpp` file in the same location.

```cpp
// /examples/pebble-flip/main.cpp
#include "Window.hpp"

#include <iostream>

int main() {
    auto app = std::make_shared<Stone::Window::App>();
    std::cout << "Stone Application successfully created !" << std::endl;
    return app->run();
}
```

### Build the example

To verify that you're all set, you can build the entire engine along with your example :
```sh
make && make pebble-flip
```

The first time using this command should take some times as it's fetching all dependencies, setting up the whole cmake project and building everything from source.

But at the end of the build, you should see your message:
```
...
Stone Application successfully created !
```

That means the compilation succeed and your example is up and running using the engine !
