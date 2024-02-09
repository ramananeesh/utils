#ifndef STATS_PRINTER_H
#define STATS_PRINTER_H
#include <spdlog/spdlog.h>
#include <stats/stats.h>

#include <map>
#include <tabulate/table.hpp>

namespace utils {
namespace stats {
using namespace tabulate;
template <typename value_type>
void log_stats(const Counters<value_type> &counters) {
    for (auto &stat : counters.stats) {
        spdlog::info("{}: {}", stat.first, stat.second);
    }
}
template <typename value_type>
void tabulate_stats(const Counters<value_type> &counters, std::string title) {
    tabulate::Table table;
    table.add_row({title});
    table.add_row({"Stat", "Value"});
    for (auto &stat : counters.stats) {
        table.add_row({stat.first, std::to_string(stat.second)});
    }
    std::cout << table << std::endl;
}

template <typename value_type>
void print_stats(const Counters<value_type> &counters) {
    for (auto &stat : counters.stats) {
        std::cout << stat.first << ": " << stat.second << std::endl;
    }
}
}  // namespace stats
}  // namespace utils
#endif  // STATS_PRINTER_H