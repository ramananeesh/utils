#ifndef STATS_H
#define STATS_H
#include <map>
#include <string>
namespace utils {
namespace stats {
template <typename value_type>
class Counters {
   public:
    std::map<std::string, value_type> stats;

    // iterator over the stats
    typename std::map<std::string, value_type>::iterator begin() {
        return stats.begin();
    }
    typename std::map<std::string, value_type>::iterator end() {
        return stats.end();
    }
};
}  // namespace stats
}  // namespace utils

#endif  // STATS_H
