#include "SortFiltterModule.h"

SortFiltterModule::SortFiltterModule(QObject *parent)
    : QSortFilterProxyModel{parent}
{
    setFilterRole(1);
    setSortRole(1);
    // setFilterRole(3);
    // setSortRole(3);
    sort(0, Qt::AscendingOrder);
}

void SortFiltterModule::setFilterString(const QString &filter)
{
    setFilterFixedString(filter);
}
