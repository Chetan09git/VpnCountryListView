#ifndef COUNTRYMANAGEMENTVIEWMODEL_H
#define COUNTRYMANAGEMENTVIEWMODEL_H

#include <QAbstractListModel>
#include <QList>

class CountryManager;
class Country;

class CountryManagementViewModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum CountryRoles {
        NameRole = 1,
        IpRole,
        CitiesRole
    };
    Q_ENUM(CountryRoles)

    explicit CountryManagementViewModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    QHash<int, QByteArray> roleNames() const override;

private slots:
    void handleCountryAdded(const QString &countryName);

private:
    CountryManager *m_countryManager;
};

#endif // COUNTRYMANAGEMENTVIEWMODEL_H
