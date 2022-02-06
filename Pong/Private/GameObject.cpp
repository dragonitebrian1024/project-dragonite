﻿#include "GameObject.h"
#include "Texturemanager.h"

GameObject::GameObject(const char* texturesheet, SDL_Renderer* ren, int x, int y)
{
    renderer = ren;
    objTexture = TextureManager::LoadTexture(texturesheet, ren);
    xpos = x;
    ypos = y;
}

void GameObject::Update()
{
    xpos++;
    ypos++;

    srcRect.h = 100;
    srcRect.w = 100;

    destRect.x = xpos;
    destRect.y = ypos;
    destRect.w = srcRect.w * 2;
    destRect.h = srcRect.h * 2;
}

void GameObject::Render()
{
    SDL_RenderCopy(renderer, objTexture, nullptr, &destRect);
}