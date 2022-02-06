#pragma once

#include <iostream>
#include <string>

#include "SDL.h"
#include "SDL_image.h"

#define SDL_MAIN_HANDLED

class Game {

public:
    Game();

    ~Game();

    void init(std::string title, int xpos, int ypos, int width, int height, bool fullscreen);
    void update();
    void render();
    void clean();
    void handleEvents();

    bool running() { return isRunning; }

private:
    bool isRunning;
    SDL_Window* window;
    SDL_Renderer* renderer;

};
