#pragma once
#include "ecs.h"

class BallComponent : Component
{

public:
	int xpos;
	int ypos;
	int mVelX, mVelY;
	SDL_Rect mCollider;
	int maxvel;
	bool checkCollision(SDL_Rect a, SDL_Rect b)
	{
		int leftA, leftB, leftC;
		int rightA, rightB, rightC;
		int topA, topB, topC;
		int bottomA, bottomB, bottomC;

		//Calculate the sides of rect A
		leftA = a.x;
		rightA = a.x;
		topA = a.y;
		bottomA = a.y;

		//Calculate the sides of rect B
		leftB = b.x;
		rightB = b.x;
		topB = b.y;
		bottomB = b.y;

		if (bottomA <= topB)
		{
			return false;
		}
		else {
			return true;
		}

		if (topA >= bottomB)
		{
			return false;
		}
		else {
			return true;
		}

		if (rightA <= leftB)
		{
			return false;
		}
		else {
			return true;
		}

		if (leftA >= rightB)
		{
			return false;
		}
		else {
			return true;
		}
		if (bottomA <= topC)
		{
			return false;
		}
		else {
			return true;
		}

		if (topA >= bottomC)
		{
			return false;
		}
		else {
			return true;
		}

		if (rightA <= leftC)
		{
			return false;
		}
		else {
			return true;
		}

		if (leftA >= rightC)
		{
			return false;
		}
		else {
			return true;
		}
	}
	

	static const int DOT_VEL = 10;
	int x() { return xpos; }
	int y() { return ypos; }

	void init()
	{
		xpos = 340;
		ypos = 250;
		mVelX = 0;
		mVelY = 0;
		mCollider.w = 80;
		mCollider.h = 75;
	}

	void update()
	{
		mCollider.x = xpos;
		mCollider.y = ypos;
	}

	void setPos(int x, int y)
	{
		xpos = x;
		ypos = y;
	}

};

class RacketComponent1 : Component
{

public:
	int xpos;
	int ypos;
	int mVelX, mVelY;
	SDL_Rect mCollider;
	int maxvel;

	bool checkCollision(SDL_Rect a, SDL_Rect b)
	{
		int leftA, leftB;
		int rightA, rightB;
		int topA, topB;
		int bottomA, bottomB;

		//Calculate the sides of rect A
		leftA = a.x;
		rightA = a.x;
		topA = a.y;
		bottomA = a.y;

		//Calculate the sides of rect B
		leftB = b.x;
		rightB = b.x;
		topB = b.y;
		bottomB = b.y;

		//Calculate the sides of rect B
	

		if (bottomA <= topB)
		{
			return false;
		}
		else {
			return true;
		}

		if (topA >= bottomB)
		{
			return false;
		}
		else {
			return true;
		}

		if (rightA <= leftB)
		{
			return false;
		}
		else {
			return true;
		}

		if (leftA >= rightB)
		{
			return false;
		}
		else {
			return true;
		}
	}

	void init()
	{
		xpos = -50;
		ypos = 130;
		mVelY = 0;
		mCollider.w = 120;
		mCollider.h = 200;
		maxvel = 5;
	}

	void handleEvent(SDL_Event& e)
	{
		if (e.type == SDL_KEYDOWN && e.key.repeat == 0)
		{
			//Adjust the velocity
			switch (e.key.keysym.sym)
			{
			case SDLK_UP: mVelY -= maxvel; break;
			case SDLK_DOWN: mVelY += maxvel; break;
			}
		}
	}
};
