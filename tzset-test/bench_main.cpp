#include <iostream>
#include <ctime>
#include <chrono>
#include <cstdlib>

void test_mktime_with_tz() {
    setenv("TZ", "UTC", 1);
    tzset(); 

    std::tm timeinfo = {};
    timeinfo.tm_year = 2024 - 1900; 
    timeinfo.tm_mon = 0;    
    timeinfo.tm_mday = 1;  

    for (int i = 0; i < 1000000; ++i) {
        std::mktime(&timeinfo);
    }
}

void test_mktime_without_tz() {
    unsetenv("TZ");
    tzset(); 

    std::tm timeinfo = {};
    timeinfo.tm_year = 2024 - 1900;
    timeinfo.tm_mon = 0;
    timeinfo.tm_mday = 1;

    for (int i = 0; i < 1000000; ++i) {
        std::mktime(&timeinfo);
    }
}

int main() {
    auto start = std::chrono::high_resolution_clock::now();
    test_mktime_with_tz();
    auto end = std::chrono::high_resolution_clock::now();
    auto duration_with_tz = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();
    std::cout << "Time taken with TZ set: " << duration_with_tz << " ms\n";

    start = std::chrono::high_resolution_clock::now();
    test_mktime_without_tz();
    end = std::chrono::high_resolution_clock::now();
    auto duration_without_tz = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();
    std::cout << "Time taken without TZ set: " << duration_without_tz << " ms\n";

    return 0;
}
