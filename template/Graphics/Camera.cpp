#include <Graphics/Camera.hpp>
#include <Graphics/Render.hpp>

#include <glm/gtc/matrix_transform.hpp>
#include <iostream>

namespace Graph {
	Camera::Camera() :
		Node(),
		m_view(), m_proj(),
		m_projDirty(true), m_viewDirty(true),
		m_fov(60),
		m_near(.1f), m_far(1000.f),
		m_width(1), m_height(1),
		m_pos(3.1,0,0), m_forward(-1,0,0), m_left(0,0,1), m_up(0,1,0),
		m_horizontalAngle(0), m_verticalAngle(0)
	{

	}

	void Camera::setAspect(float width, float height)
	{
		m_width = width;
		m_height = height;
		m_projDirty = true;
	}

	void Camera::draw() {
		if(m_projDirty)
			updateProjectionMatrix();
		if(m_viewDirty)
			updateViewMatrix();

		Render::setMatrix(Render::ProjectionMatrix, m_proj);
		Render::setMatrix(Render::ViewMatrix, m_view);
	}

	void Camera::updateProjectionMatrix()
	{
		m_proj = glm::perspective(m_fov, m_width/m_height, m_near, m_far);

		m_projDirty = false;
	}

	void Camera::updateViewMatrix() {
		m_view = glm::lookAt(m_pos, m_pos+m_forward, m_up);
		m_viewDirty = false;
	}

	void Camera::move(const glm::vec3& m) {
		m_pos += m;
		m_viewDirty = true;
	}

	void Camera::rotate(float horizontal, float vertical) {
		m_horizontalAngle -= horizontal*0.01f;

		/*if(m_horizontalAngle > 180.f)
			m_horizontalAngle -= 360.f;
		else if(m_horizontalAngle < -180.f)
			m_horizontalAngle += 360.f;
	*/
		m_verticalAngle -= vertical*0.01f;
	/*	if(m_verticalAngle > 89.f)
			m_verticalAngle = 89.f;
		else if(m_verticalAngle < -89.f)
			m_verticalAngle = -89.f;*/

		//std::cout << horizontal*0.0001f << " " << vertical*0.0001f << std::endl << m_horizontalAngle << " " << m_verticalAngle << std::endl;
		glm::mat4 rot;
		rot = glm::rotate(rot, m_horizontalAngle, m_up);
		rot = glm::rotate(rot, m_verticalAngle, m_left);
		m_forward = glm::vec3(rot*glm::vec4(m_forward, 1.f));
		m_left = glm::vec3(rot*glm::vec4(m_left, 1.f));
		//std::cout << m_forward.x << " " << m_forward.y << " " << m_forward.z << std::endl;
		m_viewDirty = true;
		//m_left = glm::vec3(rot*glm::vec4(m_left, 0.f));
		//m_forward = glm::vec3(rot*glm::vec4(m_forward, 0.f));
		/*auto tmp = rot*glm::vec4(m_forward,0);
		m_forward = glm::vec3(tmp.x, tmp.y, tmp.z);
		tmp = rot*glm::vec4(m_left,0);
		m_left = glm::vec3(tmp,0);
		rot = glm::rotate(id, m_verticalAngle, m_left); 
		tmp = rot*glm::vec4(m_forward,0);
		m_forward = glm::vec3(tmp.x, tmp.y, tmp.z);*/
		//m_forward = fromGLM(glm::rotate_vector::rotateY(m_forward, m_horizontalAngle)));
		//m_left = fromGLM(glm::rotate_vector::rotateY(m_left, m_horizontalAngle));
		//m_forward = fromGLM(glm::rotate_vector::rotate(m_forward, m_verticalAngle, m_left));
	}

	glm::vec3 Camera::forward() {
		return m_forward;
	}

	glm::vec3 Camera::backward() {
		return -m_forward;
	}

	glm::vec3 Camera::left() {
		return m_left;
	}

	glm::vec3 Camera::right() {
		return -m_left;
	}

	glm::vec3 Camera::up() {
		return m_up;
	}

	glm::vec3 Camera::down() {
		return -m_up;
	}
}