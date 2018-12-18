#include "hiker.hpp"
#include <cassert>
#include <iostream>
#include <string>

namespace {

    void life_the_universe_and_everthing()
    {
        assert(answer() == 42);
    }

    std::string green_traffic_light_pattern()
    {
        return "All tests passed\n";
    }
} // namespace

int main()
{
    life_the_universe_and_everthing();
    std::cout << green_traffic_light_pattern();
}
