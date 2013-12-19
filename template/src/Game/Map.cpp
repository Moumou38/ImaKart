#include <Game/Map.hpp>
#include <Game/Logic/Checkpoint.hpp>
#include <Game/Logic/ItemSpawn.hpp>
#include <Game/Map.hpp>
#include <tinyxml2/tinyxml2.h>
#include <Utility/LogManager.hpp>
#include <Utility/Tools.hpp>
#include <Utility/FilePath.hpp>
#include <vector>
#include <iostream>

Map::~Map() {
	while(m_checkpoints.size()) {
		delete m_checkpoints.back();
		m_checkpoints.pop_back();
	}
}
bool Map::loadFromFile(const std::string& file){
	Util::FilePath path(file);
	tinyxml2::XMLDocument doc;
	int res = doc.LoadFile(file.c_str());
	if(res != 0){
		Util::LogManager::error("Impossible de charger le fichier "+file);
		return false;
	}
	tinyxml2::XMLElement* root = doc.FirstChildElement("map");
	if(root == nullptr){
		Util::LogManager::error("Fichier map invalide : balise <map> manquante");
		return false;
	}

	tinyxml2::XMLElement* info = root->FirstChildElement("info");
	if(info == nullptr){
		Util::LogManager::error("Fichier map invalide : balise <info> manquante");
		return false;
	}

	std::string name = Util::getStringFromXML(info, "name");
	add("name", new Component<std::string>(1, name));

	float scale = Util::getFloatFromXML(info, "scale");
	add("scale", new Component<float>(1, scale));

	std::string heightmap = Util::getStringFromXML(info, "heightmap");
	add("heightmap", new Component<std::string>(1, path.getDirectory()+heightmap));

	std::string detailmap = Util::getStringFromXML(info, "detailmap");
	add("detailmap", new Component<std::string>(1, path.getDirectory()+detailmap));

	tinyxml2::XMLElement* checkpoints = root->FirstChildElement("checkpoints");
	if(checkpoints == nullptr){
		Util::LogManager::error("Fichier map invalide : balise <checkpoints> manquante");
		return false;
	}	

	tinyxml2::XMLNode* checkpoint = checkpoints->FirstChildElement("checkpoint");
	std::vector<glm::vec2> check;
	while(checkpoint != nullptr){
		glm::vec2 c;
		c.x = Util::getFloatFromXML((tinyxml2::XMLElement*)checkpoint,"x");
		c.y = Util::getFloatFromXML((tinyxml2::XMLElement*)checkpoint,"y");
		check.push_back(c);
		checkpoint = checkpoint->NextSibling();
	}
	add("check", new Component<std::vector<glm::vec2>>(1, check));
	
	
	/*tinyxml2::XMLElement* lights = root->FirstChildElement("lights");
	if(lights == nullptr){
		Util::LogManager::error("Lumière invalide : balise <lights> manquante");
		return false;
	}
	add("lights", new Component<std::string>(1, std::string(lights->GetText())));

	try{
		tinyxml2::XMLElement* spotlight = lights->FirstChildElement("spotlight");
		if(spotlight){	
			glm::vec3 pos = Util::getVec3FromXML(spotlight, "position");
			add("position", new Component<glm::vec3>(1, pos));

			float intensity = Util::getFloatFromXML(spotlight, "intensity");
			add("intensity", new Component<float>(1, intensity));

			float radius = Util::getFloatFromXML(spotlight, "radius");
			add("radius", new Component<float>(1, radius));

			glm::vec3 dir = Util::getVec3FromXML(spotlight, "direction");
			add("direction", new Component<glm::vec3>(1, dir));

			sf::Color col = Util::getColorFromXML(spotlight, "color");
			add("color", new Component<sf::Color>(1, col));
		}
	}catch(int){
		Util::LogManager::error("Impossible de charger la spotlight");
	}

	try{
		tinyxml2::XMLElement* directionallight = lights->FirstChildElement("directionallight");
		if(directionallight){	
			glm::vec3 pos = Util::getVec3FromXML(directionallight, "position");
			add("position", new Component<glm::vec3>(1, pos));

			float intensity = Util::getFloatFromXML(directionallight, "intensity");
			add("intensity", new Component<float>(1, intensity));

			sf::Color col = Util::getColorFromXML(directionallight, "color");
			add("color", new Component<sf::Color>(1, col));
		}
	}catch(int){
		Util::LogManager::error("Impossible de charger la lumière directionnelle");
	}


	try{
		tinyxml2::XMLElement* pointlight = lights->FirstChildElement("pointlight");
		if(pointlight){	
			glm::vec3 pos = Util::getVec3FromXML(pointlight, "position");
			add("position", new Component<glm::vec3>(1, pos));

			float intensity = Util::getFloatFromXML(pointlight, "intensity");
			add("intensity", new Component<float>(1, intensity));

			float radius = Util::getFloatFromXML(pointlight, "radius");
			add("radius", new Component<float>(1, radius));

			sf::Color col = Util::getColorFromXML(pointlight, "color");
			add("color", new Component<sf::Color>(1, col));
		}
	}catch(int){
		Util::LogManager::error("Impossible de charger la pointlight");
	}*/



	//uint32_t WINDOW_WIDTH = Util::FromString<uint32_t>(std::string(doc.FirstChildElement("window")->FirstChildElement("width")->GetText()));
	//uint32_t WINDOW_HEIGHT = Util::FromString<uint32_t>(std::string(doc.FirstChildElement("window")->FirstChildElement("height")->GetText()));
	
	Util::LogManager::notice("Map chargée");
	Util::LogManager::notice("Nom : "+get<std::string>("name"));
	Util::LogManager::notice("Scale : "+Util::ToString(get<float>("scale")));
	Util::LogManager::notice("Heightmap : "+get<std::string>("heightmap"));
	Util::LogManager::notice("Detailmap : "+get<std::string>("detailmap"));
	return true;
}

bool Map::loadIntoScene(Graph::Scene& scene){
	if(!this->mesh.loadFromFile(this->get<std::string>("heightmap"))) {
		Util::LogManager::notice("Erreur au chargement de la heightmap");
		return false;
		//std::cerr << "Error" << std::endl;
	}
	if(!this->hmtex.loadFromFile(get<std::string>("detailmap"))) {
		Util::LogManager::notice("Erreur au chargement des textures");
		return false;
		//std::cerr << "Error while loading material" << std::endl;
	}


	this->mesh.setMaterial(0, &this->hmtex);
	float sc = get<float>("scale");
	this->mesh.setScale(glm::vec3(sc,sc,sc));
	scene.addMesh(&mesh);

	auto c = this->get<std::vector<glm::vec2>>("check");
	for(size_t i = 0; i < c.size(); ++i){
		Checkpoint* tmp = new Checkpoint(*this, i);
		if(!tmp->loadFromFile("../resources/models/cube.3DS")){
			Util::LogManager::notice("Erreur au chargement des checkpoints");
			return false;
		}

		tmp->setPosition(glm::vec3(c[i].x*sc, this->mesh.offsetHeight(c[i].x,c[i].y)*sc, c[i].y*sc));
		tmp->setScale(glm::vec3(50,50,50));
		scene.addMesh(tmp);
		m_checkpoints.push_back(tmp);
	}
	
	return true;
}

void Map::draw(){
	//this->mesh.render();
//	this->drawCheckpoint();
}

void Map::drawCheckpoint(){
	
}

void Map::update(float e) {
	for(auto c: m_checkpoints)
		c->update(e);
	for(auto i: m_itemSpawns)
		i->update(e);

	for(auto k : m_karts) {
		Kart* kart = std::get<0>(k);
		kart->update(e);
		for(auto c: m_checkpoints)
			c->isReached(*kart);
		for(auto i: m_itemSpawns)
			i->isReached(*kart);
	}
}

Kart* Map::addKart(KartType type) {
	Kart* k = new Kart(m_karts.size());
	m_karts.push_back(std::make_tuple(k, Util::Clock(), 3, false));
	switch(type) {
		case KartType_1:
			// Changer maniabilité, vitesse, etc...
			break;
		case KartType_2:
			break;
		case KartType_3:
			break;
		default:
			break;
	}

	return k;
}

std::vector<KartInfo> Map::getResults() {
	return m_karts;
}

void Map::hasFinishedLoop(Kart& k) {
	int id = k.get<int>("id");
 	auto& infos = m_karts[id];
 	int& loops = std::get<2>(infos);
 	if(loops == 0) {
 		bool& finished = std::get<3>(infos);
 		finished = true;
 		auto& clock = std::get<1>(infos);
 		clock.Pause();
 	} else
 		--loops;

}

Graph::Heightmap* Map::getHeightmap() {
	return &mesh;
}