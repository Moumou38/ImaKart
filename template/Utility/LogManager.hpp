#pragma once

#include <string>

namespace util {
	class LogManager {
	public:
		static void error(const std::string& msg);
		static void warning(const std::string& msg);
		static void notice(const std::string& msg);
		static void message(const std::string& msg);

	private:
		static void write(const std::string& msg);
	};
}