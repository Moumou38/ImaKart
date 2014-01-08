#pragma once

/*
	Class Node
	Représente un 
*/

#include <glm/glm.hpp>
#include <vector>
#include <Graphics/Render/Render.hpp>

#include <Physics/BSphere.hpp>
#include <Physics/AABB3D.hpp>

namespace Graph {
	class Material;
	class Shader;

	class Node {
	public:
		Node(Node* parent = nullptr);
		Node(const Node& other) = delete;
		virtual ~Node();

		void setLightened(bool b) { isLightened = b ; }
		bool getLightened() const { return isLightened ;}

		void setParent(Node* parent);
		void addChild(Node* child);
		void removeChild(Node* child);

		void setPosition(const glm::vec3& position);
		glm::vec3 getPosition() const;

		void setRotation(const glm::vec3& rotation);
		glm::vec3 getRotation() const;

		void setScale(const glm::vec3& scale);
		glm::vec3 getScale() const;

		void move(const glm::vec3 m);
		void rotate(const glm::vec3& r);

		virtual void update(float elapsed);

		virtual void render();

		virtual void draw() = 0;
		void setMaterial(int pos, Material* m);
		void setShader(Shader* s);
		Shader* getShader() const;

		glm::mat4 getModelMatrix() const;

		Material* const* getMaterials() const;

		virtual Phys::AABB3D getBoundingBox() const {
			return Phys::AABB3D(position);
		}
		virtual Phys::BSphere getBoundingSphere() const {
			return Phys::BSphere(position);
		}
	protected:
		void updateModelMatrix();

		glm::vec3 position, rotation, scale;
		Node* parent;
		std::vector<Node*> children;
		Material* material[Render::TextureChannel_Max];
		Shader* shader;
		glm::mat4 modelMatrix;
		bool modelDirty;
		bool isLightened; 
	};
}