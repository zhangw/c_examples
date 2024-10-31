#include <ctime>
#include <stdlib.h>
#include <iostream>

int main() {
    setenv("TZ", "UTC", 1);
    tzset();
    std::tm timeinfo = {};
    timeinfo.tm_year = 2024 - 1900;
    timeinfo.tm_mon = 0;
    timeinfo.tm_mday = 1;
    std::time_t timestamp = std::mktime(&timeinfo);

    std::cout << "Year: " << (timeinfo.tm_year + 1900) << "\n";
    std::cout << "Month: " << (timeinfo.tm_mon + 1) << "\n";
    std::cout << "Day: " << timeinfo.tm_mday << "\n";
    std::cout << "Hour: " << timeinfo.tm_hour << "\n";
    std::cout << "Minute: " << timeinfo.tm_min << "\n";
    std::cout << "Second: " << timeinfo.tm_sec << "\n";

    char buffer[80];
    strftime(buffer, sizeof(buffer), "%Y-%m-%d %H:%M:%S", &timeinfo);
    std::cout << "Formatted time: " << buffer << "\n";

    return 0;
}
