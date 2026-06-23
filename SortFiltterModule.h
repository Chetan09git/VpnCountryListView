#ifndef SORTFILTTERMODULE_H
#define SORTFILTTERMODULE_H

#include <QSortFilterProxyModel>

class SortFiltterModule : public QSortFilterProxyModel
{
    Q_OBJECT
    QString m_filterText;

public:
    explicit SortFiltterModule(QObject *parent = nullptr);

    Q_INVOKABLE void setFilterString(const QString &filter);

};

#endif // SORTFILTTERMODULE_H
