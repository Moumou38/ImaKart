#include <Graphics/MeshLoader.hpp>
#include <Graphics/Mesh.hpp>
#include <Graphics/MeshBuffer.hpp>
#include <fstream>
#include <iostream>

namespace Graph {

bool MeshLoader::load3Ds(const std::string &name, Mesh* parent)
{
	std::ifstream file(name.c_str(), std::ios::binary);
	if(!file.is_open()) {
			return false;
	}

	unsigned short id;
	unsigned int length;
	file.seekg(0, std::ios_base::end);
	int filelength = file.tellg();
	file.seekg(0, std::ios_base::beg);

	VertexBuffer buff;
	while(!file.eof() && file.tellg() < filelength) {

		file.read((char*)&id, sizeof(unsigned short));
		file.read((char*)&length, sizeof(unsigned int));
		//std::cerr << std::hex << file.tellg() << " id: " << id <<" " << std::dec << id << " length: " << std::hex << length << " " << std::dec << length << std::endl;
		switch(id) {
			case 0x4d4d:
				//std::cerr << "main chunck" << std::endl;
				break;
			case 0x3d3d:
				//std::cerr << "3Ds chunck" << std::endl;
				break;
			case 0x4000:
				unsigned char c;
				unsigned char name[20];
				for(int i = 0; i<20; i++) {
					file.read((char*)&c, sizeof(char));
					name[i] = c;
					if(c == '\0')
						break;
				}
				parent->loadFromMemory(buff);
				buff.clear();
				std::cerr << "object block " << std::dec << name << std::endl;
				break;
			case 0x4100:
				//std::cerr << "vertice list" << std::endl;
				break;
			case 0x4110:
				unsigned short nbvert;
				file.read((char*)&nbvert, sizeof(unsigned short));
				std::cerr << nbvert << " vertices" << std::endl;
				for(int i = 0; i<nbvert; i++) {
					float x,y,z;
					file.read((char*)&x, sizeof(float));
					file.read((char*)&y, sizeof(float));
					file.read((char*)&z, sizeof(float));
					auto vert = glm::vec3(x,y,z);
					buff.addVertex(Vertex3D(vert));
					std::cerr << "vert: " << x << "," << y << "," << z << std::endl;
				}
				break;
			case 0x4120:
				unsigned short nbpoly;
				file.read((char*)&nbpoly, sizeof(unsigned short));
				std::cerr << nbpoly << " polys" << std::endl;
				for (int i=0; i<nbpoly; i++)
				{
					unsigned short a,b,c,f;
					file.read((char*)&a, sizeof(unsigned short));
					file.read((char*)&b, sizeof(unsigned short));
					file.read((char*)&c, sizeof(unsigned short));
					file.read((char*)&f, sizeof(unsigned short));
					auto face = sf::Vector3i(a,b,c);
					buff.addTriangle(face);
					std::cerr << "poly: " << a << "," << b << "," << c << " flag: " << f << std::endl;
				}

			break;
			case 0x4140:
				unsigned short nbcoord;
				file.read((char*)&nbcoord, sizeof(unsigned short));
				//std::cerr << "map coord: " << nbcoord << std::endl;
				for(int i=0; i<nbcoord; i++)
				{
					float u,v;
					file.read((char*)&u, sizeof(float));
					file.read((char*)&v, sizeof(float));
					//std::cerr << "coord: " << u << "," << v << std::endl;
					auto tex = glm::vec2(u,v);
					buff.getVertex(i).uv = tex;
				}
			break;
			default:
				//std::cerr << "jump" << std::endl << std::endl;
				file.seekg(length-6, std::ios_base::cur);
				break;
		}
	}
	return true;
}

}