#include "SortFiltterModule.h"

SortFiltterModule::SortFiltterModule(QObject *parent)
    : QSortFilterProxyModel{parent}
{
    setFilterRole(1);
    setSortRole(1);
    sort(0, Qt::AscendingOrder);
}

void SortFiltterModule::setFilterString(const QString &filter)
{
    setFilterFixedString(filter);
}
