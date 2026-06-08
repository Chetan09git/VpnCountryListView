#include "SortFiltterModule.h"

SortFiltterModule::SortFiltterModule(QObject *parent)
    : QSortFilterProxyModel{parent}
{
    setFilterRole(1);
    setSortRole(3);

}

void SortFiltterModule::setFilterString(const QString &filter)
{
    setFilterFixedString(filter);
}
