#pragma once 
#include <vector>
#include <btBulletDynamicsCommon.h>


namespace Phys {
class Collidable;

	class Physics {
	public: 
		Physics();
		//Physics(const Physics& P);
		//~Physics();
		void addCollidable(Collidable* n);
		void update(float elapsed);
 		Collidable* getCollidable(int index);
 		void Initialisation();
 		void AddBodyToWorld();

 		std::vector<Collidable*> vecCollidable; //vecteur de tous nos objets physique

		
		btDbvtBroadphase myBroadphase;
		btDefaultCollisionConfiguration myCollisionConfiguration;
		btCollisionDispatcher myDispatcher;
		btSequentialImpulseConstraintSolver mySequentialImpulseConstraintSolver;
		btDiscreteDynamicsWorld myWorld;
		
 		btDefaultMotionState *myMotionState;
 		

	protected:
		
		


	};
}